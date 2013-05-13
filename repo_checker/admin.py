from django.contrib import admin
from repo_checker.models import *

class Eul_RecordAdmin(admin.ModelAdmin):

#    date_hierarchy = 'pub_year_as_date'

    fieldsets = (
                 (None, {
                  'fields': (  (('title', 
				 'enumcron'), 
				('personal_author', 
				 'corporate_author', 
				 'meeting_name'), 
				('publication_info', 
				 'pub_year'), 
				('physical_description', 
				 'fixed_field',
				 'pagination',
 				 'height_cm',
				 'width_cm'), 
				('ff_dat_typ', 
				 'ff_date1', 
				 'ff_date2', 
				 'ff_ctry', 
				 'ff_freq', 
				 'ff_type_of_cr', 
				 'ff_form_of_item', 
				 'ff_nature_of_work', 
				 'ff_govtpub', 
				 'ff_lang'), 
				('barcode',
				 'title_control', 
				 'oclc', 
				 'call_no', 
				 'call_no_expanded'), 
				('library', 
				 'home_location', 
				 'current_location'), 
				('item_type', 
				 'copy_num', 
				 'no_circs'), 
				('url',
				 'ht_rec_num', 
				 'ol_id'), 
				('emory_ark_url',  
				 'digitization_proposal'), 
				('emory_digitization_note', 
				 'local_note'), 
				('ia_url', 
				 'wikipedia_referring_url') )
                                ), }),
                  ) 

#    readonly_fields =   ('barcode', 
#			 'call_no_expanded', 
#			 'no_circs', 
#			 'item_type', 
#			 'copy_num', 
#			 'home_location', 
#			 'current_location', 
#			 'library', 
#			 'date_cataloged', 
#			 'title_control', 
#			 'ohohoh', 
#			 'fixed_field', 
#			 'url',
#			 'ht_rec_num', 
#			 'ol_id', 
#			 'emory_ark_url', 
#			 'personal_author', 
#			 'corporate_author', 
#			)

    list_per_page = 15

    list_display = ('oclc', 
		    'barcode', 
		    'online_copy_available',
		    'ia_url',  
		    'title', 
		    'enumcron', 
#                    'personal_author', 
#		    'wikipedia_referring_url', 
#                    'publication_info', 
#                    'pub_year', 
#		    'call_no', 
#		    'library', 
#		    'home_location',
#		    'physical_description', 
#		    'pagination', 
#		    'height_cm', 
		    'digitization_proposal', 
                    )

    list_editable = ('enumcron',  
		     'online_copy_available', 
   		     'ia_url', 
#		     'pub_year', 
#		     'wikipedia_referring_url', 
		     'digitization_proposal', 
		    )

    list_filter = ('ht_rec_num',
		   'online_copy_available', 
		   'digitization_proposal', 
                   'library', 
                   'home_location', 
		   'lc_class', 
		   'lc_subclass', 
		   'height_cm', 
		   'item_type',  
		   'ff_dat_typ', 
		   'ff_ctry', 
		   'ff_type_of_cr', 
		   'ff_form_of_item', 
		   'ff_nature_of_work', 
		   'ff_govtpub', 
		   'ff_lang', 
                   'no_circs', 
		   'pub_year',  
		   'ff_date1', 
		   'ff_date2', 
                   )

    search_fields = ('title',
                     'personal_author', 
                     'corporate_author',
		     'barcode', 
 		     'oclc',  
		     'call_no', 
                     )

    save_on_top = True
    save_as = True


class HathiTrust_ItemAdmin(admin.ModelAdmin):

    def recordurl(self, obj):
        return ("http://catalog.hathitrust.org/Record/%s") % (obj.um_rec_num)

    fieldsets = (
                 (None, {
                  'fields': (  (('title', 
                                'enumcron'), 
                                ('access', 
                                'rights', 
                                'rights_reason_code'), 
                                ('volume_identifier', 
                                'um_rec_num'), 
                                ('source', 
                                'source_inst_rec_num'),  
                                ('oclc', 
                                'lccn', 
                                'isbn', 
                                'issn'), 
                                ('imprint', 
                                'pub_place', 
                                'pub_date'), 
                                ('gov_doc', 
                                'language', 
                                'bibl_format'),  
                                'last_updated' )  
                                ), }),
                  ) 

    readonly_fields =   ('title', 
                         'enumcron', 
                         'access', 
                         'rights', 
                         'rights_reason_code', 
                         'volume_identifier', 
                         'um_rec_num', 
                         'source', 
                         'source_inst_rec_num', 
                         'oclc', 
                         'lccn', 
                         'isbn', 
                         'issn', 
                         'imprint',
                         'pub_place',
                         'pub_date', 
                         'gov_doc',
                         'language', 
                         'bibl_format', 
                         'last_updated' )
                         

    list_display = ('title', 
                    'enumcron', 
                    'imprint', 
                    'recordurl'  
                    )
  
    list_filter = ('rights',
                   'gov_doc',
		   'language',  
                   'bibl_format', 
                   'source', 
                   )

    search_fields = ('title',
                     'oclc', 
                     'lccn', 
                     )

admin.site.register(HathiTrust_Item, HathiTrust_ItemAdmin)
admin.site.register(Eul_Record,Eul_RecordAdmin)
# admin.site.register(Eul_Record)

