from django.contrib import admin
from digwf.models import * 
from repo_checker.models import Record, HathiTrust_Item 

class Metadata_TermInline(admin.TabularInline):
    model = Metadata
    extra = 2

class ItemAdmin(admin.ModelAdmin):
    fieldsets = (
            (None, {
                    'fields': ('time_spent', 
                               'user', 
                               'item_title', 
                               'collection_id', 
                               'enumcron', 
                               'order_id', 
                               'workflow_step', 
                               'foldout_count', 
                               'is_rush', 
                               'notification_email', 
                               'due_date', 
                               'is_digitized', 
                               'to_archive', ), }),
            ('Volume Identifiers', {
                    'fields': ('pid', 
                               'barcode', 
                               'oclc', 
                               'lccn', 
                               'isbn', 
                               'issn', 
                               'digital_masters_id', 
                               'other_id', ), }),
            ('Rights Information', {
                  'fields': ('has_rights', 
                             'pub_state', 
                             'pub_place', 
                             'pub_year', ), }),                 
            ('Characteristics of Original', {  
                    'fields': ('is_brittle', 
                               #                               'is_cataloged', 
                               #                               'has_foldouts', 
                               'is_paginated', 
                               'has_binding', 
                               'is_serial', 
                               'is_resource_type', 
                               'has_typeset_text', ), }),
            (None, {
                  'fields': ( 'rejection_code', 
                             'note', ) }),
                 )
    inlines = [Metadata_TermInline]
    search_fields = ('item_title', 
                     'oclc',
                     'id',
                     'barcode',)
    list_filter = ('user', 
                   'workflow_step', 
                   'created_at', 
                   'updated_at', 
                   'pub_year',)
    list_display = ('id', 
                    'item_title', 
                    'enumcron', 
                    'workflow_step', 
                    'oclc', 
                    'user', 
                    'order_id', )
    ordering = ('-due_date', 
                '-updated_at', )
    save_on_top = True

class Digital_filesAdmin(admin.ModelAdmin):
    fieldsets = (
                 (None, {
                    'fields': ('images_captured_count', ) }),
                 ('Outputs File Paths', {
                    'fields': ('dpi', 
                               'bit_depth', 
                               'base_path', 
                               'pdf_regex', 
                               'ocr_regex', 
                               'txt_regex', 
                               'pos_regex', 
                               'mrc_regex', 
                               'jp2_regex', 
                               'mets_regex', 
                               'alto_regex', 
                               'pdfa_regex', 
                               'mods_regex', 
                               'dc_regex', 
                               'images_captured_regex', 
                               'images_master_regex', 
                               'images_presentation_regex', ), }),
                            )

class OrderAdmin(admin.ModelAdmin):
    list_display = ('date_order_due', 
                    'id', 
                    'order_title', 
                    'date_order_approved', 
                    'is_rush', )
    save_on_top = True

class Metadata_TermAdmin(admin.ModelAdmin):
    list_display = ('label', 
                    'name', )

class MetadataAdmin(admin.ModelAdmin):
    list_display = ('item', 
                    'term',
                    'value', )

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

admin.site.register(Collection) 
admin.site.register(Person, PersonAdmin)
admin.site.register(Organization, OrganizationAdmin)
admin.site.register(Order, OrderAdmin)
admin.site.register(Error_Code)
admin.site.register(Rejection_Code)
admin.site.register(Record)
admin.site.register(HathiTrust_Item)
admin.site.register(Publication_State)
admin.site.register(Workflow_Step)
admin.site.register(Item, ItemAdmin)
admin.site.register(Rights)
admin.site.register(Resource_Type)
admin.site.register(Metadata, MetadataAdmin)
admin.site.register(Metadata_Term, Metadata_TermAdmin)