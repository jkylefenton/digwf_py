from django.db import models
from django.contrib.localflavor.us.models import PhoneNumberField, USStateField
from datetime import datetime


class Collection(models.Model):
    
    collection_short_name = models.CharField(max_length=15, blank=True)
    collection_description = models.CharField(max_length=255, blank=True, null=True)
    collection_url = models.URLField(blank=True, null=True)
    parent_collection = models.ForeignKey('self', blank=True, null=True)

    def __unicode__(self):
        return self.collection_short_name
    
    class Meta:
        ordering = ['collection_short_name', 'collection_description']

class Publication_State(models.Model): 
    ''' List showing whether an item is published, or not, or is somewhere in between. '''
    
    status = models.CharField(max_length=15)

    def __unicode__(self):
        return self.status

class Rejection_Code(models.Model):
    ''' List of reasons for not digitizing an item. '''
    
    code = models.CharField(max_length=5)
    description = models.CharField(max_length=50)
    
    def __unicode__(self):
        return u'%s : %s' % (self.code, self.description)
    
    class Meta:
        ordering = ['code']

class Agent(models.Model):

    address1 = models.CharField(max_length=50, blank=True)
    address2 = models.CharField(max_length=50, blank=True)
    city = models.CharField(max_length=30, blank=True)
    state = USStateField(max_length=2, blank=True)
    zip = models.IntegerField('5 digit ZIP', max_length=5, null=True, blank=True)
    phone = PhoneNumberField('Phone', max_length=10, null=True, blank=True)
    email = models.EmailField(max_length=75, blank=True)
#    agent_type = models.CharField(max_length=25, blank=True, choices=AGENT_TYPE_CHOICES)  # Customer, Delivery, Vendor, etc.
    # note = models.TextField(blank=True)
    

class Person(Agent):
    person_last_name = models.CharField(max_length=50)
    person_first_name = models.CharField(max_length=50)
    title = models.CharField(max_length=50, null=True, blank=True)
    
    def __unicode__(self):
        return u'%s, %s' % (self.person_last_name, self.person_first_name)   

class Organization(Agent):
    organization_name = models.CharField(max_length=50)
    organization_short_name = models.CharField(max_length=15, null=True, blank=True)
    main_contact = models.ForeignKey(Person, blank=True, null=True)

class Resource_Type(models.Model):
    type = models.CharField(max_length=25)
    description = models.TextField(blank=True)
    
    def __unicode__(self):
        return self.type    
    
    class Meta:
        ordering = ['type']

class Rights(models.Model):
    status = models.CharField(max_length=50)
    description = models.TextField()
    
    def __unicode__(self):
        return u'%s : %s' % (self.status, self.description)
    
    class Meta:
        verbose_name_plural = "Rights"

class Metadata_Term(models.Model):
    label = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    documentation_url = models.URLField(max_length=2083, blank=True, null=True) 
    
    class Meta:
        ordering = ('label', )
    
    def __unicode__(self):
        return self.label

class ItemIdentifierType(models.Model):
    label = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    documentation_url = models.URLField(max_length=2083, blank=True, null=True) 
    
    class Meta:
        ordering = ('label', )
    
    def __unicode__(self):
        return self.label

class DigitalComponentType(models.Model):
    label = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    default_regex = models.CharField(max_length=510, blank=True, null=True)
    documentation_url = models.URLField(max_length=2083, blank=True, null=True) 
    
    class Meta:
        ordering = ('label', )
    
    def __unicode__(self):
        return self.label

