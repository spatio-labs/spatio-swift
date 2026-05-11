# NotesAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBlock**](NotesAPI.md#createblock) | **POST** /v1/notes/{id}/blocks | Insert a block in a note.
[**createNote**](NotesAPI.md#createnote) | **POST** /v1/notes | Create a note.
[**createNoteComment**](NotesAPI.md#createnotecomment) | **POST** /v1/notes/{id}/comments | Create a comment or reply.
[**deleteBlock**](NotesAPI.md#deleteblock) | **DELETE** /v1/notes/blocks/{id} | Delete a block.
[**deleteNote**](NotesAPI.md#deletenote) | **DELETE** /v1/notes/{id} | Delete a note.
[**deleteNoteComment**](NotesAPI.md#deletenotecomment) | **DELETE** /v1/notes/{id}/comments/{commentId} | Soft-delete (native) or hard-delete (provider) a comment.
[**disableNoteShare**](NotesAPI.md#disablenoteshare) | **DELETE** /v1/notes/{id}/share | Disable public sharing.
[**enableNoteShare**](NotesAPI.md#enablenoteshare) | **POST** /v1/notes/{id}/share | Enable (or update password on) public sharing.
[**getBlock**](NotesAPI.md#getblock) | **GET** /v1/notes/blocks/{id} | Fetch one block.
[**getNote**](NotesAPI.md#getnote) | **GET** /v1/notes/{id} | Fetch one note.
[**getNoteComment**](NotesAPI.md#getnotecomment) | **GET** /v1/notes/{id}/comments/{commentId} | Fetch one comment.
[**getNoteShareSettings**](NotesAPI.md#getnotesharesettings) | **GET** /v1/notes/{id}/share | Fetch share settings for a note.
[**getPublicNote**](NotesAPI.md#getpublicnote) | **GET** /public/notes/{token} | Fetch a publicly shared note.
[**listBlocks**](NotesAPI.md#listblocks) | **GET** /v1/notes/{id}/blocks | List blocks under a note.
[**listNoteComments**](NotesAPI.md#listnotecomments) | **GET** /v1/notes/{id}/comments | List comments on a note.
[**listNotes**](NotesAPI.md#listnotes) | **GET** /v1/notes | List notes across connected accounts.
[**moveBlock**](NotesAPI.md#moveblock) | **POST** /v1/notes/blocks/{id}/move | Reparent or reorder a block.
[**rotateNoteShareToken**](NotesAPI.md#rotatenotesharetoken) | **POST** /v1/notes/{id}/share/rotate | Rotate the share token, invalidating any outstanding URLs.
[**updateBlock**](NotesAPI.md#updateblock) | **PATCH** /v1/notes/blocks/{id} | Update a block (partial).
[**updateNote**](NotesAPI.md#updatenote) | **PATCH** /v1/notes/{id} | Update a note (partial).
[**updateNoteComment**](NotesAPI.md#updatenotecomment) | **PATCH** /v1/notes/{id}/comments/{commentId} | Edit a comment.
[**workspaceCreateNote**](NotesAPI.md#workspacecreatenote) | **POST** /v1/organizations/{org}/workspaces/{workspace}/notes | 
[**workspaceCreateNoteBlock**](NotesAPI.md#workspacecreatenoteblock) | **POST** /v1/organizations/{org}/workspaces/{workspace}/notes/{id}/blocks | 
[**workspaceDeleteNote**](NotesAPI.md#workspacedeletenote) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/notes/{id} | 
[**workspaceDeleteNoteBlock**](NotesAPI.md#workspacedeletenoteblock) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/notes/blocks/{id} | 
[**workspaceGetNote**](NotesAPI.md#workspacegetnote) | **GET** /v1/organizations/{org}/workspaces/{workspace}/notes/{id} | 
[**workspaceGetNoteBlock**](NotesAPI.md#workspacegetnoteblock) | **GET** /v1/organizations/{org}/workspaces/{workspace}/notes/blocks/{id} | 
[**workspaceListNoteBlocks**](NotesAPI.md#workspacelistnoteblocks) | **GET** /v1/organizations/{org}/workspaces/{workspace}/notes/{id}/blocks | 
[**workspaceListNotes**](NotesAPI.md#workspacelistnotes) | **GET** /v1/organizations/{org}/workspaces/{workspace}/notes | 
[**workspaceMoveNoteBlock**](NotesAPI.md#workspacemovenoteblock) | **POST** /v1/organizations/{org}/workspaces/{workspace}/notes/blocks/{id}/move | 
[**workspaceUpdateNote**](NotesAPI.md#workspaceupdatenote) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/notes/{id} | 
[**workspaceUpdateNoteBlock**](NotesAPI.md#workspaceupdatenoteblock) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/notes/blocks/{id} | 


# **createBlock**
```swift
    open class func createBlock(id: String, createBlockRequest: CreateBlockRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Block?, _ error: Error?) -> Void)
```

Insert a block in a note.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let createBlockRequest = CreateBlockRequest(type: BlockType(), content: BlockContent(richText: [RichTextObject(type: "type_example", text: "text_example", annotations: TextAnnotations(bold: false, italic: false, strikethrough: false, underline: false, code: false, color: "color_example"), href: "href_example")], language: "language_example", checked: false, icon: "icon_example", color: "color_example", url: "url_example", caption: "caption_example", altText: "altText_example", embedUrl: "embedUrl_example", cells: [[nil]], expression: "expression_example"), parentId: "parentId_example", position: 123, properties: "TODO") // CreateBlockRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Insert a block in a note.
NotesAPI.createBlock(id: id, createBlockRequest: createBlockRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Note id. | 
 **createBlockRequest** | [**CreateBlockRequest**](CreateBlockRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Block**](Block.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createNote**
```swift
    open class func createNote(createNoteRequest: CreateNoteRequest, accountId: String? = nil, provider: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Note?, _ error: Error?) -> Void)
```

Create a note.

Creates a new note under the target account. The target is resolved in this order: `accountId` field on the body → `?accountId=` query → `provider` field on the body → `?provider=` query → the caller's single connected account (errors with `ambiguous_account` if more than one is connected and no selector is supplied). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createNoteRequest = CreateNoteRequest(title: "title_example", content: "content_example", icon: "icon_example", coverImage: "coverImage_example", parentId: "parentId_example", properties: "TODO", accountId: "accountId_example", provider: "provider_example") // CreateNoteRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let provider = "provider_example" // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Create a note.
NotesAPI.createNote(createNoteRequest: createNoteRequest, accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **createNoteRequest** | [**CreateNoteRequest**](CreateNoteRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String** | Provider id (e.g. &#x60;native-notes&#x60;, &#x60;notion&#x60;). Selects every connected account for the provider. Mutually exclusive with &#x60;accountId&#x60;.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Note**](Note.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createNoteComment**
```swift
    open class func createNoteComment(id: String, createCommentRequest: CreateCommentRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: CommentMutationResponse?, _ error: Error?) -> Void)
```

Create a comment or reply.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let createCommentRequest = CreateCommentRequest(body: "body_example", content: "content_example", parentCommentId: "parentCommentId_example", blockId: "blockId_example") // CreateCommentRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Create a comment or reply.
NotesAPI.createNoteComment(id: id, createCommentRequest: createCommentRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Note id. | 
 **createCommentRequest** | [**CreateCommentRequest**](CreateCommentRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**CommentMutationResponse**](CommentMutationResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBlock**
```swift
    open class func deleteBlock(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Delete a block.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Block id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Delete a block.
NotesAPI.deleteBlock(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Block id. | 
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

# **deleteNote**
```swift
    open class func deleteNote(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Delete a note.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Delete a note.
NotesAPI.deleteNote(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Note id. | 
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

# **deleteNoteComment**
```swift
    open class func deleteNoteComment(id: String, commentId: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Soft-delete (native) or hard-delete (provider) a comment.

Allowed for the comment author and for the note owner. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let commentId = "commentId_example" // String | Comment id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Soft-delete (native) or hard-delete (provider) a comment.
NotesAPI.deleteNoteComment(id: id, commentId: commentId, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Note id. | 
 **commentId** | **String** | Comment id. | 
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

# **disableNoteShare**
```swift
    open class func disableNoteShare(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Disable public sharing.

Owner-only. Subsequent public viewer requests 404.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Disable public sharing.
NotesAPI.disableNoteShare(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Note id. | 
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

# **enableNoteShare**
```swift
    open class func enableNoteShare(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, enableShareRequest: EnableShareRequest? = nil, completion: @escaping (_ data: ShareSettings?, _ error: Error?) -> Void)
```

Enable (or update password on) public sharing.

Owner-only. Calling with an empty body or `setPassword: false` flips the note public without changing the password. With `setPassword: true`, applies `password` (empty string clears). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let enableShareRequest = EnableShareRequest(setPassword: false, password: "password_example") // EnableShareRequest |  (optional)

// Enable (or update password on) public sharing.
NotesAPI.enableNoteShare(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID, enableShareRequest: enableShareRequest) { (response, error) in
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
 **id** | **String** | Note id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **enableShareRequest** | [**EnableShareRequest**](EnableShareRequest.md) |  | [optional] 

### Return type

[**ShareSettings**](ShareSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlock**
```swift
    open class func getBlock(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Block?, _ error: Error?) -> Void)
```

Fetch one block.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Block id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch one block.
NotesAPI.getBlock(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Block id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Block**](Block.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNote**
```swift
    open class func getNote(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Note?, _ error: Error?) -> Void)
```

Fetch one note.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch one note.
NotesAPI.getNote(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Note id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Note**](Note.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNoteComment**
```swift
    open class func getNoteComment(id: String, commentId: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: CommentResponse?, _ error: Error?) -> Void)
```

Fetch one comment.

Useful for permalink hydration when the renderer deep-links into a reply thread. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let commentId = "commentId_example" // String | Comment id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch one comment.
NotesAPI.getNoteComment(id: id, commentId: commentId, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Note id. | 
 **commentId** | **String** | Comment id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**CommentResponse**](CommentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNoteShareSettings**
```swift
    open class func getNoteShareSettings(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: ShareSettings?, _ error: Error?) -> Void)
```

Fetch share settings for a note.

Owner-only. Returns the current public-share configuration, including the share token and computed public viewer URL when the note is currently public. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch share settings for a note.
NotesAPI.getNoteShareSettings(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Note id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**ShareSettings**](ShareSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicNote**
```swift
    open class func getPublicNote(token: String, password: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Fetch a publicly shared note.

Unauthenticated. The share token is the credential. For password-protected notes the password is supplied via the `?password=` query param; the response distinguishes \"no password supplied\" from \"wrong password\" so the viewer can render the right prompt.  Unknown tokens and disabled-share notes both return `404` to prevent token enumeration. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let token = "token_example" // String | Opaque public-share token.
let password = "password_example" // String | Optional viewer password. (optional)

// Fetch a publicly shared note.
NotesAPI.getPublicNote(token: token, password: password) { (response, error) in
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
 **token** | **String** | Opaque public-share token. | 
 **password** | **String** | Optional viewer password. | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBlocks**
```swift
    open class func listBlocks(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, parentId: String? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: BlockListResponse?, _ error: Error?) -> Void)
```

List blocks under a note.

Returns the block tree for a note, paginated. Block listing always targets a single account (the one that owns the note) so it does not fan out — the response is a plain `{ blocks, total }`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let parentId = "parentId_example" // String | Filter to children of this block id. Omit to list root-level blocks.  (optional)
let limit = 987 // Int |  (optional) (default to 100)
let offset = 987 // Int |  (optional) (default to 0)

// List blocks under a note.
NotesAPI.listBlocks(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID, parentId: parentId, limit: limit, offset: offset) { (response, error) in
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
 **id** | **String** | Note id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **parentId** | **String** | Filter to children of this block id. Omit to list root-level blocks.  | [optional] 
 **limit** | **Int** |  | [optional] [default to 100]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**BlockListResponse**](BlockListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNoteComments**
```swift
    open class func listNoteComments(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: CommentListResponse?, _ error: Error?) -> Void)
```

List comments on a note.

Returns active (non-deleted) comments. When `?accountId=` targets an external provider that supports comments (e.g. Notion), the provider is queried directly; otherwise the native store is used. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// List comments on a note.
NotesAPI.listNoteComments(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Note id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**CommentListResponse**](CommentListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNotes**
```swift
    open class func listNotes(accountId: String? = nil, provider: String? = nil, xWorkspaceID: String? = nil, archived: Bool? = nil, parentId: String? = nil, tags: [String]? = nil, limit: Int? = nil, offset: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder_listNotes? = nil, completion: @escaping (_ data: NoteListEnvelope?, _ error: Error?) -> Void)
```

List notes across connected accounts.

Fan-out list. Returns every note visible to the caller across every connected notes provider, paginated by `limit` / `offset`. Pass `?accountId=` or `?provider=` to scope to a single source. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let provider = "provider_example" // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let archived = true // Bool | When `true`, return archived notes instead of active ones. (optional) (default to false)
let parentId = "parentId_example" // String | Filter to notes nested under this parent note id. (optional)
let tags = ["inner_example"] // [String] | Repeatable. Filter to notes carrying every tag listed. (optional)
let limit = 987 // Int | Max items to return. Defaults to 50. (optional) (default to 50)
let offset = 987 // Int | Number of items to skip. (optional) (default to 0)
let sortBy = "sortBy_example" // String | Sort field. Provider-dependent; the native provider supports `updated_at`, `created_at`, `title`.  (optional) (default to "updated_at")
let sortOrder = "sortOrder_example" // String |  (optional) (default to .desc)

// List notes across connected accounts.
NotesAPI.listNotes(accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID, archived: archived, parentId: parentId, tags: tags, limit: limit, offset: offset, sortBy: sortBy, sortOrder: sortOrder) { (response, error) in
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
 **provider** | **String** | Provider id (e.g. &#x60;native-notes&#x60;, &#x60;notion&#x60;). Selects every connected account for the provider. Mutually exclusive with &#x60;accountId&#x60;.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **archived** | **Bool** | When &#x60;true&#x60;, return archived notes instead of active ones. | [optional] [default to false]
 **parentId** | **String** | Filter to notes nested under this parent note id. | [optional] 
 **tags** | [**[String]**](String.md) | Repeatable. Filter to notes carrying every tag listed. | [optional] 
 **limit** | **Int** | Max items to return. Defaults to 50. | [optional] [default to 50]
 **offset** | **Int** | Number of items to skip. | [optional] [default to 0]
 **sortBy** | **String** | Sort field. Provider-dependent; the native provider supports &#x60;updated_at&#x60;, &#x60;created_at&#x60;, &#x60;title&#x60;.  | [optional] [default to &quot;updated_at&quot;]
 **sortOrder** | **String** |  | [optional] [default to .desc]

### Return type

[**NoteListEnvelope**](NoteListEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveBlock**
```swift
    open class func moveBlock(id: String, moveBlockRequest: MoveBlockRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Reparent or reorder a block.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Block id.
let moveBlockRequest = MoveBlockRequest(parentId: "parentId_example", position: 123) // MoveBlockRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Reparent or reorder a block.
NotesAPI.moveBlock(id: id, moveBlockRequest: moveBlockRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Block id. | 
 **moveBlockRequest** | [**MoveBlockRequest**](MoveBlockRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotateNoteShareToken**
```swift
    open class func rotateNoteShareToken(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: ShareSettings?, _ error: Error?) -> Void)
```

Rotate the share token, invalidating any outstanding URLs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Rotate the share token, invalidating any outstanding URLs.
NotesAPI.rotateNoteShareToken(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Note id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**ShareSettings**](ShareSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBlock**
```swift
    open class func updateBlock(id: String, updateBlockRequest: UpdateBlockRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Block?, _ error: Error?) -> Void)
```

Update a block (partial).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Block id.
let updateBlockRequest = UpdateBlockRequest(content: BlockContent(richText: [RichTextObject(type: "type_example", text: "text_example", annotations: TextAnnotations(bold: false, italic: false, strikethrough: false, underline: false, code: false, color: "color_example"), href: "href_example")], language: "language_example", checked: false, icon: "icon_example", color: "color_example", url: "url_example", caption: "caption_example", altText: "altText_example", embedUrl: "embedUrl_example", cells: [[nil]], expression: "expression_example"), properties: "TODO", archived: false) // UpdateBlockRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Update a block (partial).
NotesAPI.updateBlock(id: id, updateBlockRequest: updateBlockRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Block id. | 
 **updateBlockRequest** | [**UpdateBlockRequest**](UpdateBlockRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Block**](Block.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNote**
```swift
    open class func updateNote(id: String, updateNoteRequest: UpdateNoteRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Note?, _ error: Error?) -> Void)
```

Update a note (partial).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let updateNoteRequest = UpdateNoteRequest(title: "title_example", content: "content_example", icon: "icon_example", coverImage: "coverImage_example", parentId: "parentId_example", properties: "TODO", archived: false) // UpdateNoteRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Update a note (partial).
NotesAPI.updateNote(id: id, updateNoteRequest: updateNoteRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Note id. | 
 **updateNoteRequest** | [**UpdateNoteRequest**](UpdateNoteRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Note**](Note.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNoteComment**
```swift
    open class func updateNoteComment(id: String, commentId: String, updateCommentRequest: UpdateCommentRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: CommentMutationResponse?, _ error: Error?) -> Void)
```

Edit a comment.

Only the comment author can edit. The note owner can delete via `DELETE` but cannot rewrite. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Note id.
let commentId = "commentId_example" // String | Comment id.
let updateCommentRequest = UpdateCommentRequest(body: "body_example", content: "content_example") // UpdateCommentRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Edit a comment.
NotesAPI.updateNoteComment(id: id, commentId: commentId, updateCommentRequest: updateCommentRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Note id. | 
 **commentId** | **String** | Comment id. | 
 **updateCommentRequest** | [**UpdateCommentRequest**](UpdateCommentRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**CommentMutationResponse**](CommentMutationResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateNote**
```swift
    open class func workspaceCreateNote(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

NotesAPI.workspaceCreateNote(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

# **workspaceCreateNoteBlock**
```swift
    open class func workspaceCreateNoteBlock(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

NotesAPI.workspaceCreateNoteBlock(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
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

# **workspaceDeleteNote**
```swift
    open class func workspaceDeleteNote(org: String, workspace: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

NotesAPI.workspaceDeleteNote(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceDeleteNoteBlock**
```swift
    open class func workspaceDeleteNoteBlock(org: String, workspace: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

NotesAPI.workspaceDeleteNoteBlock(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceGetNote**
```swift
    open class func workspaceGetNote(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

NotesAPI.workspaceGetNote(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceGetNoteBlock**
```swift
    open class func workspaceGetNoteBlock(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

NotesAPI.workspaceGetNoteBlock(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceListNoteBlocks**
```swift
    open class func workspaceListNoteBlocks(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

NotesAPI.workspaceListNoteBlocks(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceListNotes**
```swift
    open class func workspaceListNotes(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

NotesAPI.workspaceListNotes(org: org, workspace: workspace) { (response, error) in
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

# **workspaceMoveNoteBlock**
```swift
    open class func workspaceMoveNoteBlock(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

NotesAPI.workspaceMoveNoteBlock(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
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

# **workspaceUpdateNote**
```swift
    open class func workspaceUpdateNote(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

NotesAPI.workspaceUpdateNote(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
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

# **workspaceUpdateNoteBlock**
```swift
    open class func workspaceUpdateNoteBlock(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

NotesAPI.workspaceUpdateNoteBlock(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
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

