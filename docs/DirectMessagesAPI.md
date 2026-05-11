# DirectMessagesAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDMReaction**](DirectMessagesAPI.md#adddmreaction) | **POST** /v1/direct-messages/messages/{messageId}/reactions | React to a DM message.
[**attachToDMMessage**](DirectMessagesAPI.md#attachtodmmessage) | **POST** /v1/direct-messages/messages/{messageId}/attachments | Attach a file/image/etc. to an existing DM message.
[**executeDMAction**](DirectMessagesAPI.md#executedmaction) | **POST** /v1/direct-messages/execute | Dispatch a DM action by id.
[**forwardDMMessage**](DirectMessagesAPI.md#forwarddmmessage) | **POST** /v1/direct-messages/messages/{messageId}/forward | Forward a DM message to another DM or channel.
[**getDMUser**](DirectMessagesAPI.md#getdmuser) | **GET** /v1/direct-messages/users/{id} | Fetch one chat user.
[**listDMActions**](DirectMessagesAPI.md#listdmactions) | **GET** /v1/direct-messages/actions | Discover the action catalog for DirectMessages.
[**listDMPinnedMessages**](DirectMessagesAPI.md#listdmpinnedmessages) | **GET** /v1/direct-messages/{dmId}/pinned | List pinned messages in a DM conversation.
[**listDMThreadReplies**](DirectMessagesAPI.md#listdmthreadreplies) | **GET** /v1/direct-messages/{dmId}/messages/{messageId}/replies | List replies in a DM message thread.
[**listDMUsers**](DirectMessagesAPI.md#listdmusers) | **GET** /v1/direct-messages/users | List chat users (DM contacts) across connected accounts.
[**listDirectConversationsEnriched**](DirectMessagesAPI.md#listdirectconversationsenriched) | **GET** /v1/direct-messages/conversations | Enriched DM conversation list with unread + pin + draft state.
[**listDirectMessageConversations**](DirectMessagesAPI.md#listdirectmessageconversations) | **GET** /v1/direct-messages | List 1:1 and group DM conversations.
[**listDirectMessages**](DirectMessagesAPI.md#listdirectmessages) | **GET** /v1/direct-messages/messages | List messages in a DM conversation.
[**markDMRead**](DirectMessagesAPI.md#markdmread) | **POST** /v1/direct-messages/{dmId}/read | Mark a DM message read.
[**muteDM**](DirectMessagesAPI.md#mutedm) | **POST** /v1/direct-messages/{dmId}/mute | Mute a DM conversation (until a time, or forever).
[**pinDMConversation**](DirectMessagesAPI.md#pindmconversation) | **POST** /v1/direct-messages/{dmId}/pin | Pin a DM conversation to the top of the sidebar.
[**pinDMMessage**](DirectMessagesAPI.md#pindmmessage) | **POST** /v1/direct-messages/messages/{messageId}/pin | Pin a DM message.
[**postDMThreadReply**](DirectMessagesAPI.md#postdmthreadreply) | **POST** /v1/direct-messages/{dmId}/messages/{messageId}/replies | Reply in a DM message thread.
[**removeDMReaction**](DirectMessagesAPI.md#removedmreaction) | **DELETE** /v1/direct-messages/messages/{messageId}/reactions/{emoji} | Remove a DM message reaction.
[**searchDirectMessages**](DirectMessagesAPI.md#searchdirectmessages) | **GET** /v1/direct-messages/search | Search across DM messages.
[**sendDirectMessage**](DirectMessagesAPI.md#senddirectmessage) | **POST** /v1/direct-messages/messages | Send a DM.
[**setDMDraft**](DirectMessagesAPI.md#setdmdraft) | **PUT** /v1/direct-messages/{dmId}/draft | Save the unsent draft text for a DM.
[**unpinDMConversation**](DirectMessagesAPI.md#unpindmconversation) | **DELETE** /v1/direct-messages/{dmId}/pin | Unpin a DM conversation.
[**unpinDMMessage**](DirectMessagesAPI.md#unpindmmessage) | **DELETE** /v1/direct-messages/messages/{messageId}/pin | Unpin a DM message.
[**workspaceExecuteDMAction**](DirectMessagesAPI.md#workspaceexecutedmaction) | **POST** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/execute | 
[**workspaceGetDMUser**](DirectMessagesAPI.md#workspacegetdmuser) | **GET** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/users/{id} | 
[**workspaceListDMActions**](DirectMessagesAPI.md#workspacelistdmactions) | **GET** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/actions | 
[**workspaceListDMConversations**](DirectMessagesAPI.md#workspacelistdmconversations) | **GET** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/conversations | 
[**workspaceListDMMessages**](DirectMessagesAPI.md#workspacelistdmmessages) | **GET** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/messages | 
[**workspaceListDMUsers**](DirectMessagesAPI.md#workspacelistdmusers) | **GET** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/users | 
[**workspaceListDirectMessages**](DirectMessagesAPI.md#workspacelistdirectmessages) | **GET** /v1/organizations/{org}/workspaces/{workspace}/direct-messages | 
[**workspaceSendDirectMessage**](DirectMessagesAPI.md#workspacesenddirectmessage) | **POST** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/messages | 


# **addDMReaction**
```swift
    open class func addDMReaction(messageId: String, dMReactionRequest: DMReactionRequest, completion: @escaping (_ data: DMReactionResponse?, _ error: Error?) -> Void)
```

React to a DM message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | Chat-message id.
let dMReactionRequest = DMReactionRequest(emoji: "emoji_example", accountId: "accountId_example") // DMReactionRequest | 

// React to a DM message.
DirectMessagesAPI.addDMReaction(messageId: messageId, dMReactionRequest: dMReactionRequest) { (response, error) in
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
 **messageId** | **String** | Chat-message id. | 
 **dMReactionRequest** | [**DMReactionRequest**](DMReactionRequest.md) |  | 

### Return type

[**DMReactionResponse**](DMReactionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachToDMMessage**
```swift
    open class func attachToDMMessage(messageId: String, dMAttachRequest: DMAttachRequest, completion: @escaping (_ data: DMMessageEnvelope?, _ error: Error?) -> Void)
```

Attach a file/image/etc. to an existing DM message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | Chat-message id.
let dMAttachRequest = DMAttachRequest(kind: "kind_example", url: "url_example", filename: "filename_example", sizeBytes: 123, mimeType: "mimeType_example", thumbnailUrl: "thumbnailUrl_example", width: 123, height: 123, accountId: "accountId_example") // DMAttachRequest | 

// Attach a file/image/etc. to an existing DM message.
DirectMessagesAPI.attachToDMMessage(messageId: messageId, dMAttachRequest: dMAttachRequest) { (response, error) in
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
 **messageId** | **String** | Chat-message id. | 
 **dMAttachRequest** | [**DMAttachRequest**](DMAttachRequest.md) |  | 

### Return type

[**DMMessageEnvelope**](DMMessageEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeDMAction**
```swift
    open class func executeDMAction(executeChatActionRequest: ExecuteChatActionRequest, completion: @escaping (_ data: ExecuteChatActionResponse?, _ error: Error?) -> Void)
```

Dispatch a DM action by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let executeChatActionRequest = ExecuteChatActionRequest(actionId: "actionId_example", params: 123) // ExecuteChatActionRequest | 

// Dispatch a DM action by id.
DirectMessagesAPI.executeDMAction(executeChatActionRequest: executeChatActionRequest) { (response, error) in
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
 **executeChatActionRequest** | [**ExecuteChatActionRequest**](ExecuteChatActionRequest.md) |  | 

### Return type

[**ExecuteChatActionResponse**](ExecuteChatActionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forwardDMMessage**
```swift
    open class func forwardDMMessage(messageId: String, dMForwardRequest: DMForwardRequest, completion: @escaping (_ data: DMMessageEnvelope?, _ error: Error?) -> Void)
```

Forward a DM message to another DM or channel.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | Chat-message id.
let dMForwardRequest = DMForwardRequest(toDmId: "toDmId_example", toChannelId: "toChannelId_example", accountId: "accountId_example") // DMForwardRequest | 

// Forward a DM message to another DM or channel.
DirectMessagesAPI.forwardDMMessage(messageId: messageId, dMForwardRequest: dMForwardRequest) { (response, error) in
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
 **messageId** | **String** | Chat-message id. | 
 **dMForwardRequest** | [**DMForwardRequest**](DMForwardRequest.md) |  | 

### Return type

[**DMMessageEnvelope**](DMMessageEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDMUser**
```swift
    open class func getDMUser(id: String, accountId: String? = nil, completion: @escaping (_ data: GetChatUserResponse?, _ error: Error?) -> Void)
```

Fetch one chat user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Chat-user id (provider-scoped).
let accountId = "accountId_example" // String |  (optional)

// Fetch one chat user.
DirectMessagesAPI.getDMUser(id: id, accountId: accountId) { (response, error) in
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
 **id** | **String** | Chat-user id (provider-scoped). | 
 **accountId** | **String** |  | [optional] 

### Return type

[**GetChatUserResponse**](GetChatUserResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDMActions**
```swift
    open class func listDMActions(completion: @escaping (_ data: ChatActionsList?, _ error: Error?) -> Void)
```

Discover the action catalog for DirectMessages.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Discover the action catalog for DirectMessages.
DirectMessagesAPI.listDMActions() { (response, error) in
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

[**ChatActionsList**](ChatActionsList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDMPinnedMessages**
```swift
    open class func listDMPinnedMessages(dmId: String, accountId: String? = nil, completion: @escaping (_ data: DMPinnedList?, _ error: Error?) -> Void)
```

List pinned messages in a DM conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | Direct-message conversation id.
let accountId = "accountId_example" // String |  (optional)

// List pinned messages in a DM conversation.
DirectMessagesAPI.listDMPinnedMessages(dmId: dmId, accountId: accountId) { (response, error) in
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
 **dmId** | **String** | Direct-message conversation id. | 
 **accountId** | **String** |  | [optional] 

### Return type

[**DMPinnedList**](DMPinnedList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDMThreadReplies**
```swift
    open class func listDMThreadReplies(dmId: String, messageId: String, accountId: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List replies in a DM message thread.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | Direct-message conversation id.
let messageId = "messageId_example" // String | Chat-message id.
let accountId = "accountId_example" // String |  (optional)

// List replies in a DM message thread.
DirectMessagesAPI.listDMThreadReplies(dmId: dmId, messageId: messageId, accountId: accountId) { (response, error) in
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
 **dmId** | **String** | Direct-message conversation id. | 
 **messageId** | **String** | Chat-message id. | 
 **accountId** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDMUsers**
```swift
    open class func listDMUsers(accountIds: [String]? = nil, providers: [String]? = nil, xWorkspaceID: String? = nil, limit: Int? = nil, cursor: String? = nil, completion: @escaping (_ data: ListChatUsersResponse?, _ error: Error?) -> Void)
```

List chat users (DM contacts) across connected accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountIds = ["inner_example"] // [String] | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  (optional)
let providers = ["inner_example"] // [String] | Repeatable. Restrict to these provider ids (`gmail`, `outlook`). (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let limit = 987 // Int |  (optional)
let cursor = "cursor_example" // String |  (optional)

// List chat users (DM contacts) across connected accounts.
DirectMessagesAPI.listDMUsers(accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, limit: limit, cursor: cursor) { (response, error) in
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
 **limit** | **Int** |  | [optional] 
 **cursor** | **String** |  | [optional] 

### Return type

[**ListChatUsersResponse**](ListChatUsersResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDirectConversationsEnriched**
```swift
    open class func listDirectConversationsEnriched(accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Enriched DM conversation list with unread + pin + draft state.

Native fast-path. Returns conversations augmented with the DM-feature state (unread counts, pinned/muted flags, saved drafts) the renderer's DM UI consumes. The shape is provider-specific and treated as opaque. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountId = "accountId_example" // String |  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Enriched DM conversation list with unread + pin + draft state.
DirectMessagesAPI.listDirectConversationsEnriched(accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **accountId** | **String** |  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDirectMessageConversations**
```swift
    open class func listDirectMessageConversations(accountIds: [String]? = nil, providers: [String]? = nil, xWorkspaceID: String? = nil, limit: Int? = nil, cursor: String? = nil, includeArchived: Bool? = nil, completion: @escaping (_ data: ListChannelsResponse?, _ error: Error?) -> Void)
```

List 1:1 and group DM conversations.

Returns DM-type conversations only (`type: im | mpim`). Channel-type conversations are surfaced via `/v1/channels`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountIds = ["inner_example"] // [String] | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  (optional)
let providers = ["inner_example"] // [String] | Repeatable. Restrict to these provider ids (`gmail`, `outlook`). (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let limit = 987 // Int |  (optional)
let cursor = "cursor_example" // String |  (optional)
let includeArchived = true // Bool |  (optional) (default to false)

// List 1:1 and group DM conversations.
DirectMessagesAPI.listDirectMessageConversations(accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, limit: limit, cursor: cursor, includeArchived: includeArchived) { (response, error) in
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
 **limit** | **Int** |  | [optional] 
 **cursor** | **String** |  | [optional] 
 **includeArchived** | **Bool** |  | [optional] [default to false]

### Return type

[**ListChannelsResponse**](ListChannelsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDirectMessages**
```swift
    open class func listDirectMessages(channel: String, accountId: String? = nil, accountIds: [String]? = nil, providers: [String]? = nil, xWorkspaceID: String? = nil, limit: Int? = nil, cursor: String? = nil, oldestFirst: Bool? = nil, completion: @escaping (_ data: ListMessagesResponse?, _ error: Error?) -> Void)
```

List messages in a DM conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let channel = "channel_example" // String | DM conversation id.
let accountId = "accountId_example" // String |  (optional)
let accountIds = ["inner_example"] // [String] | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  (optional)
let providers = ["inner_example"] // [String] | Repeatable. Restrict to these provider ids (`gmail`, `outlook`). (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let limit = 987 // Int |  (optional)
let cursor = "cursor_example" // String |  (optional)
let oldestFirst = true // Bool |  (optional)

// List messages in a DM conversation.
DirectMessagesAPI.listDirectMessages(channel: channel, accountId: accountId, accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, limit: limit, cursor: cursor, oldestFirst: oldestFirst) { (response, error) in
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
 **channel** | **String** | DM conversation id. | 
 **accountId** | **String** |  | [optional] 
 **accountIds** | [**[String]**](String.md) | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to &#x60;providers&#x60; — when both are set the intersection is used.  | [optional] 
 **providers** | [**[String]**](String.md) | Repeatable. Restrict to these provider ids (&#x60;gmail&#x60;, &#x60;outlook&#x60;). | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **limit** | **Int** |  | [optional] 
 **cursor** | **String** |  | [optional] 
 **oldestFirst** | **Bool** |  | [optional] 

### Return type

[**ListMessagesResponse**](ListMessagesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markDMRead**
```swift
    open class func markDMRead(dmId: String, dMMarkReadRequest: DMMarkReadRequest, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Mark a DM message read.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | Direct-message conversation id.
let dMMarkReadRequest = DMMarkReadRequest(messageId: "messageId_example", accountId: "accountId_example") // DMMarkReadRequest | 

// Mark a DM message read.
DirectMessagesAPI.markDMRead(dmId: dmId, dMMarkReadRequest: dMMarkReadRequest) { (response, error) in
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
 **dmId** | **String** | Direct-message conversation id. | 
 **dMMarkReadRequest** | [**DMMarkReadRequest**](DMMarkReadRequest.md) |  | 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **muteDM**
```swift
    open class func muteDM(dmId: String, dMMuteRequest: DMMuteRequest, completion: @escaping (_ data: DMMuteResponse?, _ error: Error?) -> Void)
```

Mute a DM conversation (until a time, or forever).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | Direct-message conversation id.
let dMMuteRequest = DMMuteRequest(untilSeconds: 123, forever: false, accountId: "accountId_example") // DMMuteRequest | 

// Mute a DM conversation (until a time, or forever).
DirectMessagesAPI.muteDM(dmId: dmId, dMMuteRequest: dMMuteRequest) { (response, error) in
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
 **dmId** | **String** | Direct-message conversation id. | 
 **dMMuteRequest** | [**DMMuteRequest**](DMMuteRequest.md) |  | 

### Return type

[**DMMuteResponse**](DMMuteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pinDMConversation**
```swift
    open class func pinDMConversation(dmId: String, accountId: String? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Pin a DM conversation to the top of the sidebar.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | Direct-message conversation id.
let accountId = "accountId_example" // String |  (optional)

// Pin a DM conversation to the top of the sidebar.
DirectMessagesAPI.pinDMConversation(dmId: dmId, accountId: accountId) { (response, error) in
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
 **dmId** | **String** | Direct-message conversation id. | 
 **accountId** | **String** |  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pinDMMessage**
```swift
    open class func pinDMMessage(messageId: String, channelMembershipRequest: ChannelMembershipRequest? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Pin a DM message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | Chat-message id.
let channelMembershipRequest = ChannelMembershipRequest(accountId: "accountId_example") // ChannelMembershipRequest |  (optional)

// Pin a DM message.
DirectMessagesAPI.pinDMMessage(messageId: messageId, channelMembershipRequest: channelMembershipRequest) { (response, error) in
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
 **messageId** | **String** | Chat-message id. | 
 **channelMembershipRequest** | [**ChannelMembershipRequest**](ChannelMembershipRequest.md) |  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDMThreadReply**
```swift
    open class func postDMThreadReply(dmId: String, messageId: String, dMThreadReplyRequest: DMThreadReplyRequest, accountId: String? = nil, completion: @escaping (_ data: DMMessageEnvelope?, _ error: Error?) -> Void)
```

Reply in a DM message thread.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | Direct-message conversation id.
let messageId = "messageId_example" // String | Chat-message id.
let dMThreadReplyRequest = DMThreadReplyRequest(content: "content_example", accountId: "accountId_example") // DMThreadReplyRequest | 
let accountId = "accountId_example" // String |  (optional)

// Reply in a DM message thread.
DirectMessagesAPI.postDMThreadReply(dmId: dmId, messageId: messageId, dMThreadReplyRequest: dMThreadReplyRequest, accountId: accountId) { (response, error) in
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
 **dmId** | **String** | Direct-message conversation id. | 
 **messageId** | **String** | Chat-message id. | 
 **dMThreadReplyRequest** | [**DMThreadReplyRequest**](DMThreadReplyRequest.md) |  | 
 **accountId** | **String** |  | [optional] 

### Return type

[**DMMessageEnvelope**](DMMessageEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeDMReaction**
```swift
    open class func removeDMReaction(messageId: String, emoji: String, accountId: String? = nil, completion: @escaping (_ data: DMReactionResponse?, _ error: Error?) -> Void)
```

Remove a DM message reaction.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | Chat-message id.
let emoji = "emoji_example" // String | Reaction emoji (e.g. `+1`, `eyes`, `pepper`).
let accountId = "accountId_example" // String |  (optional)

// Remove a DM message reaction.
DirectMessagesAPI.removeDMReaction(messageId: messageId, emoji: emoji, accountId: accountId) { (response, error) in
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
 **messageId** | **String** | Chat-message id. | 
 **emoji** | **String** | Reaction emoji (e.g. &#x60;+1&#x60;, &#x60;eyes&#x60;, &#x60;pepper&#x60;). | 
 **accountId** | **String** |  | [optional] 

### Return type

[**DMReactionResponse**](DMReactionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchDirectMessages**
```swift
    open class func searchDirectMessages(q: String, limit: Int? = nil, dmId: String? = nil, user: String? = nil, accountId: String? = nil, completion: @escaping (_ data: DMSearchResults?, _ error: Error?) -> Void)
```

Search across DM messages.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let q = "q_example" // String | Free-form query string.
let limit = 987 // Int |  (optional)
let dmId = "dmId_example" // String | Restrict to one conversation. (optional)
let user = "user_example" // String | Restrict to messages from this user id. (optional)
let accountId = "accountId_example" // String |  (optional)

// Search across DM messages.
DirectMessagesAPI.searchDirectMessages(q: q, limit: limit, dmId: dmId, user: user, accountId: accountId) { (response, error) in
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
 **q** | **String** | Free-form query string. | 
 **limit** | **Int** |  | [optional] 
 **dmId** | **String** | Restrict to one conversation. | [optional] 
 **user** | **String** | Restrict to messages from this user id. | [optional] 
 **accountId** | **String** |  | [optional] 

### Return type

[**DMSearchResults**](DMSearchResults.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendDirectMessage**
```swift
    open class func sendDirectMessage(sendChatMessageRequest: SendChatMessageRequest, completion: @escaping (_ data: SendChatMessageResponse?, _ error: Error?) -> Void)
```

Send a DM.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let sendChatMessageRequest = SendChatMessageRequest(accountId: "accountId_example", channel: "channel_example", text: "text_example", threadId: "threadId_example", blocks: ["TODO"]) // SendChatMessageRequest | 

// Send a DM.
DirectMessagesAPI.sendDirectMessage(sendChatMessageRequest: sendChatMessageRequest) { (response, error) in
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
 **sendChatMessageRequest** | [**SendChatMessageRequest**](SendChatMessageRequest.md) |  | 

### Return type

[**SendChatMessageResponse**](SendChatMessageResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDMDraft**
```swift
    open class func setDMDraft(dmId: String, dMSetDraftRequest: DMSetDraftRequest, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Save the unsent draft text for a DM.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | Direct-message conversation id.
let dMSetDraftRequest = DMSetDraftRequest(text: "text_example", accountId: "accountId_example") // DMSetDraftRequest | 

// Save the unsent draft text for a DM.
DirectMessagesAPI.setDMDraft(dmId: dmId, dMSetDraftRequest: dMSetDraftRequest) { (response, error) in
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
 **dmId** | **String** | Direct-message conversation id. | 
 **dMSetDraftRequest** | [**DMSetDraftRequest**](DMSetDraftRequest.md) |  | 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unpinDMConversation**
```swift
    open class func unpinDMConversation(dmId: String, accountId: String? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Unpin a DM conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | Direct-message conversation id.
let accountId = "accountId_example" // String |  (optional)

// Unpin a DM conversation.
DirectMessagesAPI.unpinDMConversation(dmId: dmId, accountId: accountId) { (response, error) in
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
 **dmId** | **String** | Direct-message conversation id. | 
 **accountId** | **String** |  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unpinDMMessage**
```swift
    open class func unpinDMMessage(messageId: String, accountId: String? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Unpin a DM message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | Chat-message id.
let accountId = "accountId_example" // String |  (optional)

// Unpin a DM message.
DirectMessagesAPI.unpinDMMessage(messageId: messageId, accountId: accountId) { (response, error) in
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
 **messageId** | **String** | Chat-message id. | 
 **accountId** | **String** |  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceExecuteDMAction**
```swift
    open class func workspaceExecuteDMAction(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

DirectMessagesAPI.workspaceExecuteDMAction(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

# **workspaceGetDMUser**
```swift
    open class func workspaceGetDMUser(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

DirectMessagesAPI.workspaceGetDMUser(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceListDMActions**
```swift
    open class func workspaceListDMActions(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

DirectMessagesAPI.workspaceListDMActions(org: org, workspace: workspace) { (response, error) in
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

# **workspaceListDMConversations**
```swift
    open class func workspaceListDMConversations(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

DirectMessagesAPI.workspaceListDMConversations(org: org, workspace: workspace) { (response, error) in
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

# **workspaceListDMMessages**
```swift
    open class func workspaceListDMMessages(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

DirectMessagesAPI.workspaceListDMMessages(org: org, workspace: workspace) { (response, error) in
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

# **workspaceListDMUsers**
```swift
    open class func workspaceListDMUsers(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

DirectMessagesAPI.workspaceListDMUsers(org: org, workspace: workspace) { (response, error) in
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

# **workspaceListDirectMessages**
```swift
    open class func workspaceListDirectMessages(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

DirectMessagesAPI.workspaceListDirectMessages(org: org, workspace: workspace) { (response, error) in
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

# **workspaceSendDirectMessage**
```swift
    open class func workspaceSendDirectMessage(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

DirectMessagesAPI.workspaceSendDirectMessage(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