class Item(models.Model):
    '''Represents a physical item (in the sense of a FRBR item).  An Item can belong to one or more Orders.  An Item has one or more Digital Files.  An Item can be Pulled, Received, Sent for Repair, Returned, Outsourced, Rejected, or Digitally Captured'''
    
    PUB_PLACE_CHOICES = (
                         (u'US', u'United States'),
                         (u'NON-US', u'Non US Country'),
                         )        
    OWNER_ORIGINALS_CHOICES = (
                               (u'marbl', u'MARBL/Univ. Archives'),
                               (u'main', u'Main Library'),
                               (u'theology', u'Theology Library'),
                               (u'law', u'Law Library'),
                               (u'oxford', u'Oxford C. Library'),
                               (u'healthsci', u'Health Sci Library'),
                               (u'customer', u'Customer'),
                               )    
    
    #   def items_current_user(self):
    #       '''Returns the item's current user.'''
    #   def items_current_workflow(self):
    #       '''Returns the workflow that the item is currently in.'''
    #   def items_current_state(self):
    #       '''Returns the workflow state that the item is currently in.'''
    
    def is_cataloged(self):
        '''Returns True if an item is cataloged'''
        if self.oclc is None:
            return False
        elif self.barcode is None:
            return False
        return True
    
    def has_foldouts(self):
        '''Returns True if an item has foldouts (or is a folded item)'''
        if self.foldout_count is None:
            return False
        return True
    
    title = models.CharField(max_length=200)
    collection_id = models.ForeignKey(Collection, blank=True, null=True)

    # model method for full ARK, "ark:/NAAN/Name"
    # model method for digital masters record url?
    # model method for digital masters file url?
    
    enumcron = models.CharField('Volume/Part', max_length=20, blank=True)   # volume or part designation for this item
    
    foldout_count = models.IntegerField('# of Foldouts', blank=True, null=True)  # count of foldouts in a bound item (for chargeback purposes)
    created_at = models.DateField(auto_now_add=True)  # date item record created
    updated_at = models.DateField(auto_now=True)  # date item record last updated
    is_rush = models.BooleanField('Rush Process This Item') # whether this is a prioritized rush item
    notification_email = models.EmailField(blank=True)  # email contact, to notify when item is avaiable online
    due_date = models.DateField(blank=True, null=True)   # due date for item 
    is_brittle = models.BooleanField('Item brittle but digitizeable')    # indicates whether this is a brittle book that can be destroyed while digitized, then withdrawn; default value is FALSE
    is_already_digitized = models.BooleanField('Already Digitized Elsewhere eg HathiTrust')   # whether item has already been digitized
    # do we need two "already digitized" fields, one for items freely available elsewhere, one for items in our repository? can probably cover this using a model method or two
    is_paginated = models.BooleanField('Item is Paginated')   # whether item is paginated or comprises an ordered set of parts
    has_binding = models.BooleanField('Item has Binding')   # whether item has a binding (is a codex)
    is_serial = models.BooleanField('Item is a Serial')   # whether item is a serial (destination might be an ejournals web front end)
    to_archive  = models.BooleanField('Digital surrogate will be archived', default=True)    # whether to archive the item (if not, it's digitize-on-demand only)
    is_resource_type = models.ForeignKey(Resource_Type) # flag for type of resource being digitized; for instance whether original is a map, which needs extra geospatial metadata later on
    has_rights = models.ForeignKey(Rights, blank=True, null=True)
    # has_rights = models.ForeignKey(Rights, default=Rights.objects.get(id=1))
    pub_state = models.ForeignKey(Publication_State, blank=True, null=True)    # if published, then need to record pub_country and pub_year for rights
    pub_place = models.CharField('Place of Publication', max_length=10, blank=True, choices=PUB_PLACE_CHOICES) # "us" or "non-us" for access rights
    pub_year = models.DateField('Year of Publication', blank=True, null=True) # YYYY format date of publication or copyright
    has_typeset_text = models.BooleanField()    # if there is typset text, then we can ocr the item
    note = models.TextField('Processing Notes', blank=True)    # any notes pertaining to the item being digitized
    rejection_code = models.ForeignKey(Rejection_Code, blank=True, null=True)
    time_spent = models.TimeField(blank=True, null=True)  # manually entered hh:mm format, may hook into a timer widget later       
    owner_originals = models.CharField(max_length=30, blank=True, choices = OWNER_ORIGINALS_CHOICES)  # who owns the source materials being scanned?
    metadata = models.ManyToManyField(Metadata_Term, through='Metadata')
    # flagged_for_qc_pre (1,2,3) a certain % of itmes per batch should be flagged for qc before being archived
    # flagged_for_qc_post (1,2,3) a certain % of itmes per batch should be flagged for qc after being archived
    # outsourced = models.BooleanField()  # whether this item (batch) is/was being outsourced for digitization
    
    def __unicode__(self):
        return u'%s : %s : %s' % (self.title, self.enumcron, self.is_resource_type)
    
    class Meta:
        ordering = ['title']

