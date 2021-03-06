from django.contrib import admin
from digwf.models import * 
from workflows.utils import set_state, get_state, do_transition
from workflows.models import Transition, State
from django.contrib.auth.models import User

#################### Item Admin Actions (Begin) ###########################

def pull_item(modeladmin, request, queryset):
    for obj in queryset:
        t = Transition.objects.get(name = "Pull Item")
        s = State.objects.get(name = "Item Pulled")
#        u = request.user 
        u = User.objects.get(username = "jfenton")
#        do_transition(obj, t, u)
        set_state(obj, s)

def withdraw_item(modeladmin, request, queryset):
    for obj in queryset:
#        t = Transition.objects.get(name = "")
        s = State.objects.get(name = "Item Being Withdrawn (Deaccessioned)")
        #        u = request.user 
        u = User.objects.get(username = "jfenton")
#        do_transition(obj, t, u)
        set_state(obj, s)

def digitize_item(modeladmin, request, queryset):
    for obj in queryset:
        #        t = Transition.objects.get(name = "")
        s = State.objects.get(name = "Item Being Digitized")
        #        u = request.user 
        u = User.objects.get(username = "jfenton")
        #        do_transition(obj, t, u)
        set_state(obj, s)

def reject_item(modeladmin, request, queryset):
    for obj in queryset:
        #        t = Transition.objects.get(name = "")
        s = State.objects.get(name = "Item Rejected")
        #        u = request.user 
        u = User.objects.get(username = "jfenton")
        #        do_transition(obj, t, u)
        set_state(obj, s)

def return_item(modeladmin, request, queryset):
    for obj in queryset:
        #        t = Transition.objects.get(name = "")
        s = State.objects.get(name = "Item Returned")
        #        u = request.user 
        u = User.objects.get(username = "jfenton")
        #        do_transition(obj, t, u)
        set_state(obj, s)

def outsource_item_digitization(modeladmin, request, queryset):
    for obj in queryset:
        #        t = Transition.objects.get(name = "")
        s = State.objects.get(name = "Item Outsourced")
        #        u = request.user 
        u = User.objects.get(username = "jfenton")
        #        do_transition(obj, t, u)
        set_state(obj, s)

def repair_item(modeladmin, request, queryset):
    for obj in queryset:
        #        t = Transition.objects.get(name = "")
        s = State.objects.get(name = "Item Being Repaired")
        #        u = request.user 
        u = User.objects.get(username = "jfenton")
        #        do_transition(obj, t, u)
        set_state(obj, s)

#################### Item Admin Actions (End) ###########################

#################### Order Admin Actions (Begin) ###########################

def table_order_request(modeladmin, request, queryset):
    for obj in queryset:
        #        t = Transition.objects.get(name = "")
        s = State.objects.get(name = "Digitization Request Tabled")
        #        u = request.user 
        u = User.objects.get(username = "jfenton")
        #        do_transition(obj, t, u)
        set_state(obj, s)

def reject_order_request(modeladmin, request, queryset):
    for obj in queryset:
        #        t = Transition.objects.get(name = "")
        s = State.objects.get(name = "Digitization Request Rejected")
        #        u = request.user 
        u = User.objects.get(username = "jfenton")
        #        do_transition(obj, t, u)
        set_state(obj, s)

def approve_order_request(modeladmin, request, queryset):
    for obj in queryset:
        #        t = Transition.objects.get(name = "")
        s = State.objects.get(name = "Digitization Request Approved")
        #        u = request.user 
        u = User.objects.get(username = "jfenton")
        #        do_transition(obj, t, u)
        set_state(obj, s)

def fulfill_order_request(modeladmin, request, queryset):
    for obj in queryset:
        #        t = Transition.objects.get(name = "")
        s = State.objects.get(name = "Digitization Request Fulfilled")
        #        u = request.user 
        u = User.objects.get(username = "jfenton")
        #        do_transition(obj, t, u)
        set_state(obj, s)
                  
#################### Order Admin Actions (End) ###########################


#################### Digital Item Admin Actions (Begin) ##################

def queue_digital_item(modeladmin, request, queryset):
    for obj in queryset:
        s = State.objects.get(name = "Queued")
        u = User.objects.get(username = "jfenton")
        set_state(obj, s)

