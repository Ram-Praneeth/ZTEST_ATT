@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Test Attachment Consumption'
@Metadata.allowExtensions: true
define root view entity ZC_TEST_ATT
  provider contract transactional_query
  as projection on ZI_TEST_ATT
{
  key Invoice,
  key Uuid,
      Comments,
      Attachment,
      MimeType,
      Filename,
      LocalLastChangedAt
}
