# encoding: utf-8
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

class Migration(SchemaMigration):

    def forwards(self, orm):
        
        # Adding model 'Collection'
        db.create_table('digwf_collection', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('collection_short_name', self.gf('django.db.models.fields.CharField')(max_length=15, blank=True)),
            ('collection_description', self.gf('django.db.models.fields.CharField')(max_length=255, null=True, blank=True)),
            ('collection_url', self.gf('django.db.models.fields.URLField')(max_length=200, null=True, blank=True)),
            ('parent_collection', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.Collection'], null=True, blank=True)),
        ))
        db.send_create_signal('digwf', ['Collection'])

        # Adding model 'Publication_State'
        db.create_table('digwf_publication_state', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('status', self.gf('django.db.models.fields.CharField')(max_length=15)),
        ))
        db.send_create_signal('digwf', ['Publication_State'])

        # Adding model 'Rejection_Code'
        db.create_table('digwf_rejection_code', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('code', self.gf('django.db.models.fields.CharField')(max_length=5)),
            ('description', self.gf('django.db.models.fields.CharField')(max_length=50)),
        ))
        db.send_create_signal('digwf', ['Rejection_Code'])

        # Adding model 'Agent'
        db.create_table('digwf_agent', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('address1', self.gf('django.db.models.fields.CharField')(max_length=50, blank=True)),
            ('address2', self.gf('django.db.models.fields.CharField')(max_length=50, blank=True)),
            ('city', self.gf('django.db.models.fields.CharField')(max_length=30, blank=True)),
            ('state', self.gf('django.contrib.localflavor.us.models.USStateField')(max_length=2, blank=True)),
            ('zip', self.gf('django.db.models.fields.IntegerField')(max_length=5, null=True, blank=True)),
            ('phone', self.gf('django.contrib.localflavor.us.models.PhoneNumberField')(max_length=20, null=True, blank=True)),
            ('email', self.gf('django.db.models.fields.EmailField')(max_length=75, blank=True)),
        ))
        db.send_create_signal('digwf', ['Agent'])

        # Adding model 'Person'
        db.create_table('digwf_person', (
            ('agent_ptr', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['digwf.Agent'], unique=True, primary_key=True)),
            ('person_last_name', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('person_first_name', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True)),
        ))
        db.send_create_signal('digwf', ['Person'])

        # Adding model 'Organization'
        db.create_table('digwf_organization', (
            ('agent_ptr', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['digwf.Agent'], unique=True, primary_key=True)),
            ('organization_name', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('organization_short_name', self.gf('django.db.models.fields.CharField')(max_length=15, null=True, blank=True)),
            ('main_contact', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.Person'], null=True, blank=True)),
        ))
        db.send_create_signal('digwf', ['Organization'])

        # Adding model 'Resource_Type'
        db.create_table('digwf_resource_type', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('type', self.gf('django.db.models.fields.CharField')(max_length=25)),
            ('description', self.gf('django.db.models.fields.TextField')(blank=True)),
        ))
        db.send_create_signal('digwf', ['Resource_Type'])

        # Adding model 'Rights'
        db.create_table('digwf_rights', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('status', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('description', self.gf('django.db.models.fields.TextField')()),
        ))
        db.send_create_signal('digwf', ['Rights'])

        # Adding model 'Metadata_Term'
        db.create_table('digwf_metadata_term', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('label', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('documentation_url', self.gf('django.db.models.fields.URLField')(max_length=2083, null=True, blank=True)),
        ))
        db.send_create_signal('digwf', ['Metadata_Term'])

        # Adding model 'ItemIdentifierType'
        db.create_table('digwf_itemidentifiertype', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('label', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('documentation_url', self.gf('django.db.models.fields.URLField')(max_length=2083, null=True, blank=True)),
        ))
        db.send_create_signal('digwf', ['ItemIdentifierType'])

        # Adding model 'DigitalComponentType'
        db.create_table('digwf_digitalcomponenttype', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('label', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('default_regex', self.gf('django.db.models.fields.CharField')(max_length=510, null=True, blank=True)),
            ('documentation_url', self.gf('django.db.models.fields.URLField')(max_length=2083, null=True, blank=True)),
        ))
        db.send_create_signal('digwf', ['DigitalComponentType'])

        # Adding model 'Item'
        db.create_table('digwf_item', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=200)),
            ('collection_id', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.Collection'], null=True, blank=True)),
            ('enumcron', self.gf('django.db.models.fields.CharField')(max_length=20, blank=True)),
            ('foldout_count', self.gf('django.db.models.fields.IntegerField')(null=True, blank=True)),
            ('created_at', self.gf('django.db.models.fields.DateField')(auto_now_add=True, blank=True)),
            ('updated_at', self.gf('django.db.models.fields.DateField')(auto_now=True, blank=True)),
            ('is_rush', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('notification_email', self.gf('django.db.models.fields.EmailField')(max_length=75, blank=True)),
            ('due_date', self.gf('django.db.models.fields.DateField')(null=True, blank=True)),
            ('is_brittle', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('is_already_digitized', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('is_paginated', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('has_binding', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('is_serial', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('to_archive', self.gf('django.db.models.fields.BooleanField')(default=True)),
            ('is_resource_type', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.Resource_Type'])),
            ('has_rights', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.Rights'], null=True, blank=True)),
            ('pub_state', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.Publication_State'], null=True, blank=True)),
            ('pub_place', self.gf('django.db.models.fields.CharField')(max_length=10, blank=True)),
            ('pub_year', self.gf('django.db.models.fields.DateField')(null=True, blank=True)),
            ('has_typeset_text', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('note', self.gf('django.db.models.fields.TextField')(blank=True)),
            ('rejection_code', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.Rejection_Code'], null=True, blank=True)),
            ('time_spent', self.gf('django.db.models.fields.TimeField')(null=True, blank=True)),
            ('owner_originals', self.gf('django.db.models.fields.CharField')(max_length=30, blank=True)),
        ))
        db.send_create_signal('digwf', ['Item'])

        # Adding M2M table for field children on 'Item'
        db.create_table('digwf_item_children', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('from_item', models.ForeignKey(orm['digwf.item'], null=False)),
            ('to_item', models.ForeignKey(orm['digwf.item'], null=False))
        ))
        db.create_unique('digwf_item_children', ['from_item_id', 'to_item_id'])

        # Adding model 'DigitalItem'
        db.create_table('digwf_digitalitem', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('associated_physical_item', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.Item'])),
            ('dpi', self.gf('django.db.models.fields.IntegerField')(null=True, blank=True)),
            ('bit_depth', self.gf('django.db.models.fields.CharField')(default='8', max_length=2)),
            ('base_path', self.gf('django.db.models.fields.CharField')(max_length=100, blank=True)),
            ('images_captured_count', self.gf('django.db.models.fields.IntegerField')(null=True, blank=True)),
        ))
        db.send_create_signal('digwf', ['DigitalItem'])

        # Adding model 'Order'
        db.create_table('digwf_order', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('order_type', self.gf('django.db.models.fields.CharField')(max_length=25)),
            ('order_title', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('date_order_due', self.gf('django.db.models.fields.DateField')(null=True, blank=True)),
            ('date_order_approved', self.gf('django.db.models.fields.DateField')(auto_now_add=True, blank=True)),
            ('date_order_completed', self.gf('django.db.models.fields.DateField')(null=True, blank=True)),
            ('date_originals_received', self.gf('django.db.models.fields.DateField')(null=True, blank=True)),
            ('date_originals_returned', self.gf('django.db.models.fields.DateField')(null=True, blank=True)),
            ('originals_received_by', self.gf('django.db.models.fields.CharField')(max_length=30, blank=True)),
            ('originals_returned_to', self.gf('django.db.models.fields.CharField')(max_length=30, blank=True)),
            ('is_rush', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('delivery_method', self.gf('django.db.models.fields.CharField')(max_length=25, blank=True)),
            ('customer_notes', self.gf('django.db.models.fields.TextField')(blank=True)),
            ('processing_notes', self.gf('django.db.models.fields.TextField')(blank=True)),
            ('archive_surrogates', self.gf('django.db.models.fields.BooleanField')(default=True)),
            ('owner_originals', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('release_on_file', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('default_collection', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.Collection'], null=True, blank=True)),
            ('copyright_owner', self.gf('django.db.models.fields.CharField')(max_length=100, blank=True)),
            ('copyright_permission_statement', self.gf('django.db.models.fields.CharField')(max_length=255, blank=True)),
            ('copyright_permission_terms', self.gf('django.db.models.fields.CharField')(max_length=255, blank=True)),
            ('copyright_end_user_rights', self.gf('django.db.models.fields.CharField')(max_length=255, blank=True)),
        ))
        db.send_create_signal('digwf', ['Order'])

        # Adding model 'OrderItem'
        db.create_table('digwf_orderitem', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('order', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.Order'])),
            ('item', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.Item'])),
            ('date_added', self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now)),
        ))
        db.send_create_signal('digwf', ['OrderItem'])

        # Adding model 'Metadata'
        db.create_table('digwf_metadata', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('item', self.gf('django.db.models.fields.related.ForeignKey')(related_name='for_item', to=orm['digwf.DigitalItem'])),
            ('term', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.Metadata_Term'])),
            ('value', self.gf('django.db.models.fields.CharField')(max_length=510)),
        ))
        db.send_create_signal('digwf', ['Metadata'])

        # Adding model 'ItemIdentifier'
        db.create_table('digwf_itemidentifier', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('item', self.gf('django.db.models.fields.related.ForeignKey')(related_name='id_for_item', to=orm['digwf.Item'])),
            ('type', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.ItemIdentifierType'])),
            ('value', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal('digwf', ['ItemIdentifier'])

        # Adding model 'DigitalComponent'
        db.create_table('digwf_digitalcomponent', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('digital_item', self.gf('django.db.models.fields.related.ForeignKey')(related_name='component_of_digital', to=orm['digwf.DigitalItem'])),
            ('type', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['digwf.DigitalComponentType'])),
            ('regex', self.gf('django.db.models.fields.CharField')(max_length=510)),
        ))
        db.send_create_signal('digwf', ['DigitalComponent'])

        # Adding model 'Error_Code'
        db.create_table('digwf_error_code', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('code', self.gf('django.db.models.fields.CharField')(max_length=5)),
            ('description', self.gf('django.db.models.fields.CharField')(max_length=30)),
        ))
        db.send_create_signal('digwf', ['Error_Code'])


    def backwards(self, orm):
        
        # Deleting model 'Collection'
        db.delete_table('digwf_collection')

        # Deleting model 'Publication_State'
        db.delete_table('digwf_publication_state')

        # Deleting model 'Rejection_Code'
        db.delete_table('digwf_rejection_code')

        # Deleting model 'Agent'
        db.delete_table('digwf_agent')

        # Deleting model 'Person'
        db.delete_table('digwf_person')

        # Deleting model 'Organization'
        db.delete_table('digwf_organization')

        # Deleting model 'Resource_Type'
        db.delete_table('digwf_resource_type')

        # Deleting model 'Rights'
        db.delete_table('digwf_rights')

        # Deleting model 'Metadata_Term'
        db.delete_table('digwf_metadata_term')

        # Deleting model 'ItemIdentifierType'
        db.delete_table('digwf_itemidentifiertype')

        # Deleting model 'DigitalComponentType'
        db.delete_table('digwf_digitalcomponenttype')

        # Deleting model 'Item'
        db.delete_table('digwf_item')

        # Removing M2M table for field children on 'Item'
        db.delete_table('digwf_item_children')

        # Deleting model 'DigitalItem'
        db.delete_table('digwf_digitalitem')

        # Deleting model 'Order'
        db.delete_table('digwf_order')

        # Deleting model 'OrderItem'
        db.delete_table('digwf_orderitem')

        # Deleting model 'Metadata'
        db.delete_table('digwf_metadata')

        # Deleting model 'ItemIdentifier'
        db.delete_table('digwf_itemidentifier')

        # Deleting model 'DigitalComponent'
        db.delete_table('digwf_digitalcomponent')

        # Deleting model 'Error_Code'
        db.delete_table('digwf_error_code')


    models = {
        'digwf.agent': {
            'Meta': {'object_name': 'Agent'},
            'address1': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
            'address2': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
            'city': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'phone': ('django.contrib.localflavor.us.models.PhoneNumberField', [], {'max_length': '20', 'null': 'True', 'blank': 'True'}),
            'state': ('django.contrib.localflavor.us.models.USStateField', [], {'max_length': '2', 'blank': 'True'}),
            'zip': ('django.db.models.fields.IntegerField', [], {'max_length': '5', 'null': 'True', 'blank': 'True'})
        },
        'digwf.collection': {
            'Meta': {'ordering': "['collection_short_name', 'collection_description']", 'object_name': 'Collection'},
            'collection_description': ('django.db.models.fields.CharField', [], {'max_length': '255', 'null': 'True', 'blank': 'True'}),
            'collection_short_name': ('django.db.models.fields.CharField', [], {'max_length': '15', 'blank': 'True'}),
            'collection_url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'parent_collection': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Collection']", 'null': 'True', 'blank': 'True'})
        },
        'digwf.digitalcomponent': {
            'Meta': {'object_name': 'DigitalComponent'},
            'digital_item': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'component_of_digital'", 'to': "orm['digwf.DigitalItem']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'regex': ('django.db.models.fields.CharField', [], {'max_length': '510'}),
            'type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.DigitalComponentType']"})
        },
        'digwf.digitalcomponenttype': {
            'Meta': {'ordering': "('label',)", 'object_name': 'DigitalComponentType'},
            'default_regex': ('django.db.models.fields.CharField', [], {'max_length': '510', 'null': 'True', 'blank': 'True'}),
            'documentation_url': ('django.db.models.fields.URLField', [], {'max_length': '2083', 'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'label': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '255'})
        },
        'digwf.digitalitem': {
            'Meta': {'object_name': 'DigitalItem'},
            'associated_physical_item': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Item']"}),
            'base_path': ('django.db.models.fields.CharField', [], {'max_length': '100', 'blank': 'True'}),
            'bit_depth': ('django.db.models.fields.CharField', [], {'default': "'8'", 'max_length': '2'}),
            'dpi': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'images_captured_count': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'})
        },
        'digwf.error_code': {
            'Meta': {'object_name': 'Error_Code'},
            'code': ('django.db.models.fields.CharField', [], {'max_length': '5'}),
            'description': ('django.db.models.fields.CharField', [], {'max_length': '30'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        'digwf.item': {
            'Meta': {'ordering': "['title']", 'object_name': 'Item'},
            'children': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'parents'", 'symmetrical': 'False', 'to': "orm['digwf.Item']"}),
            'collection_id': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Collection']", 'null': 'True', 'blank': 'True'}),
            'created_at': ('django.db.models.fields.DateField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'due_date': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'enumcron': ('django.db.models.fields.CharField', [], {'max_length': '20', 'blank': 'True'}),
            'foldout_count': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'has_binding': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'has_rights': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Rights']", 'null': 'True', 'blank': 'True'}),
            'has_typeset_text': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_already_digitized': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_brittle': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_paginated': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_resource_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Resource_Type']"}),
            'is_rush': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_serial': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'note': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'notification_email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'owner_originals': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'pub_place': ('django.db.models.fields.CharField', [], {'max_length': '10', 'blank': 'True'}),
            'pub_state': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Publication_State']", 'null': 'True', 'blank': 'True'}),
            'pub_year': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'rejection_code': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Rejection_Code']", 'null': 'True', 'blank': 'True'}),
            'time_spent': ('django.db.models.fields.TimeField', [], {'null': 'True', 'blank': 'True'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '200'}),
            'to_archive': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'updated_at': ('django.db.models.fields.DateField', [], {'auto_now': 'True', 'blank': 'True'})
        },
        'digwf.itemidentifier': {
            'Meta': {'object_name': 'ItemIdentifier'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'item': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'id_for_item'", 'to': "orm['digwf.Item']"}),
            'type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.ItemIdentifierType']"}),
            'value': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        'digwf.itemidentifiertype': {
            'Meta': {'ordering': "('label',)", 'object_name': 'ItemIdentifierType'},
            'documentation_url': ('django.db.models.fields.URLField', [], {'max_length': '2083', 'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'label': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '255'})
        },
        'digwf.metadata': {
            'Meta': {'object_name': 'Metadata'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'item': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'for_item'", 'to': "orm['digwf.DigitalItem']"}),
            'term': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Metadata_Term']"}),
            'value': ('django.db.models.fields.CharField', [], {'max_length': '510'})
        },
        'digwf.metadata_term': {
            'Meta': {'ordering': "('label',)", 'object_name': 'Metadata_Term'},
            'documentation_url': ('django.db.models.fields.URLField', [], {'max_length': '2083', 'null': 'True', 'blank': 'True'}),
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
            'customer_notes': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'date_order_approved': ('django.db.models.fields.DateField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'date_order_completed': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'date_order_due': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'date_originals_received': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'date_originals_returned': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'default_collection': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Collection']", 'null': 'True', 'blank': 'True'}),
            'delivery_method': ('django.db.models.fields.CharField', [], {'max_length': '25', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_rush': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'items': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['digwf.Item']", 'through': "orm['digwf.OrderItem']", 'symmetrical': 'False'}),
            'order_title': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'order_type': ('django.db.models.fields.CharField', [], {'max_length': '25'}),
            'originals_received_by': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'originals_returned_to': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'owner_originals': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'processing_notes': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'release_on_file': ('django.db.models.fields.BooleanField', [], {'default': 'False'})
        },
        'digwf.orderitem': {
            'Meta': {'object_name': 'OrderItem'},
            'date_added': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'item': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Item']"}),
            'order': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Order']"})
        },
        'digwf.organization': {
            'Meta': {'object_name': 'Organization', '_ormbases': ['digwf.Agent']},
            'agent_ptr': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['digwf.Agent']", 'unique': 'True', 'primary_key': 'True'}),
            'main_contact': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['digwf.Person']", 'null': 'True', 'blank': 'True'}),
            'organization_name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'organization_short_name': ('django.db.models.fields.CharField', [], {'max_length': '15', 'null': 'True', 'blank': 'True'})
        },
        'digwf.person': {
            'Meta': {'object_name': 'Person', '_ormbases': ['digwf.Agent']},
            'agent_ptr': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['digwf.Agent']", 'unique': 'True', 'primary_key': 'True'}),
            'person_first_name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'person_last_name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True', 'blank': 'True'})
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
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'type': ('django.db.models.fields.CharField', [], {'max_length': '25'})
        },
        'digwf.rights': {
            'Meta': {'object_name': 'Rights'},
            'description': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'status': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        }
    }

    complete_apps = ['digwf']
