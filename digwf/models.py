from django.db import models


class Collection(models.Model):
    
    COLLECTION_TYPE_CHOICES = (
                               (u'Emory Digital Editions', u'Emory Digital Editions'),
                               (u'MARBL MSS #', u'MARBL MSS #'),
                               (u'EUA Series #', u'EUA Series #'),
                               (u'Pitts MSS #', u'Pitts MSS #'),
                               (u'Pitts RG #', u'Pitts RG #'),
                               (u'Other', u'Other'),
                               )  

    type = models.CharField(max_length=30, choices=COLLECTION_TYPE_CHOICES)
    coll_id = models.CharField(max_length=15)
    description = models.CharField(max_length=255)
    url = models.URLField(blank=True)

    def __unicode__(self):
        return u'%s : %s : %s'% (self.type, self.coll_id, self.description)
    
    class Meta:
        ordering = ['type', 'coll_id']

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

class Workflow_Step(models.Model):
    code = models.CharField(max_length=10)
    description = models.CharField(max_length=30)
    
    def __unicode__(self):
        return self.code

class Contact(models.Model):
    
    CONTACT_TYPE_CHOICES = (
                            (u'customer', u'Customer'),
                            (u'outsourcer', u'Outsourcer'),
                            )
    company = models.CharField(max_length=50, blank=True)
    person = models.CharField(max_length=50, blank=True)
    address1 = models.CharField(max_length=50, blank=True)
    address2 = models.CharField(max_length=50, blank=True)
    city = models.CharField(max_length=30, blank=True)
    state = models.CharField(max_length=2, blank=True)
    zip = models.IntegerField('5 digit ZIP', max_length=5, null=True, blank=True)
    phone = models.IntegerField('Phone, numbers only', max_length=10, null=True, blank=True)
    email = models.EmailField(max_length=75, blank=True)
    contact_type = models.CharField(max_length=25, blank=True, choices=CONTACT_TYPE_CHOICES)  # Customer, Delivery, Vendor, etc.
    # note = models.TextField(blank=True)
    
    def __unicode__(self):
        return u'%s : %s' % (self.company, self.person)
    
    class Meta:
        ordering = ['company', 'person']

class Batch_Order(models.Model):

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
    customer_id = models.ForeignKey(Contact, related_name = 'customer')
    delivery_id = models.ForeignKey(Contact, related_name = 'delivery')
    #    outsourcer_id = models.ForeignKey(Contact, related_name = 'outsourcer', blank = True, null = True, default = None)
    description = models.CharField(max_length=255)
    date_order_created = models.DateField('Current Date', auto_now_add=True)
    date_order_due = models.DateField('Date Order Due')   # default is 10 business days from submission, can be modified (by DDC staff?)
    date_order_completed = models.DateField('Date Order Completed', blank = True, null = True) # should be within due date
    date_originals_received = models.DateField('Date Originals Received', blank = True, null = True) #
    date_originals_returned = models.DateField('Date Originals Returned', blank = True, null = True) # 
    originals_received_by = models.CharField(max_length=30, blank=True)  # ideally this should be user id
    originals_returned_to = models.CharField(max_length=30, blank=True)  # ideally this should be user id   
    rush = models.BooleanField('Rush Order')    # if marked rush, will do ASAP as a top priority (extra charge applies per item?)
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

    def __unicode__(self):
        return self.description

    class Meta:
        ordering = ['-rush', '-date_order_due', '-id']


class Rights(models.Model):
    status = models.CharField(max_length=50)
    description = models.TextField()

    def __unicode__(self):
        return u'%s : %s' % (self.status, self.description)
    
    class Meta:
        verbose_name_plural = "Rights"


class Resource_Type(models.Model):
    type = models.CharField(max_length=25)
    description = models.TextField(blank=True)
    broad_type = models.CharField(max_length=25)

    def __unicode__(self):
        return u'%s : %s' % (self.type, self.description)    
    
    class Meta:
        ordering = ['type']

