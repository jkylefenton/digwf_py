from django.db import models
import datetime


class Record(models.Model):
    barcode = models.CharField(max_length=16, null=True, unique=True, db_index=True)
    call_no_expanded = models.CharField(max_length=19, blank=True)
    no_circs = models.CharField(max_length=1, blank=True)   
    item_type = models.CharField(max_length=10, blank=True)
    copy_num = models.CharField(max_length=1, blank=True)
    home_location = models.CharField(max_length=10, blank=True)
    current_location = models.CharField(max_length=10, blank=True)
    library = models.CharField(max_length=9, blank=True)
    date_cataloged = models.CharField(max_length=10, blank=True)
    title_control = models.CharField(max_length=14, blank=True)
    oclc = models.CharField(max_length=11, blank=True) 
    ohohoh = models.CharField(max_length=15, blank=True) 
    fixed_field = models.CharField(max_length=40, blank=True)
    personal_author = models.CharField(max_length=50, blank=True, db_index=True)
    corporate_author = models.CharField(max_length=100, blank=True, db_index=True)
    meeting_name = models.CharField(max_length=100, blank=True, db_index=True)
    title = models.CharField(max_length=572, blank=True, db_index=True)
    publication_info = models.CharField(max_length=86, blank=True)  
    physical_description = models.CharField(max_length=24, blank=True) 
    emory_digitization_note = models.CharField(max_length=100, blank=True)
    local_note = models.CharField(max_length=100, blank=True)
    url = models.URLField(max_length=255, blank=True)     # a url for electronically available items
    pub_year = models.CharField(max_length=4, blank=True, db_index=True)
    call_no = models.CharField(max_length=14, blank=True)  
    date_what = models.CharField(max_length=8, blank=True) 
    oclc = models.CharField(max_length=50, null=True, blank=True, db_index=True)  # OCLC control key, normalized to just digits
    lccn = models.CharField(max_length=50, null=True, blank=True, db_index=True)    # Library of Congress Control Number, normalized per http://www.loc.gov/marc/lccn-namespace.html#syntax
    isbn10 = models.CharField(max_length=10, null=True, blank=True, db_index=True)    # 10 digit International Standard Book Number, normalized to just digits, possibly with trailing X
    isbn13 = models.CharField(max_length=13, null=True, blank=True, db_index=True)    # 13 digit International Standard Book Number, normalized to just digits, possibly with trailing X
    issn = models.CharField(max_length=50, null=True, blank=True, db_index=True)    # International Standard Serial Number, normalized to just digits
    ht_rec_num = models.CharField(max_length=50, null=True, blank=True, db_index=True)    # 9 digit HathiTrust record number
    ol_id = models.CharField(max_length=50, null=True, blank=True, db_index=True)   # Open Library identifier
    oclc_trimmed  = models.CharField(max_length=11, blank=True, null=True, db_index=True)

    unique_together = ('title_control', 'call_no_expanded')

class HathiTrust_Item(models.Model):
    '''Hathifiles fields as described at http://www.hathitrust.org/hathifiles_description'''
    volume_identifier = models.CharField(max_length=25, blank=True, db_index=True) # Fully qualified item identifier
    access = models.CharField(max_length=5, blank=True) # Access code (values: allow or deny) mapped from the rights attribute
    rights = models.CharField(max_length=11, blank=True) # Rights attribute for this volume
    um_rec_num = models.CharField(max_length=9, blank=True) # University of Michigan's record number for the associated bibliographic record
    enumcron = models.CharField(max_length=30, blank=True) # Enumeration and chronology data, if any, for this item
    source = models.CharField(max_length=3, blank=True) # Code identifying the source of the original from which this item was digitized. Currently the NUC code of the originating library is used for the code.
    source_inst_rec_num = models.CharField(max_length=15, blank=True) # Local bibliographic record number for the source institution identified in the source column.
    oclc = models.CharField(max_length=16, blank=True, db_index=True) # OCLC number(s) for the bibliographic record, leading 0's, 'ocm' or 'ocn' stripped. Where more than one number is listed, they are comma-delimited.
    isbn = models.CharField(max_length=255, blank=True, db_index=True) # ISBN(s) for the bibliographic record. Where more than one number is listed, they are comma-delimited.
    issn = models.CharField(max_length=90, blank=True, db_index=True) # ISSN(s) for the bibliographic record. Where more than one number is listed, they are comma-delimited.
    lccn = models.CharField(max_length=12, blank=True, db_index=True) # LCCN(s) for the bibliographic record. Where more than one number is listed, they are comma-delimited.
    title = models.TextField(blank=True, db_index=True) # Contents of the 245 field (all subfields).
    imprint = models.TextField(blank=True) # Contents of the 260 field (subfields b and c).
    rights_reason_code = models.CharField(max_length=4, blank=True, db_index=True) # Rights determination reason code for this volume. 
    last_updated = models.DateTimeField(default=datetime.date.today, null=True, blank=True) # Some volumes may have rights determined more than once
    gov_doc = models.BooleanField(blank=True) # US government document flag
    pub_date = models.CharField(max_length=9, blank=True, db_index=True) # Publication date of the volume
    pub_place = models.CharField(max_length=3, blank=True, db_index=True) # Place of publication: bytes 15-17 from the bibliographic 008 field 
    language = models.CharField(max_length=3, blank=True) # Language: bytes 35-37 from the blbliographic 008 field
    bibl_format = models.CharField(max_length=2, blank=True, db_index=True) # Bibliographic format (BK, SE, CF, MP, MU, VM, or MX)
    local_created = models.DateField(auto_now_add=True) # a local Emory date created field, useful for building OAI-PMH feeds
    local_last_modified = models.DateField(auto_now=True) # a local Emory last modified field, useful for building OAI-PMH feeds

    # class Works(models.Model):
    # '''Lists distinct OCLC numbers, ISBN, ISSN, and/or LCCN of works that are in EU, HT or OL'''
# oclc = models.CharField(max_length=16, blank=True, db_index=True, unique=True) # OCLC number(s) for the bibliographic record, leading 0's, 'ocm' or 'ocn' stripped. Where more than one number is listed, they are comma-delimited.
    #    isbn = models.CharField(max_length=255, blank=True, db_index=True, unique=True) # ISBN(s) for the bibliographic record. Where more than one number is listed, they are comma-delimited.
    #    issn = models.CharField(max_length=90, blank=True, db_index=True, unique=True) # ISSN(s) for the bibliographic record. Where more than one number is listed, they are comma-delimited.
    #    lccn = models.CharField(max_length=12, blank=True, db_index=True, unique=True) # LCCN(s) for the bibliographic record. Where more than one number is listed, they are comma-delimited.