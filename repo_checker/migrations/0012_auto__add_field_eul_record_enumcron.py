# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'Eul_Record.enumcron'
        db.add_column('repo_checker_eul_record', 'enumcron',
                      self.gf('django.db.models.fields.CharField')(default='', max_length=30, blank=True),
                      keep_default=False)

    def backwards(self, orm):
        # Deleting field 'Eul_Record.enumcron'
        db.delete_column('repo_checker_eul_record', 'enumcron')

    models = {
        'repo_checker.eul_record': {
            'Meta': {'object_name': 'Eul_Record'},
            'barcode': ('django.db.models.fields.CharField', [], {'max_length': '16', 'unique': 'True', 'null': 'True', 'db_index': 'True'}),
            'call_no': ('django.db.models.fields.CharField', [], {'max_length': '14', 'blank': 'True'}),
            'call_no_expanded': ('django.db.models.fields.CharField', [], {'max_length': '19', 'blank': 'True'}),
            'copy_num': ('django.db.models.fields.CharField', [], {'max_length': '1', 'blank': 'True'}),
            'corporate_author': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '100', 'blank': 'True'}),
            'current_location': ('django.db.models.fields.CharField', [], {'max_length': '10', 'blank': 'True'}),
            'date_cataloged': ('django.db.models.fields.CharField', [], {'max_length': '10', 'blank': 'True'}),
            'date_what': ('django.db.models.fields.CharField', [], {'max_length': '8', 'blank': 'True'}),
            'digitization_proposal': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'emory_ark_url': ('django.db.models.fields.URLField', [], {'max_length': '255', 'blank': 'True'}),
            'emory_digitization_note': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'enumcron': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'ff_ctry': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '3', 'null': 'True', 'blank': 'True'}),
            'ff_dat_typ': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '1', 'null': 'True', 'blank': 'True'}),
            'ff_date1': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '4', 'null': 'True', 'blank': 'True'}),
            'ff_date2': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '4', 'null': 'True', 'blank': 'True'}),
            'ff_form_of_item': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '1', 'null': 'True', 'blank': 'True'}),
            'ff_freq': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '1', 'null': 'True', 'blank': 'True'}),
            'ff_govtpub': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '1', 'null': 'True', 'blank': 'True'}),
            'ff_lang': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '3', 'null': 'True', 'blank': 'True'}),
            'ff_nature_of_work': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '1', 'null': 'True', 'blank': 'True'}),
            'ff_type_of_cr': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '1', 'null': 'True', 'blank': 'True'}),
            'fixed_field': ('django.db.models.fields.CharField', [], {'max_length': '40', 'blank': 'True'}),
            'height_cm': ('django.db.models.fields.IntegerField', [], {'db_index': 'True', 'max_length': '2', 'null': 'True', 'blank': 'True'}),
            'home_location': ('django.db.models.fields.CharField', [], {'max_length': '10', 'blank': 'True'}),
            'ht_rec_num': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'isbn10': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '10', 'null': 'True', 'blank': 'True'}),
            'isbn13': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '13', 'null': 'True', 'blank': 'True'}),
            'issn': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'item_type': ('django.db.models.fields.CharField', [], {'max_length': '10', 'blank': 'True'}),
            'lc_class': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '1', 'null': 'True', 'blank': 'True'}),
            'lc_subclass': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '2', 'null': 'True', 'blank': 'True'}),
            'lccn': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'library': ('django.db.models.fields.CharField', [], {'max_length': '9', 'blank': 'True'}),
            'local_note': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'meeting_name': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '100', 'blank': 'True'}),
            'no_circs': ('django.db.models.fields.CharField', [], {'max_length': '1', 'blank': 'True'}),
            'oclc': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'oclc_trimmed': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '11', 'null': 'True', 'blank': 'True'}),
            'ohohoh': ('django.db.models.fields.CharField', [], {'max_length': '15', 'blank': 'True'}),
            'ol_id': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'online_copy_available': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'pagination': ('django.db.models.fields.IntegerField', [], {'db_index': 'True', 'max_length': '4', 'null': 'True', 'blank': 'True'}),
            'personal_author': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'blank': 'True'}),
            'physical_description': ('django.db.models.fields.CharField', [], {'max_length': '24', 'blank': 'True'}),
            'pub_year': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '4', 'blank': 'True'}),
            'publication_info': ('django.db.models.fields.CharField', [], {'max_length': '86', 'blank': 'True'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '572', 'blank': 'True'}),
            'title_control': ('django.db.models.fields.CharField', [], {'max_length': '14', 'blank': 'True'}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '255', 'blank': 'True'}),
            'width_cm': ('django.db.models.fields.IntegerField', [], {'db_index': 'True', 'max_length': '2', 'null': 'True', 'blank': 'True'})
        },
        'repo_checker.hathitrust_item': {
            'Meta': {'object_name': 'HathiTrust_Item'},
            'access': ('django.db.models.fields.CharField', [], {'max_length': '5', 'blank': 'True'}),
            'bibl_format': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '2', 'blank': 'True'}),
            'enumcron': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'gov_doc': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'imprint': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'isbn': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '255', 'blank': 'True'}),
            'issn': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '90', 'blank': 'True'}),
            'language': ('django.db.models.fields.CharField', [], {'max_length': '3', 'blank': 'True'}),
            'last_updated': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.date.today', 'null': 'True', 'blank': 'True'}),
            'lccn': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '12', 'blank': 'True'}),
            'local_created': ('django.db.models.fields.DateField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'local_last_modified': ('django.db.models.fields.DateField', [], {'auto_now': 'True', 'blank': 'True'}),
            'oclc': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '16', 'blank': 'True'}),
            'pub_date': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '9', 'blank': 'True'}),
            'pub_place': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '3', 'blank': 'True'}),
            'rights': ('django.db.models.fields.CharField', [], {'max_length': '11', 'blank': 'True'}),
            'rights_reason_code': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '4', 'blank': 'True'}),
            'source': ('django.db.models.fields.CharField', [], {'max_length': '3', 'blank': 'True'}),
            'source_inst_rec_num': ('django.db.models.fields.CharField', [], {'max_length': '15', 'blank': 'True'}),
            'title': ('django.db.models.fields.TextField', [], {'db_index': 'True', 'blank': 'True'}),
            'um_rec_num': ('django.db.models.fields.CharField', [], {'max_length': '9', 'blank': 'True'}),
            'volume_identifier': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '25', 'blank': 'True'})
        },
        'repo_checker.openlibrary_edition': {
            'Meta': {'object_name': 'OpenLibrary_Edition'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'isbn_10': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '30', 'null': 'True', 'blank': 'True'}),
            'isbn_13': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '30', 'null': 'True', 'blank': 'True'}),
            'lccn': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '30', 'blank': 'True'}),
            'oclc': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '30', 'blank': 'True'}),
            'ol_key': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '25', 'blank': 'True'}),
            'publish_date': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '90', 'blank': 'True'}),
            'publisher': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '255', 'blank': 'True'}),
            'title': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '255', 'blank': 'True'})
        }
    }

    complete_apps = ['repo_checker']