class Metadata_Term(models.Model):
    label = models.CharField(max_length=255)
    name = models.CharField(max_length=255)

    class Meta:
        ordering = ('label', )
    
    def __unicode__(self):
        return self.label

class Item(models.Model):    
    
    PUB_PLACE_CHOICES = (
        (u'US', u'United States'),
        (u'NON-US', u'Non US Country'),
    )    
    USER_CHOICES = (
        (u'bwoolge', u'Bonnie Jean Woolger'),
        (u'bmethot', u'Brian Methot'),
        (u'prknigh', u'Paige Knight'),
        (u'jfenton', u'Kyle Fenton'),
        (u'tbunn', u'Trey Bunn'),
    )    
    BIT_DEPTH_CHOICES = (
        (u'8', u'Bitonal (8 bit)'),
        (u'16', u'Grayscale (16 bit)'), 
        (u'24', u'Color (24 bit)'),
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
    
    title = models.CharField(max_length=200)
    collection = models.ForeignKey(Collection, blank=True, null=True)
    oclc = models.CharField('OCLC Control Key', max_length=50, blank=True)  # OCLC control key, normalized to just digits
    lccn = models.CharField(max_length=50, blank=True)    # Library of Congress Control Number, normalized to LC standards  http://www.loc.gov/marc/lccn-namespace.html#syntax
    isbn = models.CharField('ISBN', max_length=50, blank=True)    # International Standard Book Number
    issn = models.CharField('ISSN', max_length=50, blank=True)    # International Standard Serial Number
    barcode = models.CharField('Emory Barcode', max_length=20, blank=True) # local barcode attached to the physical copy of a digitized item
    pid = models.CharField('Emory PID', max_length=10, blank=True)       # PID assigned to item
    digital_masters_id = models.IntegerField('Digital Masters ID', max_length=5, blank=True)
    other_id = models.CharField('Other identifier', max_length=30, blank=True)
    enumcron = models.CharField('Volume/Part', max_length=20, blank=True)   # volume or part designation for this item
    base_path = models.CharField(max_length=100, blank=True)   # base directory path for files output from digitization of item
    #   look at FilePathField field type for these regex's, has path, match and recursive arguments
    pdf_regex = models.CharField(max_length=100, blank=True, default='Output/PDF/*.pdf')  # regex relative to base path, location of Kirtas PDF
    ocr_regex = models.CharField(max_length=100, blank=True, default='Output/XML/*.xml')  # regex relative to base path, location of OCR .xml
    txt_regex = models.CharField(max_length=100, blank=True, default='Output/OCR/*.txt')  # regex relative to base path, location of .txt files
    pos_regex = models.CharField(max_length=100, blank=True, default='Output/OCR/*.pos')  # regex relative to base path, location of .pos files (word position)
    mrc_regex = models.CharField(max_length=100, blank=True, default='*_MRC.xml')  # regex relative to base path, location of MARCXML file
    jp2_regex = models.CharField(max_length=100, blank=True, default='Output/Images/JP2/*.jp2')    # regex relative to base path, location of JP2 files
    mets_regex = models.CharField(max_length=100, blank=True, default='Output/Metadata/*_METS.xml')   # regex relative to base path, location of METS file
    alto_regex = models.CharField(max_length=100, blank=True, default='Output/Metadata/ALTO/*_ALTO.xml') 
    pdfa_regex = models.CharField(max_length=100, blank=True)   # regex relative to base path, location of PDFA file
    mods_regex = models.CharField(max_length=100, blank=True)   # regex relative to base path, location of MODS file
    dc_regex = models.CharField(max_length=100, blank=True)     # regex relative to base path, location of DC file
    images_captured_regex = models.CharField(max_length=100, blank=True)  # regex relative to base path, location of camera or scanner images
    images_master_regex = models.CharField(max_length=100, blank=True)  # regex relative to base path, location of preservation master images
    images_presentation_regex = models.CharField(max_length=100, blank=True)  # regex relative to base path, location of presentation quality images
    images_captured_count = models.IntegerField('# of Images Captured', blank=True, null=True) # count of images directly from the camera/scanner
    foldout_count = models.IntegerField('# of Foldouts', blank=True, null=True)  # count of foldouts in a bound item (for chargeback purposes)
    has_foldouts = models.BooleanField('Book item contains foldouts', default=False)
    created_at = models.DateField(auto_now_add=True)  # date item record created
    updated_at = models.DateField(auto_now=True)  # date item record last updated
    rush = models.BooleanField('Rush Process This Item') # whether this is a prioritized rush item
    notification_email = models.EmailField(blank=True)  # email contact, to notify when item is avaiable online
    due_date = models.DateField(blank=True, null=True)   # due date for item 
    is_brittle = models.BooleanField('Item brittle but digitizeable')    # indicates whether this is a brittle book that can be destroyed while digitized, then withdrawn; default value is FALSE
    is_digitized = models.BooleanField('Already Digitized Elsewhere eg HathiTrust')   # whether item has already been digitized
    is_cataloged = models.BooleanField('Item is Cataloged')     # whether item is cataloged or not 
    is_paginated = models.BooleanField('Item is Paginated')   # whether item is paginated or comprises an ordered set of parts
    has_binding = models.BooleanField('Item has Binding')   # whether item has a binding (is a codex)
    is_serial = models.BooleanField('Item is a Serial')   # whether item is a serial (destination might be an ejournals web front end)
    to_archive  = models.BooleanField('Digital surrogate will be archived', default=True)    # whether to archive the item (if not, it's digitize-on-demand only)
    is_resource_type = models.ForeignKey(Resource_Type)  # flag for type of resource being digitized; for instance whether original is a map, which needs extra geospatial metadata later on
    has_rights = models.ForeignKey(Rights)
    # has_rights = models.ForeignKey(Rights, default=Rights.objects.get(id=1))
    pub_state = models.ForeignKey(Publication_State)    # if published, then need to record pub_country and pub_year for rights
    pub_place = models.CharField('Place of Publication', max_length=10, blank=True, choices=PUB_PLACE_CHOICES) # "us" or "non-us" for access rights
    pub_year = models.DateField('Year of Publication', blank=True, null=True) # YYYY format date of publication or copyright
    has_typeset_text = models.BooleanField()    # if there is typset text, then we can ocr the item
    note = models.TextField('Processing Notes', blank=True)    # any notes pertaining to the item being digitized
    rejection_code = models.ForeignKey(Rejection_Code, blank=True, null=True)
    workflow_step = models.ForeignKey(Workflow_Step)
    batch_order = models.ForeignKey(Batch_Order)
    user = models.CharField('Staff User', max_length=15, choices = USER_CHOICES)
    dpi = models.IntegerField('DPI needed by customer', blank=True, null=True) # dpi field, so that we can go non-standard e.g. 1200 dpi for Schatten, default is 400 dpi (at actual size)
    time_spent = models.TimeField(blank=True)  # manually entered hh:mm format, may hook into a timer widget later       
    bit_depth = models.CharField(max_length=2, default='8', choices=BIT_DEPTH_CHOICES)
    owner_originals = models.CharField(max_length=30, blank=True, choices = OWNER_ORIGINALS_CHOICES)  # who owns the source materials being scanned?
    metadata = models.ManyToManyField(Metadata_Term, through='Metadata')
    # flagged_for_qc_pre (1,2,3) a certain % of itmes per batch should be flagged for qc before being archived
    # flagged_for_qc_post (1,2,3) a certain % of itmes per batch should be flagged for qc after being archived
    # outsourced = models.BooleanField()  # whether this item (batch) is/was being outsourced for digitization
    
    def __unicode__(self):
        return self.title
    
    class Meta:
        ordering = ['title']

class Metadata(models.Model):
    item = models.ForeignKey(Item, related_name='for_item')
    term = models.ForeignKey(Metadata_Term)
    value = models.CharField(max_length=510)

    class Meta:
        verbose_name_plural = "Metadata"

    def __unicode__(self):
        return u'%s : %s : %s' % (self.item.title, self.term.label, self.value)

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
                                   