def capture_digital_item(modeladmin, request, queryset):
    for obj in queryset:
        s = State.objects.get(name = "Captured")
        u = User.objects.get(username = "jfenton")
        set_state(obj, s)

def template_digital_item(modeladmin, request, queryset):
    for obj in queryset:
        s = State.objects.get(name = "Templated (Batch Edited)")
        u = User.objects.get(username = "jfenton")
        set_state(obj, s)

def edit_digital_item(modeladmin, request, queryset):
    for obj in queryset:
        s = State.objects.get(name = "Edited")
        u = User.objects.get(username = "jfenton")
        set_state(obj, s)

def ocr_digital_item(modeladmin, request, queryset):
    for obj in queryset:
        s = State.objects.get(name = "OCR'd")
        u = User.objects.get(username = "jfenton")
        set_state(obj, s)

def qc_digital_item(modeladmin, request, queryset):
    for obj in queryset:
        s = State.objects.get(name = "Quality Checked")
        u = User.objects.get(username = "jfenton")
        set_state(obj, s)

def describe_digital_item(modeladmin, request, queryset):
    for obj in queryset:
        s = State.objects.get(name = "Described (Fast Track)")
        u = User.objects.get(username = "jfenton")
        set_state(obj, s)

def describe_digital_item(modeladmin, request, queryset):
    for obj in queryset:
        s = State.objects.get(name = "Described (Fast Track)")
        u = User.objects.get(username = "jfenton")
        set_state(obj, s)

def complete_digital_item(modeladmin, request, queryset):
    for obj in queryset:
        s = State.objects.get(name = "Digitization Completed")
        u = User.objects.get(username = "jfenton")
        set_state(obj, s)

def archive_emory_digital_item(modeladmin, request, queryset):
    for obj in queryset:
        s = State.objects.get(name = "Archived (Fedora)")
        u = User.objects.get(username = "jfenton")
        set_state(obj, s)

def archive_hathi_trust_digital_item(modeladmin, request, queryset):
    for obj in queryset:
        s = State.objects.get(name = "Archived (Hathi Trust)")
        u = User.objects.get(username = "jfenton")
        set_state(obj, s)

#################### Digital Item Admin Actions (End) ####################

class Metadata_TermInline(admin.TabularInline):
    model = Metadata
    extra = 2

##########################################################################

class ItemInline(admin.TabularInline):
    model = OrderItem
    extra = 2

##########################################################################

class ItemIdentifierInline(admin.TabularInline):
    model = ItemIdentifier
    extra = 2

##########################################################################

class DigitalComponentInline(admin.TabularInline):
    model = DigitalComponent
    extra = 2

##########################################################################

class OrderInline(admin.TabularInline):
    model = OrderItem
    extra = 0

##########################################################################

class ItemAdmin(admin.ModelAdmin):

    fieldsets = (
            (None, {
                    'fields':  ('time_spent', 
                               ('title', 'enumcron' ), 
                               'collection_id', 
                               'foldout_count', 
                               ('is_rush', 
                                'notification_email', 
                                'due_date' ), 
                               ('is_already_digitized', 
                                'to_archive' )  
                               ) }),
            ('Rights Information', {
                  'fields': ('has_rights', 
                            ('pub_state', 
                             'pub_place', 
                             'pub_year'), ), }),                 
            ('Characteristics of Original', {  
                    'fields': ( 'is_resource_type', 
                                ('is_brittle', 
                                 'is_paginated', 
                                 'has_binding'), 
                                 ('is_serial', 
                                 
                                 'has_typeset_text'), ), }),
            (None, {
                  'fields': ( 'rejection_code', 
                             'note', 
                             ) }),
                 )
   
    inlines = [
               OrderInline, 
               ItemIdentifierInline 
               ]
    
    search_fields = ('title',
                     'id')

    # figure out why order__id displays as id (confusing)    
    list_filter = ('due_date',                   
                   'order__order_title', 
                   'collection_id', 
                   )
   
    list_display = ('id',
                    'title', 
                    'enumcron',
                    'current_state', 
                    'due_date',
                    'to_archive', 
                    )

    ordering = ('-due_date', 
                '-updated_at', )

    save_on_top = True

    actions = [pull_item, 
               withdraw_item, 
               digitize_item, 
               reject_item, 
               return_item, 
               outsource_item_digitization, 
               repair_item
               ]

    admin.site.disable_action('delete_selected')

