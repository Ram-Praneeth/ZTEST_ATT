@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Test Attachment Interface'
define root view entity ZI_TEST_ATT
  as select from ztest_att1
{
  key invoice               as Invoice,
      comments              as Comments,
      @Semantics.largeObject:
      { mimeType: 'MimeType',
      fileName: 'Filename',
      contentDispositionPreference: #INLINE }
      attachment            as Attachment,
      @Semantics.mimeType: true
      mimetype              as MimeType,
      filename              as Filename,
      //local ETag field --> OData ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      //total ETag field
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt
}