class Order(models.Model):
    '''Represents an approved request to digitize.  Each order has one or more associated Items.  Each order has exactly one Customer. An Order that has not yet been approved is a Request'''

    # should each order type have an optional association with an Agent, so that e.g. we can email MARBL when we're done with a patron order?
    ORDER_TYPE_CHOICES = (
                          (u'marbl_patron', u'MARBL Researcher/Patron'),
                          (u'library_exhibit', u'Library Exhibit'),
                          (u'disc_project', u'DiSC Project'), 
                          (u'emory_digital_editions', u'Emory Digital Editions'), 
                          (u'emory_non_library', u'Emory Dept., Center, etc.'), 
                          (u'emory_faculty', u'Emory Faculty person'), 
                          (u'emory_staff', u'Emory Staff person'), 
                          (u'emory_gradstud', u'Emory Graduate student'), 
                          (u'non_emory', u'Non-Emory Customer'), 
                          (u'dod', u'Digitize-on-Demand Item'),
                          )
    
    DELIVERY_METHOD_CHOICES = (
                               (u'yousendit', u'YouSendIt'),
                               (u'hdd_cust_supply', u'Hard Disk (Customer Supplied)'),
                               (u'hdd_we_supply', u'Hard Disk (We Supply)'),
                               (u'fkey_cust_supply', u'USB Flashkey (Customer Supplied)'),
                               (u'fkey_we_supply', u'USB Flashkey (We Supply)'),
                               (u'dvd_gold', u'DVD Gold MAM-A'),
                               (u'cd_gold', u'CD MAM-A'), 
                               )  
    OWNER_ORIGINALS_CHOICES = (
                                (u'marbl', u'MARBL/Univ. Archives'),
                                (u'main', u'Main Library'),
                                (u'theology', u'Theology Library'),
                                (u'law', u'Law Library'),
                                (u'oxford', u'Oxford C. Library'),
                                (u'healthsci', u'Health Sci Library'),
                                (u'eu-customer', u'Emory School, Dept., Center, etc.'),
                                (u'faculty', u'Faculty member (personal)'),
                                (u'gradstud', u'Graduate student (personal)'),
                                (u'staff', u'Staff member (personal)'), 
                                (u'non-emory', u'Customer not affiliated with Emory'),
                                )
    order_type = models.CharField(max_length=25, choices=ORDER_TYPE_CHOICES)
    # customer_id = models.ForeignKey(Agent, related_name = 'customer')
    #    delivery_id = models.ForeignKey(Agent, related_name = 'delivery')
    # billing_id ???
    # requester_id ???
    #    outsourcer_id = models.ForeignKey(Contact, related_name = 'outsourcer', blank = True, null = True, default = None)
    order_title = models.CharField(max_length=255)
    date_order_due = models.DateField('Date Order Due', blank = True, null = True)   # default is 10 business days from submission, can be modified (by DDC staff?)
    
    # the following are really workflow steps that need to be logged in another table
    # others used in Hydraulics include deferred, cancelled, permissions_given, started, fee_estimate_sent, customer_notified, patron_deliverables_complete, finalization_begun
    date_order_approved = models.DateField('Current Date', auto_now_add=True)
    date_order_completed = models.DateField('Date Order Completed', blank = True, null = True) # should be within due date
    date_originals_received = models.DateField('Date Originals Received', blank = True, null = True) #
    date_originals_returned = models.DateField('Date Originals Returned', blank = True, null = True) # 
    
    # fee_estimated
    # fee_actual
    
    originals_received_by = models.CharField(max_length=30, blank=True)  # ideally this should be user id
    originals_returned_to = models.CharField(max_length=30, blank=True)  # ideally this should be user id   
    is_rush = models.BooleanField('Rush Order')    # if marked rush, will do ASAP as a top priority (extra charge applies per item?)
    delivery_method = models.CharField(max_length=25, blank=True, choices=DELIVERY_METHOD_CHOICES)
    customer_notes = models.TextField(blank=True) # notes from customer, special instructions, etc.
    processing_notes = models.TextField(blank=True)  # internal notes for digitization or other processing
    archive_surrogates = models.BooleanField('Archive Some/All Items', default=True)
    owner_originals = models.CharField(max_length=50, choices=OWNER_ORIGINALS_CHOICES)
    release_on_file = models.BooleanField(default=False)  # whether a legal release is on file when originals are personal property of faculty, staff or graduate student, or when the customer is not part of Emory
    # might want to add additional rights stuff: permission letter on file? permission granted?
    ###############################################################################
    # the following are defaults to apply to each new item added to the batch order
    ###############################################################################
    default_collection = models.ForeignKey(Collection, blank=True, null=True)
    # the following fields only needed for in-copyright works for which we acquired permission to digitize
    copyright_owner = models.CharField(max_length=100, blank=True)
    copyright_permission_statement = models.CharField(max_length=255, blank=True) # "Reproduced by permission of ..."
    copyright_permission_terms = models.CharField(max_length=255, blank=True)  # Typically "Emory may digitize, ..."
    copyright_end_user_rights = models.CharField(max_length=255, blank=True) # Typically "Further reproduction or duplication is ..."
    items = models.ManyToManyField(Item, through='OrderItem')
    
    # REQUEST RELATED FIELDS (build in ability to weigh criteria via a point system)
    # request_form_upload = models.FileField(upload_to=requests) # Request Form Upload
    # Rights (drop-down)
    # Value and Utility (multi-choice)
    # Duplication (drop-down)
    # Enhancement of intellectual access (multi-choice)
    # Demand (multi-choice)
    # Collaborative across collections (multi-choice)
    # Preservation aspects (multi-choice)
    # Intellectual Access / Metadata (multi-choice)
    
    def __unicode__(self):
        return self.order_title

    class Meta:
        ordering = ['-is_rush', '-date_order_due', '-id']

