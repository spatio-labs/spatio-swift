# MailAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkArchiveEmails**](MailAPI.md#bulkarchiveemails) | **POST** /v1/mail/archive | Archive multiple messages (remove the INBOX label).
[**bulkDeleteEmails**](MailAPI.md#bulkdeleteemails) | **POST** /v1/mail/delete | Delete multiple messages in one call.
[**bulkMarkEmailsRead**](MailAPI.md#bulkmarkemailsread) | **POST** /v1/mail/mark-read | Mark multiple messages read or unread in one call.
[**createDraft**](MailAPI.md#createdraft) | **POST** /v1/mail/drafts | Create a draft.
[**createEmailLabel**](MailAPI.md#createemaillabel) | **POST** /v1/mail/labels | Create a label.
[**createMailTemplate**](MailAPI.md#createmailtemplate) | **POST** /v1/mail/templates | Create a mail template.
[**deleteDraft**](MailAPI.md#deletedraft) | **DELETE** /v1/mail/drafts/{id} | Delete a draft.
[**deleteEmail**](MailAPI.md#deleteemail) | **DELETE** /v1/mail/email/{id} | Delete an email.
[**deleteEmailLabel**](MailAPI.md#deleteemaillabel) | **DELETE** /v1/mail/labels/{id} | Delete a label.
[**deleteMailTemplate**](MailAPI.md#deletemailtemplate) | **DELETE** /v1/mail/templates/{id} | Delete a mail template.
[**getEmail**](MailAPI.md#getemail) | **GET** /v1/mail/email/{id} | Fetch one email.
[**getEmailAttachment**](MailAPI.md#getemailattachment) | **GET** /v1/mail/attachment/{messageId}/{attachmentId} | Download an attachment.
[**getEmailThread**](MailAPI.md#getemailthread) | **GET** /v1/mail/thread/{id} | Fetch a thread (the conversation a message belongs to).
[**getMailTemplate**](MailAPI.md#getmailtemplate) | **GET** /v1/mail/templates/{id} | Fetch a mail template.
[**getMailThreadTracking**](MailAPI.md#getmailthreadtracking) | **GET** /v1/mail/threads/{threadId}/tracking | Read mail-tracking events for a thread (open log, reply log, etc.).
[**instantiateMailTemplate**](MailAPI.md#instantiatemailtemplate) | **POST** /v1/mail/templates/{id}/instantiate | Render a template with variables and return the resulting draft.
[**listDrafts**](MailAPI.md#listdrafts) | **GET** /v1/mail/drafts | List drafts across connected mail accounts.
[**listEmailLabels**](MailAPI.md#listemaillabels) | **GET** /v1/mail/labels | List labels on the resolved mail account.
[**listEmails**](MailAPI.md#listemails) | **GET** /v1/mail/list | List emails across connected mail accounts.
[**listMailTemplates**](MailAPI.md#listmailtemplates) | **GET** /v1/mail/templates | List the caller&#39;s saved mail templates.
[**replyEmail**](MailAPI.md#replyemail) | **POST** /v1/mail/reply | Reply to a specific email.
[**saveMailTemplate**](MailAPI.md#savemailtemplate) | **POST** /v1/mail/templates/save | Save-or-create endpoint used by the renderer&#39;s \&quot;save as template\&quot; flow. Distinct from POST /v1/mail/templates which is the strict create. 
[**searchEmails**](MailAPI.md#searchemails) | **GET** /v1/mail/search | Structured search across connected mail accounts.
[**sendDraft**](MailAPI.md#senddraft) | **POST** /v1/mail/drafts/{id}/send | Send a draft.
[**sendEmail**](MailAPI.md#sendemail) | **POST** /v1/mail/send | Send an email.
[**updateDraft**](MailAPI.md#updatedraft) | **PUT** /v1/mail/drafts/{id} | Update a draft (full replacement of provided fields).
[**updateEmail**](MailAPI.md#updateemail) | **PATCH** /v1/mail/email/{id} | Update an email (mark read/star, add/remove labels).
[**updateMailTemplate**](MailAPI.md#updatemailtemplate) | **PATCH** /v1/mail/templates/{id} | Update a mail template.
[**workspaceAddMailMessageLabels**](MailAPI.md#workspaceaddmailmessagelabels) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/{messageId}/labels | 
[**workspaceCreateMailDraft**](MailAPI.md#workspacecreatemaildraft) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/drafts | 
[**workspaceCreateMailLabel**](MailAPI.md#workspacecreatemaillabel) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/labels | 
[**workspaceDeleteMail**](MailAPI.md#workspacedeletemail) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/mail/email/{id} | 
[**workspaceDeleteMailDraft**](MailAPI.md#workspacedeletemaildraft) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id} | 
[**workspaceDeleteMailLabel**](MailAPI.md#workspacedeletemaillabel) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/mail/labels/{id} | 
[**workspaceGetMail**](MailAPI.md#workspacegetmail) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/email/{id} | 
[**workspaceGetMailAttachment**](MailAPI.md#workspacegetmailattachment) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/attachment/{messageId}/{attachmentId} | 
[**workspaceGetMailById**](MailAPI.md#workspacegetmailbyid) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/{id} | Workspace-scoped renderer-compat alias for mail/email/{id}.
[**workspaceGetMailDraft**](MailAPI.md#workspacegetmaildraft) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id} | 
[**workspaceGetMailThread**](MailAPI.md#workspacegetmailthread) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/thread/{id} | 
[**workspaceListMail**](MailAPI.md#workspacelistmail) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/list | 
[**workspaceListMailDrafts**](MailAPI.md#workspacelistmaildrafts) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/drafts | 
[**workspaceListMailLabels**](MailAPI.md#workspacelistmaillabels) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/labels | 
[**workspacePatchMail**](MailAPI.md#workspacepatchmail) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/mail/email/{id} | 
[**workspaceRemoveMailMessageLabel**](MailAPI.md#workspaceremovemailmessagelabel) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/mail/{messageId}/labels/{labelId} | 
[**workspaceReplyMail**](MailAPI.md#workspacereplymail) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/reply | 
[**workspaceSearchMail**](MailAPI.md#workspacesearchmail) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/search | 
[**workspaceSendMail**](MailAPI.md#workspacesendmail) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/send | 
[**workspaceSendMailDraft**](MailAPI.md#workspacesendmaildraft) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id}/send | 
[**workspaceSendMailEmailAlias**](MailAPI.md#workspacesendmailemailalias) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/email | Renderer-compat alias for /mail/send.
[**workspaceUpdateMail**](MailAPI.md#workspaceupdatemail) | **PUT** /v1/organizations/{org}/workspaces/{workspace}/mail/email/{id} | 
[**workspaceUpdateMailDraft**](MailAPI.md#workspaceupdatemaildraft) | **PUT** /v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id} | 
[**workspaceUpdateMailLabel**](MailAPI.md#workspaceupdatemaillabel) | **PUT** /v1/organizations/{org}/workspaces/{workspace}/mail/labels/{id} | 


# **bulkArchiveEmails**
```swift
    open class func bulkArchiveEmails(bulkArchiveRequest: BulkArchiveRequest, completion: @escaping (_ data: BulkArchiveResponse?, _ error: Error?) -> Void)
```

Archive multiple messages (remove the INBOX label).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let bulkArchiveRequest = BulkArchiveRequest(accountId: "accountId_example", messageIds: ["messageIds_example"]) // BulkArchiveRequest | 

// Archive multiple messages (remove the INBOX label).
MailAPI.bulkArchiveEmails(bulkArchiveRequest: bulkArchiveRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkArchiveRequest** | [**BulkArchiveRequest**](BulkArchiveRequest.md) |  | 

### Return type

[**BulkArchiveResponse**](BulkArchiveResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkDeleteEmails**
```swift
    open class func bulkDeleteEmails(bulkDeleteEmailsRequest: BulkDeleteEmailsRequest, completion: @escaping (_ data: BulkDeleteEmailsResponse?, _ error: Error?) -> Void)
```

Delete multiple messages in one call.

Soft-delete by default (moves to provider trash). Set `permanent: true` for a hard delete. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let bulkDeleteEmailsRequest = BulkDeleteEmailsRequest(accountId: "accountId_example", messageIds: ["messageIds_example"], permanent: false) // BulkDeleteEmailsRequest | 

// Delete multiple messages in one call.
MailAPI.bulkDeleteEmails(bulkDeleteEmailsRequest: bulkDeleteEmailsRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkDeleteEmailsRequest** | [**BulkDeleteEmailsRequest**](BulkDeleteEmailsRequest.md) |  | 

### Return type

[**BulkDeleteEmailsResponse**](BulkDeleteEmailsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkMarkEmailsRead**
```swift
    open class func bulkMarkEmailsRead(bulkMarkReadRequest: BulkMarkReadRequest, completion: @escaping (_ data: BulkMarkReadResponse?, _ error: Error?) -> Void)
```

Mark multiple messages read or unread in one call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let bulkMarkReadRequest = BulkMarkReadRequest(accountId: "accountId_example", messageIds: ["messageIds_example"], read: false) // BulkMarkReadRequest | 

// Mark multiple messages read or unread in one call.
MailAPI.bulkMarkEmailsRead(bulkMarkReadRequest: bulkMarkReadRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkMarkReadRequest** | [**BulkMarkReadRequest**](BulkMarkReadRequest.md) |  | 

### Return type

[**BulkMarkReadResponse**](BulkMarkReadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDraft**
```swift
    open class func createDraft(createDraftRequest: CreateDraftRequest, xWorkspaceID: String? = nil, completion: @escaping (_ data: DraftResponse?, _ error: Error?) -> Void)
```

Create a draft.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createDraftRequest = CreateDraftRequest(accountId: "accountId_example", to: ["to_example"], cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", body: "body_example", html: false, attachments: [AttachmentInput(filename: "filename_example", contentType: "contentType_example", data: 123, size: 123)], threadId: "threadId_example", inReplyTo: "inReplyTo_example", references: ["references_example"]) // CreateDraftRequest | 
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Create a draft.
MailAPI.createDraft(createDraftRequest: createDraftRequest, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDraftRequest** | [**CreateDraftRequest**](CreateDraftRequest.md) |  | 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**DraftResponse**](DraftResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEmailLabel**
```swift
    open class func createEmailLabel(createLabelRequest: CreateLabelRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: CreateLabelResponse?, _ error: Error?) -> Void)
```

Create a label.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createLabelRequest = CreateLabelRequest(accountId: "accountId_example", name: "name_example", messageListVisibility: "messageListVisibility_example", labelListVisibility: "labelListVisibility_example", color: LabelColor(textColor: "textColor_example", backgroundColor: "backgroundColor_example")) // CreateLabelRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Create a label.
MailAPI.createEmailLabel(createLabelRequest: createLabelRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createLabelRequest** | [**CreateLabelRequest**](CreateLabelRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**CreateLabelResponse**](CreateLabelResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMailTemplate**
```swift
    open class func createMailTemplate(requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Create a mail template.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Create a mail template.
MailAPI.createMailTemplate(requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDraft**
```swift
    open class func deleteDraft(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a draft.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Draft id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Delete a draft.
MailAPI.deleteDraft(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Draft id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmail**
```swift
    open class func deleteEmail(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Delete an email.

Soft-deletes (moves to provider trash).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Email message id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Delete an email.
MailAPI.deleteEmail(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Email message id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmailLabel**
```swift
    open class func deleteEmailLabel(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a label.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Label id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Delete a label.
MailAPI.deleteEmailLabel(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Label id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMailTemplate**
```swift
    open class func deleteMailTemplate(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a mail template.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Delete a mail template.
MailAPI.deleteMailTemplate(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmail**
```swift
    open class func getEmail(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: GetEmailResponse?, _ error: Error?) -> Void)
```

Fetch one email.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Email message id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch one email.
MailAPI.getEmail(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Email message id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**GetEmailResponse**](GetEmailResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailAttachment**
```swift
    open class func getEmailAttachment(messageId: String, attachmentId: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Download an attachment.

Streams the attachment binary. Response `Content-Type` matches the attachment's declared MIME type; `Content-Disposition` sets the filename. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | Message id the attachment belongs to.
let attachmentId = "attachmentId_example" // String | Attachment id within the message.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Download an attachment.
MailAPI.getEmailAttachment(messageId: messageId, attachmentId: attachmentId, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String** | Message id the attachment belongs to. | 
 **attachmentId** | **String** | Attachment id within the message. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

**URL**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailThread**
```swift
    open class func getEmailThread(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: GetThreadResponse?, _ error: Error?) -> Void)
```

Fetch a thread (the conversation a message belongs to).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Thread id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch a thread (the conversation a message belongs to).
MailAPI.getEmailThread(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Thread id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**GetThreadResponse**](GetThreadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailTemplate**
```swift
    open class func getMailTemplate(id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Fetch a mail template.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch a mail template.
MailAPI.getMailTemplate(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailThreadTracking**
```swift
    open class func getMailThreadTracking(threadId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Read mail-tracking events for a thread (open log, reply log, etc.).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let threadId = "threadId_example" // String | 

// Read mail-tracking events for a thread (open log, reply log, etc.).
MailAPI.getMailThreadTracking(threadId: threadId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instantiateMailTemplate**
```swift
    open class func instantiateMailTemplate(id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Render a template with variables and return the resulting draft.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Render a template with variables and return the resulting draft.
MailAPI.instantiateMailTemplate(id: id, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDrafts**
```swift
    open class func listDrafts(xWorkspaceID: String? = nil, accountIds: [String]? = nil, providers: [String]? = nil, limit: Int? = nil, nextPageToken: String? = nil, completion: @escaping (_ data: ListDraftsResponse?, _ error: Error?) -> Void)
```

List drafts across connected mail accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let accountIds = ["inner_example"] // [String] | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  (optional)
let providers = ["inner_example"] // [String] | Repeatable. Restrict to these provider ids (`gmail`, `outlook`). (optional)
let limit = 987 // Int |  (optional) (default to 50)
let nextPageToken = "nextPageToken_example" // String |  (optional)

// List drafts across connected mail accounts.
MailAPI.listDrafts(xWorkspaceID: xWorkspaceID, accountIds: accountIds, providers: providers, limit: limit, nextPageToken: nextPageToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **accountIds** | [**[String]**](String.md) | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to &#x60;providers&#x60; — when both are set the intersection is used.  | [optional] 
 **providers** | [**[String]**](String.md) | Repeatable. Restrict to these provider ids (&#x60;gmail&#x60;, &#x60;outlook&#x60;). | [optional] 
 **limit** | **Int** |  | [optional] [default to 50]
 **nextPageToken** | **String** |  | [optional] 

### Return type

[**ListDraftsResponse**](ListDraftsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEmailLabels**
```swift
    open class func listEmailLabels(accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: ListLabelsResponse?, _ error: Error?) -> Void)
```

List labels on the resolved mail account.

Single-account list. The platform auto-resolves to the caller's sole connected account; pass `?accountId=` to disambiguate when multiple are connected. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// List labels on the resolved mail account.
MailAPI.listEmailLabels(accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**ListLabelsResponse**](ListLabelsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEmails**
```swift
    open class func listEmails(accountIds: [String]? = nil, providers: [String]? = nil, xWorkspaceID: String? = nil, query: String? = nil, labels: [String]? = nil, folder: String? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: ListEmailsResponse?, _ error: Error?) -> Void)
```

List emails across connected mail accounts.

Fan-out list. Returns messages across every connected mail provider unless filtered. Pass `?accountIds=` (repeatable) to restrict to specific accounts, `?providers=` to restrict to specific provider ids, or both for the intersection. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountIds = ["inner_example"] // [String] | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  (optional)
let providers = ["inner_example"] // [String] | Repeatable. Restrict to these provider ids (`gmail`, `outlook`). (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let query = "query_example" // String | Provider-specific full-text query (e.g. Gmail search syntax). (optional)
let labels = ["inner_example"] // [String] | Repeatable. Filter to messages carrying every label. (optional)
let folder = "folder_example" // String | Logical folder filter. Canonical values: `inbox`, `sent`, `starred`, `trash`, `archive`. Provider-specific folders accepted as opaque strings.  (optional)
let limit = 987 // Int |  (optional) (default to 50)
let offset = 987 // Int |  (optional) (default to 0)

// List emails across connected mail accounts.
MailAPI.listEmails(accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, query: query, labels: labels, folder: folder, limit: limit, offset: offset) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountIds** | [**[String]**](String.md) | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to &#x60;providers&#x60; — when both are set the intersection is used.  | [optional] 
 **providers** | [**[String]**](String.md) | Repeatable. Restrict to these provider ids (&#x60;gmail&#x60;, &#x60;outlook&#x60;). | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **query** | **String** | Provider-specific full-text query (e.g. Gmail search syntax). | [optional] 
 **labels** | [**[String]**](String.md) | Repeatable. Filter to messages carrying every label. | [optional] 
 **folder** | **String** | Logical folder filter. Canonical values: &#x60;inbox&#x60;, &#x60;sent&#x60;, &#x60;starred&#x60;, &#x60;trash&#x60;, &#x60;archive&#x60;. Provider-specific folders accepted as opaque strings.  | [optional] 
 **limit** | **Int** |  | [optional] [default to 50]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**ListEmailsResponse**](ListEmailsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMailTemplates**
```swift
    open class func listMailTemplates(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List the caller's saved mail templates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the caller's saved mail templates.
MailAPI.listMailTemplates() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replyEmail**
```swift
    open class func replyEmail(messageId: String, replyEmailRequest: ReplyEmailRequest, xWorkspaceID: String? = nil, completion: @escaping (_ data: SendEmailResponse?, _ error: Error?) -> Void)
```

Reply to a specific email.

The original message is identified by `?messageId=`. Body defaults to the original sender as recipient — pass `to`, `cc`, `bcc` to override. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | Id of the message being replied to.
let replyEmailRequest = ReplyEmailRequest(accountId: "accountId_example", to: ["to_example"], cc: ["cc_example"], bcc: ["bcc_example"], body: "body_example", html: false, attachments: [AttachmentInput(filename: "filename_example", contentType: "contentType_example", data: 123, size: 123)]) // ReplyEmailRequest | 
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Reply to a specific email.
MailAPI.replyEmail(messageId: messageId, replyEmailRequest: replyEmailRequest, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String** | Id of the message being replied to. | 
 **replyEmailRequest** | [**ReplyEmailRequest**](ReplyEmailRequest.md) |  | 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SendEmailResponse**](SendEmailResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveMailTemplate**
```swift
    open class func saveMailTemplate(requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Save-or-create endpoint used by the renderer's \"save as template\" flow. Distinct from POST /v1/mail/templates which is the strict create. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Save-or-create endpoint used by the renderer's \"save as template\" flow. Distinct from POST /v1/mail/templates which is the strict create. 
MailAPI.saveMailTemplate(requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchEmails**
```swift
    open class func searchEmails(q: String, accountIds: [String]? = nil, providers: [String]? = nil, xWorkspaceID: String? = nil, from: String? = nil, to: String? = nil, subject: String? = nil, hasAttachment: Bool? = nil, isUnread: Bool? = nil, isStarred: Bool? = nil, labels: [String]? = nil, after: Date? = nil, before: Date? = nil, limit: Int? = nil, nextPageToken: String? = nil, completion: @escaping (_ data: SearchEmailsResponse?, _ error: Error?) -> Void)
```

Structured search across connected mail accounts.

Fan-out search. Mirrors `listEmails`'s account/provider filter semantics. Date range filters are inclusive. The query string itself is passed via `?q=` (not `?query=`); structured filters go in their own params. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let q = "q_example" // String | Provider-specific full-text query string.
let accountIds = ["inner_example"] // [String] | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  (optional)
let providers = ["inner_example"] // [String] | Repeatable. Restrict to these provider ids (`gmail`, `outlook`). (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let from = "from_example" // String |  (optional)
let to = "to_example" // String |  (optional)
let subject = "subject_example" // String |  (optional)
let hasAttachment = true // Bool |  (optional)
let isUnread = true // Bool |  (optional)
let isStarred = true // Bool |  (optional)
let labels = ["inner_example"] // [String] |  (optional)
let after = Date() // Date | Inclusive lower-bound date. (optional)
let before = Date() // Date | Inclusive upper-bound date. (optional)
let limit = 987 // Int |  (optional) (default to 50)
let nextPageToken = "nextPageToken_example" // String | Cursor returned by the previous call. (optional)

// Structured search across connected mail accounts.
MailAPI.searchEmails(q: q, accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, from: from, to: to, subject: subject, hasAttachment: hasAttachment, isUnread: isUnread, isStarred: isStarred, labels: labels, after: after, before: before, limit: limit, nextPageToken: nextPageToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String** | Provider-specific full-text query string. | 
 **accountIds** | [**[String]**](String.md) | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to &#x60;providers&#x60; — when both are set the intersection is used.  | [optional] 
 **providers** | [**[String]**](String.md) | Repeatable. Restrict to these provider ids (&#x60;gmail&#x60;, &#x60;outlook&#x60;). | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **from** | **String** |  | [optional] 
 **to** | **String** |  | [optional] 
 **subject** | **String** |  | [optional] 
 **hasAttachment** | **Bool** |  | [optional] 
 **isUnread** | **Bool** |  | [optional] 
 **isStarred** | **Bool** |  | [optional] 
 **labels** | [**[String]**](String.md) |  | [optional] 
 **after** | **Date** | Inclusive lower-bound date. | [optional] 
 **before** | **Date** | Inclusive upper-bound date. | [optional] 
 **limit** | **Int** |  | [optional] [default to 50]
 **nextPageToken** | **String** | Cursor returned by the previous call. | [optional] 

### Return type

[**SearchEmailsResponse**](SearchEmailsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendDraft**
```swift
    open class func sendDraft(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SendEmailResponse?, _ error: Error?) -> Void)
```

Send a draft.

Submits the draft as an outbound message. The draft is consumed by the provider — subsequent `getDraft`/`updateDraft` calls return `404`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Draft id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Send a draft.
MailAPI.sendDraft(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Draft id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SendEmailResponse**](SendEmailResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEmail**
```swift
    open class func sendEmail(sendEmailRequest: SendEmailRequest, xWorkspaceID: String? = nil, completion: @escaping (_ data: SendEmailResponse?, _ error: Error?) -> Void)
```

Send an email.

Sends through the resolved connected account (auto-picks if the caller has exactly one connected mail account; errors `ambiguous_account` otherwise unless `accountId` is supplied). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let sendEmailRequest = SendEmailRequest(accountId: "accountId_example", to: ["to_example"], cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", body: "body_example", html: false, attachments: [AttachmentInput(filename: "filename_example", contentType: "contentType_example", data: 123, size: 123)], inReplyTo: "inReplyTo_example", references: ["references_example"]) // SendEmailRequest | 
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Send an email.
MailAPI.sendEmail(sendEmailRequest: sendEmailRequest, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendEmailRequest** | [**SendEmailRequest**](SendEmailRequest.md) |  | 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SendEmailResponse**](SendEmailResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDraft**
```swift
    open class func updateDraft(id: String, updateDraftRequest: UpdateDraftRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: DraftResponse?, _ error: Error?) -> Void)
```

Update a draft (full replacement of provided fields).

PUT replaces the full set of provided fields on the draft. Fields omitted from the body are not modified. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Draft id.
let updateDraftRequest = UpdateDraftRequest(accountId: "accountId_example", to: ["to_example"], cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", body: "body_example", html: false, attachments: [AttachmentInput(filename: "filename_example", contentType: "contentType_example", data: 123, size: 123)]) // UpdateDraftRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Update a draft (full replacement of provided fields).
MailAPI.updateDraft(id: id, updateDraftRequest: updateDraftRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Draft id. | 
 **updateDraftRequest** | [**UpdateDraftRequest**](UpdateDraftRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**DraftResponse**](DraftResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmail**
```swift
    open class func updateEmail(id: String, updateEmailRequest: UpdateEmailRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: UpdateEmailResponse?, _ error: Error?) -> Void)
```

Update an email (mark read/star, add/remove labels).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Email message id.
let updateEmailRequest = UpdateEmailRequest(accountId: "accountId_example", isRead: false, isStarred: false, addLabels: ["addLabels_example"], removeLabels: ["removeLabels_example"]) // UpdateEmailRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Update an email (mark read/star, add/remove labels).
MailAPI.updateEmail(id: id, updateEmailRequest: updateEmailRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Email message id. | 
 **updateEmailRequest** | [**UpdateEmailRequest**](UpdateEmailRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**UpdateEmailResponse**](UpdateEmailResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMailTemplate**
```swift
    open class func updateMailTemplate(id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update a mail template.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Update a mail template.
MailAPI.updateMailTemplate(id: id, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceAddMailMessageLabels**
```swift
    open class func workspaceAddMailMessageLabels(org: String, workspace: String, messageId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let messageId = "messageId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

MailAPI.workspaceAddMailMessageLabels(org: org, workspace: workspace, messageId: messageId, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **messageId** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateMailDraft**
```swift
    open class func workspaceCreateMailDraft(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

MailAPI.workspaceCreateMailDraft(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateMailLabel**
```swift
    open class func workspaceCreateMailLabel(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

MailAPI.workspaceCreateMailLabel(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceDeleteMail**
```swift
    open class func workspaceDeleteMail(org: String, workspace: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

MailAPI.workspaceDeleteMail(org: org, workspace: workspace, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceDeleteMailDraft**
```swift
    open class func workspaceDeleteMailDraft(org: String, workspace: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

MailAPI.workspaceDeleteMailDraft(org: org, workspace: workspace, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceDeleteMailLabel**
```swift
    open class func workspaceDeleteMailLabel(org: String, workspace: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

MailAPI.workspaceDeleteMailLabel(org: org, workspace: workspace, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetMail**
```swift
    open class func workspaceGetMail(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

MailAPI.workspaceGetMail(org: org, workspace: workspace, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetMailAttachment**
```swift
    open class func workspaceGetMailAttachment(org: String, workspace: String, messageId: String, attachmentId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let messageId = "messageId_example" // String | 
let attachmentId = "attachmentId_example" // String | 

MailAPI.workspaceGetMailAttachment(org: org, workspace: workspace, messageId: messageId, attachmentId: attachmentId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **messageId** | **String** |  | 
 **attachmentId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetMailById**
```swift
    open class func workspaceGetMailById(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped renderer-compat alias for mail/email/{id}.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

// Workspace-scoped renderer-compat alias for mail/email/{id}.
MailAPI.workspaceGetMailById(org: org, workspace: workspace, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetMailDraft**
```swift
    open class func workspaceGetMailDraft(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

MailAPI.workspaceGetMailDraft(org: org, workspace: workspace, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetMailThread**
```swift
    open class func workspaceGetMailThread(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

MailAPI.workspaceGetMailThread(org: org, workspace: workspace, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListMail**
```swift
    open class func workspaceListMail(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

MailAPI.workspaceListMail(org: org, workspace: workspace) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListMailDrafts**
```swift
    open class func workspaceListMailDrafts(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

MailAPI.workspaceListMailDrafts(org: org, workspace: workspace) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListMailLabels**
```swift
    open class func workspaceListMailLabels(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

MailAPI.workspaceListMailLabels(org: org, workspace: workspace) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspacePatchMail**
```swift
    open class func workspacePatchMail(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

MailAPI.workspacePatchMail(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceRemoveMailMessageLabel**
```swift
    open class func workspaceRemoveMailMessageLabel(org: String, workspace: String, messageId: String, labelId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let messageId = "messageId_example" // String | 
let labelId = "labelId_example" // String | 

MailAPI.workspaceRemoveMailMessageLabel(org: org, workspace: workspace, messageId: messageId, labelId: labelId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **messageId** | **String** |  | 
 **labelId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceReplyMail**
```swift
    open class func workspaceReplyMail(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

MailAPI.workspaceReplyMail(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceSearchMail**
```swift
    open class func workspaceSearchMail(org: String, workspace: String, q: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let q = "q_example" // String |  (optional)

MailAPI.workspaceSearchMail(org: org, workspace: workspace, q: q) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **q** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceSendMail**
```swift
    open class func workspaceSendMail(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

MailAPI.workspaceSendMail(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceSendMailDraft**
```swift
    open class func workspaceSendMailDraft(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

MailAPI.workspaceSendMailDraft(org: org, workspace: workspace, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceSendMailEmailAlias**
```swift
    open class func workspaceSendMailEmailAlias(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Renderer-compat alias for /mail/send.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Renderer-compat alias for /mail/send.
MailAPI.workspaceSendMailEmailAlias(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUpdateMail**
```swift
    open class func workspaceUpdateMail(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

MailAPI.workspaceUpdateMail(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUpdateMailDraft**
```swift
    open class func workspaceUpdateMailDraft(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

MailAPI.workspaceUpdateMailDraft(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUpdateMailLabel**
```swift
    open class func workspaceUpdateMailLabel(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

MailAPI.workspaceUpdateMailLabel(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

