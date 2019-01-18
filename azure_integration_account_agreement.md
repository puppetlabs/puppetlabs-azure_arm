Document: "logic"


Path: "/tmp/azure-rest-api-specs/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json")

## IntegrationAccountAgreement

The integration account agreement.

```puppet
azure_integration_account_agreement {
  agreement => "agreement",
  agreement_name => "agreement_name",
  api_version => "api_version",
  integration_account_name => "integration_account_name",
  location => "location (optional)",
  properties => $azure_integration_account_agreement_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|agreement | Hash | true | The integration account agreement. |
|agreement_name | String | true | The integration account agreement name. |
|api_version | String | true | The API version. |
|integration_account_name | String | true | The integration account name. |
|location | String | false | The resource location. |
|properties | [IntegrationAccountAgreementProperties](#integrationaccountagreementproperties) | true | The integration account agreement properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription id. |
|tags | Hash | false | The resource tags. |
        
## IntegrationAccountAgreementProperties

The integration account agreement properties.

```puppet
$azure_integration_account_agreement_properties = {
  agreementType => $azure_agreement_type
  content => $azure_agreement_content
  guestIdentity => $azure_business_identity
  guestPartner => "guestPartner",
  hostIdentity => $azure_business_identity
  hostPartner => "hostPartner",
  metadata => "metadata (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|agreementType | [AgreementType](#agreementtype) | true | The agreement type. |
|content | [AgreementContent](#agreementcontent) | true | The agreement content. |
|guestIdentity | [BusinessIdentity](#businessidentity) | true | The business identity of the guest partner. |
|guestPartner | String | true | The integration account partner that is set as guest partner for this agreement. |
|hostIdentity | [BusinessIdentity](#businessidentity) | true | The business identity of the host partner. |
|hostPartner | String | true | The integration account partner that is set as host partner for this agreement. |
|metadata | Hash | false | The metadata. |
        
## AgreementType



```puppet
$azure_agreement_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## AgreementContent

The integration account agreement content.

```puppet
$azure_agreement_content = {
  aS2 => $azure_as2_agreement_content
  edifact => $azure_edifact_agreement_content
  x12 => $azure_x12_agreement_content
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|aS2 | [AS2AgreementContent](#as2agreementcontent) | false | The AS2 agreement content. |
|edifact | [EdifactAgreementContent](#edifactagreementcontent) | false | The EDIFACT agreement content. |
|x12 | [X12AgreementContent](#x12agreementcontent) | false | The X12 agreement content. |
        
## AS2AgreementContent

The integration account AS2 agreement content.

```puppet
$azure_as2_agreement_content = {
  receiveAgreement => $azure_as2_one_way_agreement
  sendAgreement => $azure_as2_one_way_agreement
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|receiveAgreement | [AS2OneWayAgreement](#as2onewayagreement) | true | The AS2 one-way receive agreement. |
|sendAgreement | [AS2OneWayAgreement](#as2onewayagreement) | true | The AS2 one-way send agreement. |
        
## AS2OneWayAgreement

The integration account AS2 one-way agreement.

```puppet
$azure_as2_one_way_agreement = {
  protocolSettings => $azure_as2_protocol_settings
  receiverBusinessIdentity => $azure_business_identity
  senderBusinessIdentity => $azure_business_identity
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|protocolSettings | [AS2ProtocolSettings](#as2protocolsettings) | true | The AS2 protocol settings. |
|receiverBusinessIdentity | [BusinessIdentity](#businessidentity) | true | The receiver business identity |
|senderBusinessIdentity | [BusinessIdentity](#businessidentity) | true | The sender business identity |
        
## AS2ProtocolSettings

The AS2 agreement protocol settings.

```puppet
$azure_as2_protocol_settings = {
  acknowledgementConnectionSettings => $azure_as2_acknowledgement_connection_settings
  envelopeSettings => $azure_as2_envelope_settings
  errorSettings => $azure_as2_error_settings
  mdnSettings => $azure_as2_mdn_settings
  messageConnectionSettings => $azure_as2_message_connection_settings
  securitySettings => $azure_as2_security_settings
  validationSettings => $azure_as2_validation_settings
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|acknowledgementConnectionSettings | [AS2AcknowledgementConnectionSettings](#as2acknowledgementconnectionsettings) | true | The acknowledgement connection settings. |
|envelopeSettings | [AS2EnvelopeSettings](#as2envelopesettings) | true | The envelope settings. |
|errorSettings | [AS2ErrorSettings](#as2errorsettings) | true | The error settings. |
|mdnSettings | [AS2MdnSettings](#as2mdnsettings) | true | The MDN settings. |
|messageConnectionSettings | [AS2MessageConnectionSettings](#as2messageconnectionsettings) | true | The message connection settings. |
|securitySettings | [AS2SecuritySettings](#as2securitysettings) | true | The security settings. |
|validationSettings | [AS2ValidationSettings](#as2validationsettings) | true | The validation settings. |
        
## AS2AcknowledgementConnectionSettings

The AS2 agreement acknowledgement connection settings.

```puppet
$azure_as2_acknowledgement_connection_settings = {
  ignoreCertificateNameMismatch => "ignoreCertificateNameMismatch",
  keepHttpConnectionAlive => "keepHttpConnectionAlive",
  supportHttpStatusCodeContinue => "supportHttpStatusCodeContinue",
  unfoldHttpHeaders => "unfoldHttpHeaders",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ignoreCertificateNameMismatch | Boolean | true | The value indicating whether to ignore mismatch in certificate name. |
|keepHttpConnectionAlive | Boolean | true | The value indicating whether to keep the connection alive. |
|supportHttpStatusCodeContinue | Boolean | true | The value indicating whether to support HTTP status code 'CONTINUE'. |
|unfoldHttpHeaders | Boolean | true | The value indicating whether to unfold the HTTP headers. |
        
## AS2EnvelopeSettings

The AS2 agreement envelope settings.

```puppet
$azure_as2_envelope_settings = {
  autogenerateFileName => "autogenerateFileName",
  fileNameTemplate => "fileNameTemplate",
  messageContentType => "messageContentType",
  suspendMessageOnFileNameGenerationError => "suspendMessageOnFileNameGenerationError",
  transmitFileNameInMimeHeader => "transmitFileNameInMimeHeader",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autogenerateFileName | Boolean | true | The value indicating whether to auto generate file name. |
|fileNameTemplate | String | true | The template for file name. |
|messageContentType | String | true | The message content type. |
|suspendMessageOnFileNameGenerationError | Boolean | true | The value indicating whether to suspend message on file name generation error. |
|transmitFileNameInMimeHeader | Boolean | true | The value indicating whether to transmit file name in mime header. |
        
## AS2ErrorSettings

The AS2 agreement error settings.

```puppet
$azure_as2_error_settings = {
  resendIfMdnNotReceived => "resendIfMdnNotReceived",
  suspendDuplicateMessage => "suspendDuplicateMessage",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|resendIfMdnNotReceived | Boolean | true | The value indicating whether to resend message If MDN is not received. |
|suspendDuplicateMessage | Boolean | true | The value indicating whether to suspend duplicate message. |
        
## AS2MdnSettings

The AS2 agreement mdn settings.

```puppet
$azure_as2_mdn_settings = {
  dispositionNotificationTo => "dispositionNotificationTo (optional)",
  mdnText => "mdnText (optional)",
  micHashingAlgorithm => $azure_hashing_algorithm
  needMdn => "needMdn",
  receiptDeliveryUrl => "receiptDeliveryUrl (optional)",
  sendInboundMdnToMessageBox => "sendInboundMdnToMessageBox",
  sendMdnAsynchronously => "sendMdnAsynchronously",
  signMdn => "signMdn",
  signOutboundMdnIfOptional => "signOutboundMdnIfOptional",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dispositionNotificationTo | String | false | The disposition notification to header value. |
|mdnText | String | false | The MDN text. |
|micHashingAlgorithm | [HashingAlgorithm](#hashingalgorithm) | true | The signing or hashing algorithm. |
|needMdn | Boolean | true | The value indicating whether to send or request a MDN. |
|receiptDeliveryUrl | String | false | The receipt delivery URL. |
|sendInboundMdnToMessageBox | Boolean | true | The value indicating whether to send inbound MDN to message box. |
|sendMdnAsynchronously | Boolean | true | The value indicating whether to send the asynchronous MDN. |
|signMdn | Boolean | true | The value indicating whether the MDN needs to be signed or not. |
|signOutboundMdnIfOptional | Boolean | true | The value indicating whether to sign the outbound MDN if optional. |
        
## HashingAlgorithm



```puppet
$azure_hashing_algorithm = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## AS2MessageConnectionSettings

The AS2 agreement message connection settings.

```puppet
$azure_as2_message_connection_settings = {
  ignoreCertificateNameMismatch => "ignoreCertificateNameMismatch",
  keepHttpConnectionAlive => "keepHttpConnectionAlive",
  supportHttpStatusCodeContinue => "supportHttpStatusCodeContinue",
  unfoldHttpHeaders => "unfoldHttpHeaders",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ignoreCertificateNameMismatch | Boolean | true | The value indicating whether to ignore mismatch in certificate name. |
|keepHttpConnectionAlive | Boolean | true | The value indicating whether to keep the connection alive. |
|supportHttpStatusCodeContinue | Boolean | true | The value indicating whether to support HTTP status code 'CONTINUE'. |
|unfoldHttpHeaders | Boolean | true | The value indicating whether to unfold the HTTP headers. |
        
## AS2SecuritySettings

The AS2 agreement security settings.

```puppet
$azure_as2_security_settings = {
  enableNrrForInboundDecodedMessages => "enableNrrForInboundDecodedMessages",
  enableNrrForInboundEncodedMessages => "enableNrrForInboundEncodedMessages",
  enableNrrForInboundMdn => "enableNrrForInboundMdn",
  enableNrrForOutboundDecodedMessages => "enableNrrForOutboundDecodedMessages",
  enableNrrForOutboundEncodedMessages => "enableNrrForOutboundEncodedMessages",
  enableNrrForOutboundMdn => "enableNrrForOutboundMdn",
  encryptionCertificateName => "encryptionCertificateName (optional)",
  overrideGroupSigningCertificate => "overrideGroupSigningCertificate",
  sha2AlgorithmFormat => "sha2AlgorithmFormat (optional)",
  signingCertificateName => "signingCertificateName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|enableNrrForInboundDecodedMessages | Boolean | true | The value indicating whether to enable NRR for inbound decoded messages. |
|enableNrrForInboundEncodedMessages | Boolean | true | The value indicating whether to enable NRR for inbound encoded messages. |
|enableNrrForInboundMdn | Boolean | true | The value indicating whether to enable NRR for inbound MDN. |
|enableNrrForOutboundDecodedMessages | Boolean | true | The value indicating whether to enable NRR for outbound decoded messages. |
|enableNrrForOutboundEncodedMessages | Boolean | true | The value indicating whether to enable NRR for outbound encoded messages. |
|enableNrrForOutboundMdn | Boolean | true | The value indicating whether to enable NRR for outbound MDN. |
|encryptionCertificateName | String | false | The name of the encryption certificate. |
|overrideGroupSigningCertificate | Boolean | true | The value indicating whether to send or request a MDN. |
|sha2AlgorithmFormat | String | false | The Sha2 algorithm format. Valid values are Sha2, ShaHashSize, ShaHyphenHashSize, Sha2UnderscoreHashSize. |
|signingCertificateName | String | false | The name of the signing certificate. |
        
## AS2ValidationSettings

The AS2 agreement validation settings.

```puppet
$azure_as2_validation_settings = {
  checkCertificateRevocationListOnReceive => "checkCertificateRevocationListOnReceive",
  checkCertificateRevocationListOnSend => "checkCertificateRevocationListOnSend",
  checkDuplicateMessage => "checkDuplicateMessage",
  compressMessage => "compressMessage",
  encryptionAlgorithm => $azure_encryption_algorithm
  encryptMessage => "encryptMessage",
  interchangeDuplicatesValidityDays => "1234",
  overrideMessageProperties => "overrideMessageProperties",
  signingAlgorithm => $azure_signing_algorithm
  signMessage => "signMessage",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|checkCertificateRevocationListOnReceive | Boolean | true | The value indicating whether to check for certificate revocation list on receive. |
|checkCertificateRevocationListOnSend | Boolean | true | The value indicating whether to check for certificate revocation list on send. |
|checkDuplicateMessage | Boolean | true | The value indicating whether to check for duplicate message. |
|compressMessage | Boolean | true | The value indicating whether the message has to be compressed. |
|encryptionAlgorithm | [EncryptionAlgorithm](#encryptionalgorithm) | true | The encryption algorithm. |
|encryptMessage | Boolean | true | The value indicating whether the message has to be encrypted. |
|interchangeDuplicatesValidityDays | Integer | true | The number of days to look back for duplicate interchange. |
|overrideMessageProperties | Boolean | true | The value indicating whether to override incoming message properties with those in agreement. |
|signingAlgorithm | [SigningAlgorithm](#signingalgorithm) | false | The signing algorithm. |
|signMessage | Boolean | true | The value indicating whether the message has to be signed. |
        
## EncryptionAlgorithm



```puppet
$azure_encryption_algorithm = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## SigningAlgorithm



```puppet
$azure_signing_algorithm = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## BusinessIdentity

The integration account partner's business identity.

```puppet
$azure_business_identity = {
  qualifier => "qualifier",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|qualifier | String | true | The business identity qualifier e.g. as2identity, ZZ, ZZZ, 31, 32 |
|value | String | true | The user defined business identity value. |
        
        
        
## EdifactAgreementContent

The Edifact agreement content.

```puppet
$azure_edifact_agreement_content = {
  receiveAgreement => $azure_edifact_one_way_agreement
  sendAgreement => $azure_edifact_one_way_agreement
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|receiveAgreement | [EdifactOneWayAgreement](#edifactonewayagreement) | true | The EDIFACT one-way receive agreement. |
|sendAgreement | [EdifactOneWayAgreement](#edifactonewayagreement) | true | The EDIFACT one-way send agreement. |
        
## EdifactOneWayAgreement

The Edifact one way agreement.

```puppet
$azure_edifact_one_way_agreement = {
  protocolSettings => $azure_edifact_protocol_settings
  receiverBusinessIdentity => $azure_business_identity
  senderBusinessIdentity => $azure_business_identity
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|protocolSettings | [EdifactProtocolSettings](#edifactprotocolsettings) | true | The EDIFACT protocol settings. |
|receiverBusinessIdentity | [BusinessIdentity](#businessidentity) | true | The receiver business identity |
|senderBusinessIdentity | [BusinessIdentity](#businessidentity) | true | The sender business identity |
        
## EdifactProtocolSettings

The Edifact agreement protocol settings.

```puppet
$azure_edifact_protocol_settings = {
  acknowledgementSettings => $azure_edifact_acknowledgement_settings
  edifactDelimiterOverrides => $azure_edifact_delimiter_override
  envelopeOverrides => $azure_edifact_envelope_override
  envelopeSettings => $azure_edifact_envelope_settings
  framingSettings => $azure_edifact_framing_settings
  messageFilter => $azure_edifact_message_filter
  messageFilterList => $azure_edifact_message_identifier
  processingSettings => $azure_edifact_processing_settings
  schemaReferences => $azure_edifact_schema_reference
  validationOverrides => $azure_edifact_validation_override
  validationSettings => $azure_edifact_validation_settings
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|acknowledgementSettings | [EdifactAcknowledgementSettings](#edifactacknowledgementsettings) | true | The EDIFACT acknowledgement settings. |
|edifactDelimiterOverrides | [EdifactDelimiterOverride](#edifactdelimiteroverride) | false | The EDIFACT delimiter override settings. |
|envelopeOverrides | [EdifactEnvelopeOverride](#edifactenvelopeoverride) | false | The EDIFACT envelope override settings. |
|envelopeSettings | [EdifactEnvelopeSettings](#edifactenvelopesettings) | true | The EDIFACT envelope settings. |
|framingSettings | [EdifactFramingSettings](#edifactframingsettings) | true | The EDIFACT framing settings. |
|messageFilter | [EdifactMessageFilter](#edifactmessagefilter) | true | The EDIFACT message filter. |
|messageFilterList | [EdifactMessageIdentifier](#edifactmessageidentifier) | false | The EDIFACT message filter list. |
|processingSettings | [EdifactProcessingSettings](#edifactprocessingsettings) | true | The EDIFACT processing Settings. |
|schemaReferences | [EdifactSchemaReference](#edifactschemareference) | true | The EDIFACT schema references. |
|validationOverrides | [EdifactValidationOverride](#edifactvalidationoverride) | false | The EDIFACT validation override settings. |
|validationSettings | [EdifactValidationSettings](#edifactvalidationsettings) | true | The EDIFACT validation settings. |
        
## EdifactAcknowledgementSettings

The Edifact agreement acknowledgement settings.

```puppet
$azure_edifact_acknowledgement_settings = {
  acknowledgementControlNumberLowerBound => "1234",
  acknowledgementControlNumberPrefix => "acknowledgementControlNumberPrefix (optional)",
  acknowledgementControlNumberSuffix => "acknowledgementControlNumberSuffix (optional)",
  acknowledgementControlNumberUpperBound => "1234",
  batchFunctionalAcknowledgements => "batchFunctionalAcknowledgements",
  batchTechnicalAcknowledgements => "batchTechnicalAcknowledgements",
  needFunctionalAcknowledgement => "needFunctionalAcknowledgement",
  needLoopForValidMessages => "needLoopForValidMessages",
  needTechnicalAcknowledgement => "needTechnicalAcknowledgement",
  rolloverAcknowledgementControlNumber => "rolloverAcknowledgementControlNumber",
  sendSynchronousAcknowledgement => "sendSynchronousAcknowledgement",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|acknowledgementControlNumberLowerBound | Integer | true | The acknowledgement control number lower bound. |
|acknowledgementControlNumberPrefix | String | false | The acknowledgement control number prefix. |
|acknowledgementControlNumberSuffix | String | false | The acknowledgement control number suffix. |
|acknowledgementControlNumberUpperBound | Integer | true | The acknowledgement control number upper bound. |
|batchFunctionalAcknowledgements | Boolean | true | The value indicating whether to batch functional acknowledgements. |
|batchTechnicalAcknowledgements | Boolean | true | The value indicating whether to batch the technical acknowledgements. |
|needFunctionalAcknowledgement | Boolean | true | The value indicating whether functional acknowledgement is needed. |
|needLoopForValidMessages | Boolean | true | The value indicating whether a loop is needed for valid messages. |
|needTechnicalAcknowledgement | Boolean | true | The value indicating whether technical acknowledgement is needed. |
|rolloverAcknowledgementControlNumber | Boolean | true | The value indicating whether to rollover acknowledgement control number. |
|sendSynchronousAcknowledgement | Boolean | true | The value indicating whether to send synchronous acknowledgement. |
        
## EdifactDelimiterOverride

The Edifact delimiter override settings.

```puppet
$azure_edifact_delimiter_override = {
  componentSeparator => "1234",
  dataElementSeparator => "1234",
  decimalPointIndicator => $azure_edifact_decimal_indicator
  messageAssociationAssignedCode => "messageAssociationAssignedCode (optional)",
  messageId => "messageId (optional)",
  messageRelease => "messageRelease (optional)",
  messageVersion => "messageVersion (optional)",
  releaseIndicator => "1234",
  repetitionSeparator => "1234",
  segmentTerminator => "1234",
  segmentTerminatorSuffix => $azure_segment_terminator_suffix
  targetNamespace => "targetNamespace (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|componentSeparator | Integer | true | The component separator. |
|dataElementSeparator | Integer | true | The data element separator. |
|decimalPointIndicator | [EdifactDecimalIndicator](#edifactdecimalindicator) | true | The decimal point indicator. |
|messageAssociationAssignedCode | String | false | The message association assigned code. |
|messageId | String | false | The message id. |
|messageRelease | String | false | The message release. |
|messageVersion | String | false | The message version. |
|releaseIndicator | Integer | true | The release indicator. |
|repetitionSeparator | Integer | true | The repetition separator. |
|segmentTerminator | Integer | true | The segment terminator. |
|segmentTerminatorSuffix | [SegmentTerminatorSuffix](#segmentterminatorsuffix) | true | The segment terminator suffix. |
|targetNamespace | String | false | The target namespace on which this delimiter settings has to be applied. |
        
## EdifactDecimalIndicator



```puppet
$azure_edifact_decimal_indicator = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## SegmentTerminatorSuffix



```puppet
$azure_segment_terminator_suffix = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## EdifactEnvelopeOverride

The Edifact envelope override settings.

```puppet
$azure_edifact_envelope_override = {
  applicationPassword => "applicationPassword (optional)",
  associationAssignedCode => "associationAssignedCode (optional)",
  controllingAgencyCode => "controllingAgencyCode (optional)",
  functionalGroupId => "functionalGroupId (optional)",
  groupHeaderMessageRelease => "groupHeaderMessageRelease (optional)",
  groupHeaderMessageVersion => "groupHeaderMessageVersion (optional)",
  messageAssociationAssignedCode => "messageAssociationAssignedCode (optional)",
  messageId => "messageId (optional)",
  messageRelease => "messageRelease (optional)",
  messageVersion => "messageVersion (optional)",
  receiverApplicationId => "receiverApplicationId (optional)",
  receiverApplicationQualifier => "receiverApplicationQualifier (optional)",
  senderApplicationId => "senderApplicationId (optional)",
  senderApplicationQualifier => "senderApplicationQualifier (optional)",
  targetNamespace => "targetNamespace (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|applicationPassword | String | false | The application password. |
|associationAssignedCode | String | false | The association assigned code. |
|controllingAgencyCode | String | false | The controlling agency code. |
|functionalGroupId | String | false | The functional group id. |
|groupHeaderMessageRelease | String | false | The group header message release. |
|groupHeaderMessageVersion | String | false | The group header message version. |
|messageAssociationAssignedCode | String | false | The message association assigned code. |
|messageId | String | false | The message id on which this envelope settings has to be applied. |
|messageRelease | String | false | The message release version on which this envelope settings has to be applied. |
|messageVersion | String | false | The message version on which this envelope settings has to be applied. |
|receiverApplicationId | String | false | The receiver application id. |
|receiverApplicationQualifier | String | false | The receiver application qualifier. |
|senderApplicationId | String | false | The sender application id. |
|senderApplicationQualifier | String | false | The sender application qualifier. |
|targetNamespace | String | false | The target namespace on which this envelope settings has to be applied. |
        
## EdifactEnvelopeSettings

The Edifact agreement envelope settings.

```puppet
$azure_edifact_envelope_settings = {
  applicationReferenceId => "applicationReferenceId (optional)",
  applyDelimiterStringAdvice => "applyDelimiterStringAdvice",
  communicationAgreementId => "communicationAgreementId (optional)",
  createGroupingSegments => "createGroupingSegments",
  enableDefaultGroupHeaders => "enableDefaultGroupHeaders",
  functionalGroupId => "functionalGroupId (optional)",
  groupApplicationPassword => "groupApplicationPassword (optional)",
  groupApplicationReceiverId => "groupApplicationReceiverId (optional)",
  groupApplicationReceiverQualifier => "groupApplicationReceiverQualifier (optional)",
  groupApplicationSenderId => "groupApplicationSenderId (optional)",
  groupApplicationSenderQualifier => "groupApplicationSenderQualifier (optional)",
  groupAssociationAssignedCode => "groupAssociationAssignedCode (optional)",
  groupControllingAgencyCode => "groupControllingAgencyCode (optional)",
  groupControlNumberLowerBound => "1234",
  groupControlNumberPrefix => "groupControlNumberPrefix (optional)",
  groupControlNumberSuffix => "groupControlNumberSuffix (optional)",
  groupControlNumberUpperBound => "1234",
  groupMessageRelease => "groupMessageRelease (optional)",
  groupMessageVersion => "groupMessageVersion (optional)",
  interchangeControlNumberLowerBound => "1234",
  interchangeControlNumberPrefix => "interchangeControlNumberPrefix (optional)",
  interchangeControlNumberSuffix => "interchangeControlNumberSuffix (optional)",
  interchangeControlNumberUpperBound => "1234",
  isTestInterchange => "isTestInterchange",
  overwriteExistingTransactionSetControlNumber => "overwriteExistingTransactionSetControlNumber",
  processingPriorityCode => "processingPriorityCode (optional)",
  receiverInternalIdentification => "receiverInternalIdentification (optional)",
  receiverInternalSubIdentification => "receiverInternalSubIdentification (optional)",
  receiverReverseRoutingAddress => "receiverReverseRoutingAddress (optional)",
  recipientReferencePasswordQualifier => "recipientReferencePasswordQualifier (optional)",
  recipientReferencePasswordValue => "recipientReferencePasswordValue (optional)",
  rolloverGroupControlNumber => "rolloverGroupControlNumber",
  rolloverInterchangeControlNumber => "rolloverInterchangeControlNumber",
  rolloverTransactionSetControlNumber => "rolloverTransactionSetControlNumber",
  senderInternalIdentification => "senderInternalIdentification (optional)",
  senderInternalSubIdentification => "senderInternalSubIdentification (optional)",
  senderReverseRoutingAddress => "senderReverseRoutingAddress (optional)",
  transactionSetControlNumberLowerBound => "1234",
  transactionSetControlNumberPrefix => "transactionSetControlNumberPrefix (optional)",
  transactionSetControlNumberSuffix => "transactionSetControlNumberSuffix (optional)",
  transactionSetControlNumberUpperBound => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|applicationReferenceId | String | false | The application reference id. |
|applyDelimiterStringAdvice | Boolean | true | The value indicating whether to apply delimiter string advice. |
|communicationAgreementId | String | false | The communication agreement id. |
|createGroupingSegments | Boolean | true | The value indicating whether to create grouping segments. |
|enableDefaultGroupHeaders | Boolean | true | The value indicating whether to enable default group headers. |
|functionalGroupId | String | false | The functional group id. |
|groupApplicationPassword | String | false | The group application password. |
|groupApplicationReceiverId | String | false | The group application receiver id. |
|groupApplicationReceiverQualifier | String | false | The group application receiver qualifier. |
|groupApplicationSenderId | String | false | The group application sender id. |
|groupApplicationSenderQualifier | String | false | The group application sender qualifier. |
|groupAssociationAssignedCode | String | false | The group association assigned code. |
|groupControllingAgencyCode | String | false | The group controlling agency code. |
|groupControlNumberLowerBound | Integer | true | The group control number lower bound. |
|groupControlNumberPrefix | String | false | The group control number prefix. |
|groupControlNumberSuffix | String | false | The group control number suffix. |
|groupControlNumberUpperBound | Integer | true | The group control number upper bound. |
|groupMessageRelease | String | false | The group message release. |
|groupMessageVersion | String | false | The group message version. |
|interchangeControlNumberLowerBound | Integer | true | The interchange control number lower bound. |
|interchangeControlNumberPrefix | String | false | The interchange control number prefix. |
|interchangeControlNumberSuffix | String | false | The interchange control number suffix. |
|interchangeControlNumberUpperBound | Integer | true | The interchange control number upper bound. |
|isTestInterchange | Boolean | true | The value indicating whether the message is a test interchange. |
|overwriteExistingTransactionSetControlNumber | Boolean | true | The value indicating whether to overwrite existing transaction set control number. |
|processingPriorityCode | String | false | The processing priority code. |
|receiverInternalIdentification | String | false | The receiver internal identification. |
|receiverInternalSubIdentification | String | false | The receiver internal sub identification. |
|receiverReverseRoutingAddress | String | false | The receiver reverse routing address. |
|recipientReferencePasswordQualifier | String | false | The recipient reference password qualifier. |
|recipientReferencePasswordValue | String | false | The recipient reference password value. |
|rolloverGroupControlNumber | Boolean | true | The value indicating whether to rollover group control number. |
|rolloverInterchangeControlNumber | Boolean | true | The value indicating whether to rollover interchange control number. |
|rolloverTransactionSetControlNumber | Boolean | true | The value indicating whether to rollover transaction set control number. |
|senderInternalIdentification | String | false | The sender internal identification. |
|senderInternalSubIdentification | String | false | The sender internal sub identification. |
|senderReverseRoutingAddress | String | false | The sender reverse routing address. |
|transactionSetControlNumberLowerBound | Integer | true | The transaction set control number lower bound. |
|transactionSetControlNumberPrefix | String | false | The transaction set control number prefix. |
|transactionSetControlNumberSuffix | String | false | The transaction set control number suffix. |
|transactionSetControlNumberUpperBound | Integer | true | The transaction set control number upper bound. |
        
## EdifactFramingSettings

The Edifact agreement framing settings.

```puppet
$azure_edifact_framing_settings = {
  characterEncoding => "characterEncoding (optional)",
  characterSet => $azure_edifact_character_set
  componentSeparator => "1234",
  dataElementSeparator => "1234",
  decimalPointIndicator => $azure_edifact_decimal_indicator
  protocolVersion => "1234",
  releaseIndicator => "1234",
  repetitionSeparator => "1234",
  segmentTerminator => "1234",
  segmentTerminatorSuffix => $azure_segment_terminator_suffix
  serviceCodeListDirectoryVersion => "serviceCodeListDirectoryVersion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|characterEncoding | String | false | The character encoding. |
|characterSet | [EdifactCharacterSet](#edifactcharacterset) | true | The EDIFACT frame setting characterSet. |
|componentSeparator | Integer | true | The component separator. |
|dataElementSeparator | Integer | true | The data element separator. |
|decimalPointIndicator | [EdifactDecimalIndicator](#edifactdecimalindicator) | true | The EDIFACT frame setting decimal indicator. |
|protocolVersion | Integer | true | The protocol version. |
|releaseIndicator | Integer | true | The release indicator. |
|repetitionSeparator | Integer | true | The repetition separator. |
|segmentTerminator | Integer | true | The segment terminator. |
|segmentTerminatorSuffix | [SegmentTerminatorSuffix](#segmentterminatorsuffix) | true | The EDIFACT frame setting segment terminator suffix. |
|serviceCodeListDirectoryVersion | String | false | The service code list directory version. |
        
## EdifactCharacterSet



```puppet
$azure_edifact_character_set = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
        
## EdifactMessageFilter

The Edifact message filter for odata query.

```puppet
$azure_edifact_message_filter = {
  messageFilterType => $azure_message_filter_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|messageFilterType | [MessageFilterType](#messagefiltertype) | true | The message filter type. |
        
## MessageFilterType



```puppet
$azure_message_filter_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## EdifactMessageIdentifier

The Edifact message identifier.

```puppet
$azure_edifact_message_identifier = {
  messageId => "messageId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|messageId | String | true | The message id on which this envelope settings has to be applied. |
        
## EdifactProcessingSettings

The Edifact agreement protocol settings.

```puppet
$azure_edifact_processing_settings = {
  createEmptyXmlTagsForTrailingSeparators => "createEmptyXmlTagsForTrailingSeparators",
  maskSecurityInfo => "maskSecurityInfo",
  preserveInterchange => "preserveInterchange",
  suspendInterchangeOnError => "suspendInterchangeOnError",
  useDotAsDecimalSeparator => "useDotAsDecimalSeparator",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|createEmptyXmlTagsForTrailingSeparators | Boolean | true | The value indicating whether to create empty xml tags for trailing separators. |
|maskSecurityInfo | Boolean | true | The value indicating whether to mask security information. |
|preserveInterchange | Boolean | true | The value indicating whether to preserve interchange. |
|suspendInterchangeOnError | Boolean | true | The value indicating whether to suspend interchange on error. |
|useDotAsDecimalSeparator | Boolean | true | The value indicating whether to use dot as decimal separator. |
        
## EdifactSchemaReference

The Edifact schema reference.

```puppet
$azure_edifact_schema_reference = {
  associationAssignedCode => "associationAssignedCode (optional)",
  messageId => "messageId",
  messageRelease => "messageRelease",
  messageVersion => "messageVersion",
  schemaName => "schemaName",
  senderApplicationId => "senderApplicationId (optional)",
  senderApplicationQualifier => "senderApplicationQualifier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|associationAssignedCode | String | false | The association assigned code. |
|messageId | String | true | The message id. |
|messageRelease | String | true | The message release version. |
|messageVersion | String | true | The message version. |
|schemaName | String | true | The schema name. |
|senderApplicationId | String | false | The sender application id. |
|senderApplicationQualifier | String | false | The sender application qualifier. |
        
## EdifactValidationOverride

The Edifact validation override settings.

```puppet
$azure_edifact_validation_override = {
  allowLeadingAndTrailingSpacesAndZeroes => "allowLeadingAndTrailingSpacesAndZeroes",
  enforceCharacterSet => "enforceCharacterSet",
  messageId => "messageId",
  trailingSeparatorPolicy => $azure_trailing_separator_policy
  trimLeadingAndTrailingSpacesAndZeroes => "trimLeadingAndTrailingSpacesAndZeroes",
  validateEdiTypes => "validateEdiTypes",
  validateXsdTypes => "validateXsdTypes",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowLeadingAndTrailingSpacesAndZeroes | Boolean | true | The value indicating whether to allow leading and trailing spaces and zeroes. |
|enforceCharacterSet | Boolean | true | The value indicating whether to validate character Set. |
|messageId | String | true | The message id on which the validation settings has to be applied. |
|trailingSeparatorPolicy | [TrailingSeparatorPolicy](#trailingseparatorpolicy) | true | The trailing separator policy. |
|trimLeadingAndTrailingSpacesAndZeroes | Boolean | true | The value indicating whether to trim leading and trailing spaces and zeroes. |
|validateEdiTypes | Boolean | true | The value indicating whether to validate EDI types. |
|validateXsdTypes | Boolean | true | The value indicating whether to validate XSD types. |
        
## TrailingSeparatorPolicy



```puppet
$azure_trailing_separator_policy = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## EdifactValidationSettings

The Edifact agreement validation settings.

```puppet
$azure_edifact_validation_settings = {
  allowLeadingAndTrailingSpacesAndZeroes => "allowLeadingAndTrailingSpacesAndZeroes",
  checkDuplicateGroupControlNumber => "checkDuplicateGroupControlNumber",
  checkDuplicateInterchangeControlNumber => "checkDuplicateInterchangeControlNumber",
  checkDuplicateTransactionSetControlNumber => "checkDuplicateTransactionSetControlNumber",
  interchangeControlNumberValidityDays => "1234",
  trailingSeparatorPolicy => $azure_trailing_separator_policy
  trimLeadingAndTrailingSpacesAndZeroes => "trimLeadingAndTrailingSpacesAndZeroes",
  validateCharacterSet => "validateCharacterSet",
  validateEdiTypes => "validateEdiTypes",
  validateXsdTypes => "validateXsdTypes",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowLeadingAndTrailingSpacesAndZeroes | Boolean | true | The value indicating whether to allow leading and trailing spaces and zeroes. |
|checkDuplicateGroupControlNumber | Boolean | true | The value indicating whether to check for duplicate group control number. |
|checkDuplicateInterchangeControlNumber | Boolean | true | The value indicating whether to check for duplicate interchange control number. |
|checkDuplicateTransactionSetControlNumber | Boolean | true | The value indicating whether to check for duplicate transaction set control number. |
|interchangeControlNumberValidityDays | Integer | true | The validity period of interchange control number. |
|trailingSeparatorPolicy | [TrailingSeparatorPolicy](#trailingseparatorpolicy) | true | The trailing separator policy. |
|trimLeadingAndTrailingSpacesAndZeroes | Boolean | true | The value indicating whether to trim leading and trailing spaces and zeroes. |
|validateCharacterSet | Boolean | true | The value indicating whether to validate character set in the message. |
|validateEdiTypes | Boolean | true | The value indicating whether to Whether to validate EDI types. |
|validateXsdTypes | Boolean | true | The value indicating whether to Whether to validate XSD types. |
        
        
        
        
        
## X12AgreementContent

The X12 agreement content.

```puppet
$azure_x12_agreement_content = {
  receiveAgreement => $azure_x12_one_way_agreement
  sendAgreement => $azure_x12_one_way_agreement
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|receiveAgreement | [X12OneWayAgreement](#x12onewayagreement) | true | The X12 one-way receive agreement. |
|sendAgreement | [X12OneWayAgreement](#x12onewayagreement) | true | The X12 one-way send agreement. |
        
## X12OneWayAgreement

The X12 one-way agreement.

```puppet
$azure_x12_one_way_agreement = {
  protocolSettings => $azure_x12_protocol_settings
  receiverBusinessIdentity => $azure_business_identity
  senderBusinessIdentity => $azure_business_identity
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|protocolSettings | [X12ProtocolSettings](#x12protocolsettings) | true | The X12 protocol settings. |
|receiverBusinessIdentity | [BusinessIdentity](#businessidentity) | true | The receiver business identity |
|senderBusinessIdentity | [BusinessIdentity](#businessidentity) | true | The sender business identity |
        
## X12ProtocolSettings

The X12 agreement protocol settings.

```puppet
$azure_x12_protocol_settings = {
  acknowledgementSettings => $azure_x12_acknowledgement_settings
  envelopeOverrides => $azure_x12_envelope_override
  envelopeSettings => $azure_x12_envelope_settings
  framingSettings => $azure_x12_framing_settings
  messageFilter => $azure_x12_message_filter
  messageFilterList => $azure_x12_message_identifier
  processingSettings => $azure_x12_processing_settings
  schemaReferences => $azure_x12_schema_reference
  securitySettings => $azure_x12_security_settings
  validationOverrides => $azure_x12_validation_override
  validationSettings => $azure_x12_validation_settings
  x12DelimiterOverrides => $azure_x12_delimiter_overrides
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|acknowledgementSettings | [X12AcknowledgementSettings](#x12acknowledgementsettings) | true | The X12 acknowledgment settings. |
|envelopeOverrides | [X12EnvelopeOverride](#x12envelopeoverride) | false | The X12 envelope override settings. |
|envelopeSettings | [X12EnvelopeSettings](#x12envelopesettings) | true | The X12 envelope settings. |
|framingSettings | [X12FramingSettings](#x12framingsettings) | true | The X12 framing settings. |
|messageFilter | [X12MessageFilter](#x12messagefilter) | true | The X12 message filter. |
|messageFilterList | [X12MessageIdentifier](#x12messageidentifier) | false | The X12 message filter list. |
|processingSettings | [X12ProcessingSettings](#x12processingsettings) | true | The X12 processing settings. |
|schemaReferences | [X12SchemaReference](#x12schemareference) | true | The X12 schema references. |
|securitySettings | [X12SecuritySettings](#x12securitysettings) | true | The X12 security settings. |
|validationOverrides | [X12ValidationOverride](#x12validationoverride) | false | The X12 validation override settings. |
|validationSettings | [X12ValidationSettings](#x12validationsettings) | true | The X12 validation settings. |
|x12DelimiterOverrides | [X12DelimiterOverrides](#x12delimiteroverrides) | false | The X12 delimiter override settings. |
        
## X12AcknowledgementSettings

The X12 agreement acknowledgement settings.

```puppet
$azure_x12_acknowledgement_settings = {
  acknowledgementControlNumberLowerBound => "1234",
  acknowledgementControlNumberPrefix => "acknowledgementControlNumberPrefix (optional)",
  acknowledgementControlNumberSuffix => "acknowledgementControlNumberSuffix (optional)",
  acknowledgementControlNumberUpperBound => "1234",
  batchFunctionalAcknowledgements => "batchFunctionalAcknowledgements",
  batchImplementationAcknowledgements => "batchImplementationAcknowledgements",
  batchTechnicalAcknowledgements => "batchTechnicalAcknowledgements",
  functionalAcknowledgementVersion => "functionalAcknowledgementVersion (optional)",
  implementationAcknowledgementVersion => "implementationAcknowledgementVersion (optional)",
  needFunctionalAcknowledgement => "needFunctionalAcknowledgement",
  needImplementationAcknowledgement => "needImplementationAcknowledgement",
  needLoopForValidMessages => "needLoopForValidMessages",
  needTechnicalAcknowledgement => "needTechnicalAcknowledgement",
  rolloverAcknowledgementControlNumber => "rolloverAcknowledgementControlNumber",
  sendSynchronousAcknowledgement => "sendSynchronousAcknowledgement",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|acknowledgementControlNumberLowerBound | Integer | true | The acknowledgement control number lower bound. |
|acknowledgementControlNumberPrefix | String | false | The acknowledgement control number prefix. |
|acknowledgementControlNumberSuffix | String | false | The acknowledgement control number suffix. |
|acknowledgementControlNumberUpperBound | Integer | true | The acknowledgement control number upper bound. |
|batchFunctionalAcknowledgements | Boolean | true | The value indicating whether to batch functional acknowledgements. |
|batchImplementationAcknowledgements | Boolean | true | The value indicating whether to batch implementation acknowledgements. |
|batchTechnicalAcknowledgements | Boolean | true | The value indicating whether to batch the technical acknowledgements. |
|functionalAcknowledgementVersion | String | false | The functional acknowledgement version. |
|implementationAcknowledgementVersion | String | false | The implementation acknowledgement version. |
|needFunctionalAcknowledgement | Boolean | true | The value indicating whether functional acknowledgement is needed. |
|needImplementationAcknowledgement | Boolean | true | The value indicating whether implementation acknowledgement is needed. |
|needLoopForValidMessages | Boolean | true | The value indicating whether a loop is needed for valid messages. |
|needTechnicalAcknowledgement | Boolean | true | The value indicating whether technical acknowledgement is needed. |
|rolloverAcknowledgementControlNumber | Boolean | true | The value indicating whether to rollover acknowledgement control number. |
|sendSynchronousAcknowledgement | Boolean | true | The value indicating whether to send synchronous acknowledgement. |
        
## X12EnvelopeOverride

The X12 envelope override settings.

```puppet
$azure_x12_envelope_override = {
  dateFormat => $azure_x12_date_format
  functionalIdentifierCode => "functionalIdentifierCode (optional)",
  headerVersion => "headerVersion",
  messageId => "messageId",
  protocolVersion => "protocolVersion",
  receiverApplicationId => "receiverApplicationId",
  responsibleAgencyCode => "responsibleAgencyCode",
  senderApplicationId => "senderApplicationId",
  targetNamespace => "targetNamespace",
  timeFormat => $azure_x12_time_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dateFormat | [X12DateFormat](#x12dateformat) | true | The date format. |
|functionalIdentifierCode | String | false | The functional identifier code. |
|headerVersion | String | true | The header version. |
|messageId | String | true | The message id on which this envelope settings has to be applied. |
|protocolVersion | String | true | The protocol version on which this envelope settings has to be applied. |
|receiverApplicationId | String | true | The receiver application id. |
|responsibleAgencyCode | String | true | The responsible agency code. |
|senderApplicationId | String | true | The sender application id. |
|targetNamespace | String | true | The target namespace on which this envelope settings has to be applied. |
|timeFormat | [X12TimeFormat](#x12timeformat) | true | The time format. |
        
## X12DateFormat



```puppet
$azure_x12_date_format = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## X12TimeFormat



```puppet
$azure_x12_time_format = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## X12EnvelopeSettings

The X12 agreement envelope settings.

```puppet
$azure_x12_envelope_settings = {
  controlStandardsId => "1234",
  controlVersionNumber => "controlVersionNumber",
  enableDefaultGroupHeaders => "enableDefaultGroupHeaders",
  functionalGroupId => "functionalGroupId (optional)",
  groupControlNumberLowerBound => "1234",
  groupControlNumberUpperBound => "1234",
  groupHeaderAgencyCode => "groupHeaderAgencyCode",
  groupHeaderDateFormat => $azure_x12_date_format
  groupHeaderTimeFormat => $azure_x12_time_format
  groupHeaderVersion => "groupHeaderVersion",
  interchangeControlNumberLowerBound => "1234",
  interchangeControlNumberUpperBound => "1234",
  overwriteExistingTransactionSetControlNumber => "overwriteExistingTransactionSetControlNumber",
  receiverApplicationId => "receiverApplicationId",
  rolloverGroupControlNumber => "rolloverGroupControlNumber",
  rolloverInterchangeControlNumber => "rolloverInterchangeControlNumber",
  rolloverTransactionSetControlNumber => "rolloverTransactionSetControlNumber",
  senderApplicationId => "senderApplicationId",
  transactionSetControlNumberLowerBound => "1234",
  transactionSetControlNumberPrefix => "transactionSetControlNumberPrefix (optional)",
  transactionSetControlNumberSuffix => "transactionSetControlNumberSuffix (optional)",
  transactionSetControlNumberUpperBound => "1234",
  usageIndicator => $azure_usage_indicator
  useControlStandardsIdAsRepetitionCharacter => "useControlStandardsIdAsRepetitionCharacter",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|controlStandardsId | Integer | true | The controls standards id. |
|controlVersionNumber | String | true | The control version number. |
|enableDefaultGroupHeaders | Boolean | true | The value indicating whether to enable default group headers. |
|functionalGroupId | String | false | The functional group id. |
|groupControlNumberLowerBound | Integer | true | The group control number lower bound. |
|groupControlNumberUpperBound | Integer | true | The group control number upper bound. |
|groupHeaderAgencyCode | String | true | The group header agency code. |
|groupHeaderDateFormat | [X12DateFormat](#x12dateformat) | true | The group header date format. |
|groupHeaderTimeFormat | [X12TimeFormat](#x12timeformat) | true | The group header time format. |
|groupHeaderVersion | String | true | The group header version. |
|interchangeControlNumberLowerBound | Integer | true | The interchange  control number lower bound. |
|interchangeControlNumberUpperBound | Integer | true | The interchange  control number upper bound. |
|overwriteExistingTransactionSetControlNumber | Boolean | true | The value indicating whether to overwrite existing transaction set control number. |
|receiverApplicationId | String | true | The receiver application id. |
|rolloverGroupControlNumber | Boolean | true | The value indicating whether to rollover group control number. |
|rolloverInterchangeControlNumber | Boolean | true | The value indicating whether to rollover interchange control number. |
|rolloverTransactionSetControlNumber | Boolean | true | The value indicating whether to rollover transaction set control number. |
|senderApplicationId | String | true | The sender application id. |
|transactionSetControlNumberLowerBound | Integer | true | The transaction set control number lower bound. |
|transactionSetControlNumberPrefix | String | false | The transaction set control number prefix. |
|transactionSetControlNumberSuffix | String | false | The transaction set control number suffix. |
|transactionSetControlNumberUpperBound | Integer | true | The transaction set control number upper bound. |
|usageIndicator | [UsageIndicator](#usageindicator) | true | The usage indicator. |
|useControlStandardsIdAsRepetitionCharacter | Boolean | true | The value indicating whether to use control standards id as repetition character. |
        
        
        
## UsageIndicator



```puppet
$azure_usage_indicator = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## X12FramingSettings

The X12 agreement framing settings.

```puppet
$azure_x12_framing_settings = {
  characterSet => $azure_x12_character_set
  componentSeparator => "1234",
  dataElementSeparator => "1234",
  replaceCharacter => "1234",
  replaceSeparatorsInPayload => "replaceSeparatorsInPayload",
  segmentTerminator => "1234",
  segmentTerminatorSuffix => $azure_segment_terminator_suffix
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|characterSet | [X12CharacterSet](#x12characterset) | true | The X12 character set. |
|componentSeparator | Integer | true | The component separator. |
|dataElementSeparator | Integer | true | The data element separator. |
|replaceCharacter | Integer | true | The replacement character. |
|replaceSeparatorsInPayload | Boolean | true | The value indicating whether to replace separators in payload. |
|segmentTerminator | Integer | true | The segment terminator. |
|segmentTerminatorSuffix | [SegmentTerminatorSuffix](#segmentterminatorsuffix) | true | The segment terminator suffix. |
        
## X12CharacterSet



```puppet
$azure_x12_character_set = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## X12MessageFilter

The X12 message filter for odata query.

```puppet
$azure_x12_message_filter = {
  messageFilterType => $azure_message_filter_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|messageFilterType | [MessageFilterType](#messagefiltertype) | true | The message filter type. |
        
        
## X12MessageIdentifier

The X12 message identifier.

```puppet
$azure_x12_message_identifier = {
  messageId => "messageId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|messageId | String | true | The message id. |
        
## X12ProcessingSettings

The X12 processing settings.

```puppet
$azure_x12_processing_settings = {
  convertImpliedDecimal => "convertImpliedDecimal",
  createEmptyXmlTagsForTrailingSeparators => "createEmptyXmlTagsForTrailingSeparators",
  maskSecurityInfo => "maskSecurityInfo",
  preserveInterchange => "preserveInterchange",
  suspendInterchangeOnError => "suspendInterchangeOnError",
  useDotAsDecimalSeparator => "useDotAsDecimalSeparator",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|convertImpliedDecimal | Boolean | true | The value indicating whether to convert numerical type to implied decimal. |
|createEmptyXmlTagsForTrailingSeparators | Boolean | true | The value indicating whether to create empty xml tags for trailing separators. |
|maskSecurityInfo | Boolean | true | The value indicating whether to mask security information. |
|preserveInterchange | Boolean | true | The value indicating whether to preserve interchange. |
|suspendInterchangeOnError | Boolean | true | The value indicating whether to suspend interchange on error. |
|useDotAsDecimalSeparator | Boolean | true | The value indicating whether to use dot as decimal separator. |
        
## X12SchemaReference

The X12 schema reference.

```puppet
$azure_x12_schema_reference = {
  messageId => "messageId",
  schemaName => "schemaName",
  schemaVersion => "schemaVersion",
  senderApplicationId => "senderApplicationId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|messageId | String | true | The message id. |
|schemaName | String | true | The schema name. |
|schemaVersion | String | true | The schema version. |
|senderApplicationId | String | false | The sender application id. |
        
## X12SecuritySettings

The X12 agreement security settings.

```puppet
$azure_x12_security_settings = {
  authorizationQualifier => "authorizationQualifier",
  authorizationValue => "authorizationValue (optional)",
  passwordValue => "passwordValue (optional)",
  securityQualifier => "securityQualifier",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authorizationQualifier | String | true | The authorization qualifier. |
|authorizationValue | String | false | The authorization value. |
|passwordValue | String | false | The password value. |
|securityQualifier | String | true | The security qualifier. |
        
## X12ValidationOverride

The X12 validation override settings.

```puppet
$azure_x12_validation_override = {
  allowLeadingAndTrailingSpacesAndZeroes => "allowLeadingAndTrailingSpacesAndZeroes",
  messageId => "messageId",
  trailingSeparatorPolicy => $azure_trailing_separator_policy
  trimLeadingAndTrailingSpacesAndZeroes => "trimLeadingAndTrailingSpacesAndZeroes",
  validateCharacterSet => "validateCharacterSet",
  validateEdiTypes => "validateEdiTypes",
  validateXsdTypes => "validateXsdTypes",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowLeadingAndTrailingSpacesAndZeroes | Boolean | true | The value indicating whether to allow leading and trailing spaces and zeroes. |
|messageId | String | true | The message id on which the validation settings has to be applied. |
|trailingSeparatorPolicy | [TrailingSeparatorPolicy](#trailingseparatorpolicy) | true | The trailing separator policy. |
|trimLeadingAndTrailingSpacesAndZeroes | Boolean | true | The value indicating whether to trim leading and trailing spaces and zeroes. |
|validateCharacterSet | Boolean | true | The value indicating whether to validate character Set. |
|validateEdiTypes | Boolean | true | The value indicating whether to validate EDI types. |
|validateXsdTypes | Boolean | true | The value indicating whether to validate XSD types. |
        
        
## X12ValidationSettings

The X12 agreement validation settings.

```puppet
$azure_x12_validation_settings = {
  allowLeadingAndTrailingSpacesAndZeroes => "allowLeadingAndTrailingSpacesAndZeroes",
  checkDuplicateGroupControlNumber => "checkDuplicateGroupControlNumber",
  checkDuplicateInterchangeControlNumber => "checkDuplicateInterchangeControlNumber",
  checkDuplicateTransactionSetControlNumber => "checkDuplicateTransactionSetControlNumber",
  interchangeControlNumberValidityDays => "1234",
  trailingSeparatorPolicy => $azure_trailing_separator_policy
  trimLeadingAndTrailingSpacesAndZeroes => "trimLeadingAndTrailingSpacesAndZeroes",
  validateCharacterSet => "validateCharacterSet",
  validateEdiTypes => "validateEdiTypes",
  validateXsdTypes => "validateXsdTypes",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowLeadingAndTrailingSpacesAndZeroes | Boolean | true | The value indicating whether to allow leading and trailing spaces and zeroes. |
|checkDuplicateGroupControlNumber | Boolean | true | The value indicating whether to check for duplicate group control number. |
|checkDuplicateInterchangeControlNumber | Boolean | true | The value indicating whether to check for duplicate interchange control number. |
|checkDuplicateTransactionSetControlNumber | Boolean | true | The value indicating whether to check for duplicate transaction set control number. |
|interchangeControlNumberValidityDays | Integer | true | The validity period of interchange control number. |
|trailingSeparatorPolicy | [TrailingSeparatorPolicy](#trailingseparatorpolicy) | true | The trailing separator policy. |
|trimLeadingAndTrailingSpacesAndZeroes | Boolean | true | The value indicating whether to trim leading and trailing spaces and zeroes. |
|validateCharacterSet | Boolean | true | The value indicating whether to validate character set in the message. |
|validateEdiTypes | Boolean | true | The value indicating whether to Whether to validate EDI types. |
|validateXsdTypes | Boolean | true | The value indicating whether to Whether to validate XSD types. |
        
        
## X12DelimiterOverrides

The X12 delimiter override settings.

```puppet
$azure_x12_delimiter_overrides = {
  componentSeparator => "1234",
  dataElementSeparator => "1234",
  messageId => "messageId (optional)",
  protocolVersion => "protocolVersion (optional)",
  replaceCharacter => "1234",
  replaceSeparatorsInPayload => "replaceSeparatorsInPayload",
  segmentTerminator => "1234",
  segmentTerminatorSuffix => $azure_segment_terminator_suffix
  targetNamespace => "targetNamespace (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|componentSeparator | Integer | true | The component separator. |
|dataElementSeparator | Integer | true | The data element separator. |
|messageId | String | false | The message id. |
|protocolVersion | String | false | The protocol version. |
|replaceCharacter | Integer | true | The replacement character. |
|replaceSeparatorsInPayload | Boolean | true | The value indicating whether to replace separators in payload. |
|segmentTerminator | Integer | true | The segment terminator. |
|segmentTerminatorSuffix | [SegmentTerminatorSuffix](#segmentterminatorsuffix) | true | The segment terminator suffix. |
|targetNamespace | String | false | The target namespace on which this delimiter settings has to be applied. |
        
        
        
        
        
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IntegrationAccountAgreement

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/agreements/%{agreement_name}`|Put|Creates or updates an integration account agreement.|Agreements_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/agreements/%{agreement_name}`|Get|Gets an integration account agreement.|Agreements_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/agreements`|Get|Gets a list of integration account agreements.|Agreements_ListByIntegrationAccounts|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/agreements/%{agreement_name}`|Put|Creates or updates an integration account agreement.|Agreements_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/agreements/%{agreement_name}`|Delete|Deletes an integration account agreement.|Agreements_Delete|
