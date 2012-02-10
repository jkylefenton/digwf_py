# encoding: utf-8
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

class Migration(SchemaMigration):

    def forwards(self, orm):
        
        # Adding model 'Record'
        db.create_table('repo_checker_record', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('barcode', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=16, blank=True)),
            ('call_no_expanded', self.gf('django.db.models.fields.CharField')(max_length=19, blank=True)),
            ('no_circs', self.gf('django.db.models.fields.CharField')(max_length=1, blank=True)),
            ('item_type', self.gf('django.db.models.fields.CharField')(max_length=10, blank=True)),
            ('copy_num', self.gf('django.db.models.fields.CharField')(max_length=1, blank=True)),
            ('home_location', self.gf('django.db.models.fields.CharField')(max_length=10, blank=True)),
            ('current_location', self.gf('django.db.models.fields.CharField')(max_length=10, blank=True)),
            ('library', self.gf('django.db.models.fields.CharField')(max_length=7, blank=True)),
            ('date_cataloged', self.gf('django.db.models.fields.CharField')(max_length=10, blank=True)),
            ('title_control', self.gf('django.db.models.fields.CharField')(max_length=14, blank=True)),
            ('ohohoh', self.gf('django.db.models.fields.CharField')(max_length=15, blank=True)),
            ('fixed_field', self.gf('django.db.models.fields.CharField')(max_length=40, blank=True)),
            ('personal_author', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=50, blank=True)),
            ('corporate_author', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=100, blank=True)),
            ('meeting_name', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=100, blank=True)),
            ('title', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=572, blank=True)),
            ('publication_info', self.gf('django.db.models.fields.CharField')(max_length=86, blank=True)),
            ('physical_description', self.gf('django.db.models.fields.CharField')(max_length=24, blank=True)),
            ('emory_digitization_note', self.gf('django.db.models.fields.CharField')(max_length=100, blank=True)),
            ('local_note', self.gf('django.db.models.fields.CharField')(max_length=100, blank=True)),
            ('url', self.gf('django.db.models.fields.URLField')(max_length=255, blank=True)),
            ('pub_year', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=4, blank=True)),
            ('call_no', self.gf('django.db.models.fields.CharField')(max_length=14, blank=True)),
            ('date_what', self.gf('django.db.models.fields.CharField')(max_length=8, blank=True)),
            ('oclc', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=50, null=True, blank=True)),
            ('lccn', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=50, null=True, blank=True)),
            ('isbn10', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=10, null=True, blank=True)),
            ('isbn13', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=13, null=True, blank=True)),
            ('issn', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=50, null=True, blank=True)),
            ('ht_rec_num', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=50, null=True, blank=True)),
            ('ol_id', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=50, null=True, blank=True)),
        ))
        db.send_create_signal('repo_checker', ['Record'])

        # Adding model 'HathiTrust_Item'
        db.create_table('repo_checker_hathitrust_item', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('volume_identifier', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=25, blank=True)),
            ('access', self.gf('django.db.models.fields.CharField')(max_length=5, blank=True)),
            ('rights', self.gf('django.db.models.fields.CharField')(max_length=11, blank=True)),
            ('um_rec_num', self.gf('django.db.models.fields.CharField')(max_length=9, blank=True)),
            ('enumcron', self.gf('django.db.models.fields.CharField')(max_length=30, blank=True)),
            ('source', self.gf('django.db.models.fields.CharField')(max_length=3, blank=True)),
            ('source_inst_rec_num', self.gf('django.db.models.fields.CharField')(max_length=15, blank=True)),
            ('oclc', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=16, blank=True)),
            ('isbn', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=255, blank=True)),
            ('issn', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=90, blank=True)),
            ('lccn', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=12, blank=True)),
            ('title', self.gf('django.db.models.fields.TextField')(db_index=True, blank=True)),
            ('imprint', self.gf('django.db.models.fields.TextField')(blank=True)),
            ('rights_reason_code', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=4, blank=True)),
            ('last_updated', self.gf('django.db.models.fields.DateTimeField')(default=datetime.date.today, null=True, blank=True)),
            ('gov_doc', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('pub_date', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=9, blank=True)),
            ('pub_place', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=3, blank=True)),
            ('language', self.gf('django.db.models.fields.CharField')(max_length=3, blank=True)),
            ('bibl_format', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=2, blank=True)),
            ('local_created', self.gf('django.db.models.fields.DateField')(auto_now_add=True, blank=True)),
            ('local_last_modified', self.gf('django.db.models.fields.DateField')(auto_now=True, blank=True)),
        ))
        db.send_create_signal('repo_checker', ['HathiTrust_Item'])


    def backwards(self, orm):
        
        # Deleting model 'Record'
        db.delete_table('repo_checker_record')

        # Deleting model 'HathiTrust_Item'
        db.delete_table('repo_checker_hathitrust_item')


    models = {
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
        'repo_checker.record': {
            'Meta': {'object_name': 'Record'},
            'barcode': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '16', 'blank': 'True'}),
            'call_no': ('django.db.models.fields.CharField', [], {'max_length': '14', 'blank': 'True'}),
            'call_no_expanded': ('django.db.models.fields.CharField', [], {'max_length': '19', 'blank': 'True'}),
            'copy_num': ('django.db.models.fields.CharField', [], {'max_length': '1', 'blank': 'True'}),
            'corporate_author': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '100', 'blank': 'True'}),
            'current_location': ('django.db.models.fields.CharField', [], {'max_length': '10', 'blank': 'True'}),
            'date_cataloged': ('django.db.models.fields.CharField', [], {'max_length': '10', 'blank': 'True'}),
            'date_what': ('django.db.models.fields.CharField', [], {'max_length': '8', 'blank': 'True'}),
            'emory_digitization_note': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'fixed_field': ('django.db.models.fields.CharField', [], {'max_length': '40', 'blank': 'True'}),
            'home_location': ('django.db.models.fields.CharField', [], {'max_length': '10', 'blank': 'True'}),
            'ht_rec_num': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'isbn10': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '10', 'null': 'True', 'blank': 'True'}),
            'isbn13': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '13', 'null': 'True', 'blank': 'True'}),
            'issn': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'item_type': ('django.db.models.fields.CharField', [], {'max_length': '10', 'blank': 'True'}),
            'lccn': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'library': ('django.db.models.fields.CharField', [], {'max_length': '7', 'blank': 'True'}),
            'local_note': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'meeting_name': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '100', 'blank': 'True'}),
            'no_circs': ('django.db.models.fields.CharField', [], {'max_length': '1', 'blank': 'True'}),
            'oclc': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'ohohoh': ('django.db.models.fields.CharField', [], {'max_length': '15', 'blank': 'True'}),
            'ol_id': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'personal_author': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '50', 'blank': 'True'}),
            'physical_description': ('django.db.models.fields.CharField', [], {'max_length': '24', 'blank': 'True'}),
            'pub_year': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '4', 'blank': 'True'}),
            'publication_info': ('django.db.models.fields.CharField', [], {'max_length': '86', 'blank': 'True'}),
            'title': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '572', 'blank': 'True'}),
            'title_control': ('django.db.models.fields.CharField', [], {'max_length': '14', 'blank': 'True'}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '255', 'blank': 'True'})
        }
    }

    complete_apps = ['repo_checker']
