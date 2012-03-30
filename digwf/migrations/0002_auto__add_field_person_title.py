# encoding: utf-8
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

class Migration(SchemaMigration):

    def forwards(self, orm):
        
        # Adding field 'Person.title'
        db.add_column('digwf_person', 'title', self.gf('django.db.models.fields.CharField')(max_length=50, null=True), keep_default=False)


    def backwards(self, orm):
        
        # Deleting field 'Person.title'
        db.delete_column('digwf_person', 'title')


    models = {
        'digwf.agent': {
            'Meta': {'object_name': 'Agent'},
            'address1': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
            'address2': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
            'city': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'phone': ('django.db.models.fields.IntegerField', [], {'max_length': '10', 'null': 'True', 'blank': 'True'}),
            'state': ('django.db.models.fields.CharField', [], {'max_length': '2', 'blank': 'True'}),
            'zip': ('django.db.models.fields.IntegerField', [], {'max_length': '5', 'null': 'True', 'blank': 'True'})
        },
        'digwf.collection': {
            'Meta': {'ordering': "['type', 'coll_id']", 'object_name': 'Collection'},
            'coll_id': ('django.db.models.fields.CharField', [], {'max_length': '15'}),
            'description': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'type': ('django.db.models.fields.CharField', [], {'max_length': '30'}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'})
        },
        'digwf.corporation': {
            'Meta': {'object_name': 'Corporation', '_ormbases': ['digwf.Agent']},
            'agent_ptr': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['digwf.Agent']", 'unique': 'True', 'primary_key': 'True'}),
            'corporate_name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'main_contact': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Person']", 'null': 'True', 'blank': 'True'})
        },
        'digwf.digital_files': {
            'Meta': {'object_name': 'Digital_files'},
            'alto_regex': ('django.db.models.fields.CharField', [], {'default': "'Output/Metadata/ALTO/*_ALTO.xml'", 'max_length': '100', 'blank': 'True'}),
            'base_path': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'dc_regex': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'images_captured_count': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'images_master_regex': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'images_presentation_regex': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'images_raw_regex': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'item_id': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Item']"}),
            'jp2_regex': ('django.db.models.fields.CharField', [], {'default': "'Output/Images/JP2/*.jp2'", 'max_length': '100', 'blank': 'True'}),
            'mets_regex': ('django.db.models.fields.CharField', [], {'default': "'Output/Metadata/*_METS.xml'", 'max_length': '100', 'blank': 'True'}),
            'mods_regex': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'mrc_regex': ('django.db.models.fields.CharField', [], {'default': "'*_MRC.xml'", 'max_length': '100', 'blank': 'True'}),
            'ocr_regex': ('django.db.models.fields.CharField', [], {'default': "'Output/XML/*.xml'", 'max_length': '100', 'blank': 'True'}),
            'pdf_regex': ('django.db.models.fields.CharField', [], {'default': "'Output/PDF/*.pdf'", 'max_length': '100', 'blank': 'True'}),
            'pdfa_regex': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'pos_regex': ('django.db.models.fields.CharField', [], {'default': "'Output/OCR/*.pos'", 'max_length': '100', 'blank': 'True'}),
            'txt_regex': ('django.db.models.fields.CharField', [], {'default': "'Output/OCR/*.txt'", 'max_length': '100', 'blank': 'True'})
        },
        'digwf.error_code': {
            'Meta': {'object_name': 'Error_Code'},
            'code': ('django.db.models.fields.CharField', [], {'max_length': '5'}),
            'description': ('django.db.models.fields.CharField', [], {'max_length': '30'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        'digwf.item': {
            'Meta': {'ordering': "['item_title']", 'object_name': 'Item'},
            'barcode': ('django.db.models.fields.CharField', [], {'max_length': '20', 'blank': 'True'}),
            'bit_depth': ('django.db.models.fields.CharField', [], {'default': "'8'", 'max_length': '2'}),
            'collection_id': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Collection']", 'null': 'True', 'blank': 'True'}),
            'created_at': ('django.db.models.fields.DateField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'digital_masters_id': ('django.db.models.fields.IntegerField', [], {'max_length': '5', 'blank': 'True'}),
            'dpi': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'due_date': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'enumcron': ('django.db.models.fields.CharField', [], {'max_length': '20', 'blank': 'True'}),
            'foldout_count': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'has_binding': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'has_rights': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Rights']"}),
            'has_typeset_text': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_brittle': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_digitized': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_paginated': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_resource_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Resource_Type']"}),
            'is_rush': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_serial': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'isbn': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
            'issn': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
            'item_title': ('django.db.models.fields.CharField', [], {'max_length': '200'}),
            'lccn': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
            'metadata': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['digwf.Metadata_Term']", 'through': "orm['digwf.Metadata']", 'symmetrical': 'False'}),
            'note': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'notification_email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'oclc': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
            'order_id': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Order']"}),
            'other_id': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'owner_originals': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'pid': ('django.db.models.fields.CharField', [], {'max_length': '10', 'blank': 'True'}),
            'pub_place': ('django.db.models.fields.CharField', [], {'max_length': '10', 'blank': 'True'}),
            'pub_state': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Publication_State']"}),
            'pub_year': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'rejection_code': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Rejection_Code']", 'null': 'True', 'blank': 'True'}),
            'time_spent': ('django.db.models.fields.TimeField', [], {'blank': 'True'}),
            'to_archive': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'updated_at': ('django.db.models.fields.DateField', [], {'auto_now': 'True', 'blank': 'True'}),
            'user': ('django.db.models.fields.CharField', [], {'max_length': '15'}),
            'workflow_step': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Workflow_Step']"})
        },
        'digwf.metadata': {
            'Meta': {'object_name': 'Metadata'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'item': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'for_item'", 'to': "orm['digwf.Item']"}),
            'term': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Metadata_Term']"}),
            'value': ('django.db.models.fields.CharField', [], {'max_length': '510'})
        },
        'digwf.metadata_term': {
            'Meta': {'ordering': "('label',)", 'object_name': 'Metadata_Term'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'label': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '255'})
        },
        'digwf.order': {
            'Meta': {'ordering': "['-is_rush', '-date_order_due', '-id']", 'object_name': 'Order'},
            'archive_surrogates': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'copyright_end_user_rights': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'copyright_owner': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'copyright_permission_statement': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'copyright_permission_terms': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'customer_id': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'customer'", 'to': "orm['digwf.Agent']"}),
            'customer_notes': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'date_order_approved': ('django.db.models.fields.DateField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'date_order_completed': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'date_order_due': ('django.db.models.fields.DateField', [], {}),
            'date_originals_received': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'date_originals_returned': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'default_collection': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Collection']", 'null': 'True', 'blank': 'True'}),
            'delivery_method': ('django.db.models.fields.CharField', [], {'max_length': '25', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_rush': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'order_title': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'order_type': ('django.db.models.fields.CharField', [], {'max_length': '25'}),
            'originals_received_by': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'originals_returned_to': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'owner_originals': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'processing_notes': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'release_on_file': ('django.db.models.fields.BooleanField', [], {'default': 'False'})
        },
        'digwf.person': {
            'Meta': {'object_name': 'Person', '_ormbases': ['digwf.Agent']},
            'agent_ptr': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['digwf.Agent']", 'unique': 'True', 'primary_key': 'True'}),
            'person_first_name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'person_last_name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True'})
        },
        'digwf.publication_state': {
            'Meta': {'object_name': 'Publication_State'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'status': ('django.db.models.fields.CharField', [], {'max_length': '15'})
        },
        'digwf.rejection_code': {
            'Meta': {'ordering': "['code']", 'object_name': 'Rejection_Code'},
            'code': ('django.db.models.fields.CharField', [], {'max_length': '5'}),
            'description': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        'digwf.resource_type': {
            'Meta': {'ordering': "['type']", 'object_name': 'Resource_Type'},
            'broad_type': ('django.db.models.fields.CharField', [], {'max_length': '25'}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'type': ('django.db.models.fields.CharField', [], {'max_length': '25'})
        },
        'digwf.rights': {
            'Meta': {'object_name': 'Rights'},
            'description': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'status': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        'digwf.workflow_step': {
            'Meta': {'object_name': 'Workflow_Step'},
            'code': ('django.db.models.fields.CharField', [], {'max_length': '10'}),
            'description': ('django.db.models.fields.CharField', [], {'max_length': '30'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        }
    }

    complete_apps = ['digwf']