##########################################################################

class DigitalItemAdmin(admin.ModelAdmin):

    fieldsets = (
                 (None, {
                    'fields': ('images_captured_count', ) }),
                 ('Outputs File Paths', {
                    'fields': ('dpi', 
                               'bit_depth', 
                               'base_path', 
                                ), }),
                            )
    
    list_display = ('associated_physical_item', 
                    'bit_depth', 
                    'current_state',  )
    
    inlines = [ 
               Metadata_TermInline, 
               DigitalComponentInline 
               ]

    save_on_top = True

    actions = [queue_digital_item, 
           capture_digital_item, 
           template_digital_item, 
           edit_digital_item, 
           ocr_digital_item, 
           qc_digital_item, 
           describe_digital_item, 
           describe_digital_item, 
           complete_digital_item, 
           archive_emory_digital_item, 
           archive_hathi_trust_digital_item 
           ]

##########################################################################

class OrderAdmin(admin.ModelAdmin):

    fieldsets = (
                 (None, {
                  'fields': (  ('order_type', 
                                'order_title'), 
                                ('date_order_due', 
#                               'date_order_approved', 
                                'date_order_completed'), 
                                ('date_originals_received', 
                                'originals_received_by'), 
                                ('date_originals_returned', 
                                'originals_returned_to'), 
                                'is_rush' 
                                ), }),
                 )                             

    list_display = ('date_order_due', 
                    'id', 
                    'order_title',
                    'current_state', 
                    'date_order_approved', 
                    'is_rush', )
    save_on_top = True

    inlines = [ItemInline]

    actions = [table_order_request, reject_order_request, approve_order_request, fulfill_order_request]

##########################################################################

class Metadata_TermAdmin(admin.ModelAdmin):
    list_display = ('label', 
                    'name', )

##########################################################################

class MetadataAdmin(admin.ModelAdmin):
    list_display = ('item', 
                    'term',
                    'value', )

##########################################################################

class ItemIdentifierTypeAdmin(admin.ModelAdmin):
    list_display = ('label', 
                    'name', )

##########################################################################

class ItemIdentifierAdmin(admin.ModelAdmin):
    list_display = ('item', 
                    'type',
                    'value', )

##########################################################################

class PersonAdmin(admin.ModelAdmin):
    fields = ('person_last_name', 
              'person_first_name',
              'title', 
              'address1', 
              'address2', 
              'city', 
              'state', 
              'zip', 
              'phone', 
              'email', )
    list_display = ('person_last_name',
                    'person_first_name', )
    ordering = ('person_last_name',
                'person_first_name', )

##########################################################################

class OrganizationAdmin(admin.ModelAdmin):
    fields = ('organization_name',
              'organization_short_name', 
              'address1', 
              'address2', 
              'city', 
              'state', 
              'zip', 
              'phone', 
              'email', 
              'main_contact' )
    list_display = ('organization_short_name', 'organization_name', )

##########################################################################

# admin.site.register(Collection) 
# admin.site.register(Person, PersonAdmin)
# admin.site.register(Organization, OrganizationAdmin)
# admin.site.register(Order, OrderAdmin)
# admin.site.register(OrderItem)
# admin.site.register(Error_Code)
# admin.site.register(Rejection_Code)
# admin.site.register(Publication_State)
# admin.site.register(Item, ItemAdmin)
# admin.site.register(DigitalItem, DigitalItemAdmin)
# admin.site.register(Rights)
# admin.site.register(Resource_Type)
# admin.site.register(Metadata, MetadataAdmin)
# admin.site.register(Metadata_Term, Metadata_TermAdmin)
# admin.site.register(ItemIdentifier, ItemIdentifierAdmin)
# admin.site.register(ItemIdentifierType, ItemIdentifierTypeAdmin)
# admin.site.register(DigitalComponent)
# admin.site.register(DigitalComponentType)