class OrderItem(models.Model):
    '''A model relating Orders to Items through a many-to-many relationship'''
    order = models.ForeignKey(Order)
    item = models.ForeignKey(Item)
    date_added = models.DateTimeField(default=datetime.now)
    
    def __unicode__(self):
        return u'%s : %s' % (self.order.order_title, self.item.title)

# class StatesLog
#    '''A historical log of all the workflow states an Item has been in.'''

class DigitalItem(models.Model):
    '''Represents the set of digital surrogates associated with a physical item; alternatively, can represent a coherent set of born-digital "items".'''
    
    BIT_DEPTH_CHOICES = (
                         (u'8', u'Bitonal (8 bit)'),
                         (u'16', u'Grayscale (16 bit)'), 
                         (u'24', u'Color (24 bit)'),
                         ) 
    
    # other file types might include TEI, ONIX, OAI-ORE, anything else?
    dpi = models.IntegerField('DPI needed by customer', blank=True, null=True) # dpi field, so that we can go non-standard e.g. 1200 dpi for Schatten, default is 400 dpi (at actual size)
    bit_depth = models.CharField(max_length=2, default='8', choices=BIT_DEPTH_CHOICES)
    base_path = models.CharField(max_length=100, blank=True)   # base directory path for files output from digitization of item
    #   look at FilePathField field type for these regex's, has path, match and recursive arguments
    dc_regex = models.CharField(max_length=100, blank=True)     # regex relative to base path, location of DC file
    ocr_regex = models.CharField(max_length=100, blank=True, default='Output/XML/*.xml')  # regex relative to base path, location of OCR .xml
    pdf_regex = models.CharField(max_length=100, blank=True, default='Output/PDF/*.pdf')  # regex relative to base path, location of Kirtas PDF
    pdfa_regex = models.CharField(max_length=100, blank=True)   # regex relative to base path, location of PDFA file
    txt_regex = models.CharField(max_length=100, blank=True, default='Output/OCR/*.txt')  # regex relative to base path, location of .txt files
    pos_regex = models.CharField(max_length=100, blank=True, default='Output/OCR/*.pos')  # regex relative to base path, location of .pos files (word position)
    mrc_regex = models.CharField(max_length=100, blank=True, default='*_MRC.xml')  # regex relative to base path, location of MARCXML file
    jp2_regex = models.CharField(max_length=100, blank=True, default='Output/Images/JP2/*.jp2')    # regex relative to base path, location of JP2 files
    mets_regex = models.CharField(max_length=100, blank=True, default='Output/Metadata/*_METS.xml')   # regex relative to base path, location of METS file
    alto_regex = models.CharField(max_length=100, blank=True, default='Output/Metadata/ALTO/*_ALTO.xml') 
    mods_regex = models.CharField(max_length=100, blank=True)   # regex relative to base path, location of MODS file
    images_raw_regex = models.CharField(max_length=100, blank=True)  # regex relative to base path, location of camera or scanner images
    images_master_regex = models.CharField(max_length=100, blank=True)  # regex relative to base path, location of preservation master images
    images_presentation_regex = models.CharField(max_length=100, blank=True)  # regex relative to base path, location of presentation quality images
    images_captured_count = models.IntegerField('# of Images Captured', blank=True, null=True) # count of images directly from the camera/scanner
    item_id = models.ForeignKey(Item)
    
    class Meta:
        verbose_name_plural = "Digital Items"
    
    def __unicode__(self):
        return self.title

class Metadata(models.Model):
    item = models.ForeignKey(Item, related_name='for_item')
    term = models.ForeignKey(Metadata_Term)
    value = models.CharField(max_length=510)

    class Meta:
        verbose_name_plural = "Metadata"

    def __unicode__(self):
        return u'%s : %s : %s' % (self.item.title, self.term.label, self.value)

class ItemIdentifier(models.Model):
    item = models.ForeignKey(Item, related_name='id_for_item')
    type = models.ForeignKey(ItemIdentifierType)
    value = models.CharField(max_length=100)
      
    def __unicode__(self):
        return u'%s : %s : %s' % (self.item.title, self.type.label, self.value)

class DigitalComponent(models.Model):
    digital_item = models.ForeignKey(DigitalItem, related_name='component_of_digital')
    type = models.ForeignKey(DigitalComponentType)
    regex = models.CharField(max_length=510)
    
    class Meta:
        verbose_name_plural = "Digital Components"
    
# Error Codes similar to list that Internet Archive uses
class Error_Code(models.Model):
    code = models.CharField(max_length=5)
    description = models.CharField(max_length=30)



                                # class Capture_Device(models.Model):
                                #    name
                                #    location
                                #    calibration_date   # date scanner last calibrated, or camera last white balanced


                                #class Workstation(models.Model):
                                #    name
                                #    location
                                #    monitor_calibration_date # date when workstation monitor last calibrated
                                   