# Email

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**threadId** | **String** |  | [optional] 
**provider** | **String** |  | [optional] 
**accountId** | **String** |  | [optional] 
**subject** | **String** |  | 
**from** | **String** |  | 
**to** | **[String]** |  | 
**cc** | **[String]** |  | [optional] 
**bcc** | **[String]** |  | [optional] 
**body** | **String** |  | 
**html** | **Bool** | &#x60;true&#x60; when &#x60;body&#x60; contains HTML, &#x60;false&#x60; for plain text.  | 
**date** | **Date** |  | 
**labels** | **[String]** |  | [optional] 
**isRead** | **Bool** |  | 
**isStarred** | **Bool** |  | 
**attachments** | [AttachmentMeta] |  | [optional] 
**snippet** | **String** |  | [optional] 
**messageId** | **String** | RFC 5322 Message-ID header. | [optional] 
**inReplyTo** | **String** | RFC 5322 In-Reply-To header — the parent message id this message is a reply to.  | [optional] 
**references** | **[String]** | RFC 5322 References header (ancestor chain). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


