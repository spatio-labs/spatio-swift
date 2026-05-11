# ChannelsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChannel**](ChannelsAPI.md#createchannel) | **POST** /v1/channels | Create a channel.
[**executeChannelAction**](ChannelsAPI.md#executechannelaction) | **POST** /v1/channels/execute | Dispatch a channel action by id.
[**joinChannel**](ChannelsAPI.md#joinchannel) | **POST** /v1/channels/{id}/join | Join a channel.
[**leaveChannel**](ChannelsAPI.md#leavechannel) | **POST** /v1/channels/{id}/leave | Leave a channel.
[**listChannelActions**](ChannelsAPI.md#listchannelactions) | **GET** /v1/channels/actions | Discover the action catalog for the Channels platform.
[**listChannelMessages**](ChannelsAPI.md#listchannelmessages) | **GET** /v1/channels/messages | List messages in a channel.
[**listChannels**](ChannelsAPI.md#listchannels) | **GET** /v1/channels | List group channels across connected chat providers.
[**sendChannelMessage**](ChannelsAPI.md#sendchannelmessage) | **POST** /v1/channels/messages | Send a message to a channel.
[**workspaceCreateChannel**](ChannelsAPI.md#workspacecreatechannel) | **POST** /v1/organizations/{org}/workspaces/{workspace}/channels | 
[**workspaceExecuteChannelAction**](ChannelsAPI.md#workspaceexecutechannelaction) | **POST** /v1/organizations/{org}/workspaces/{workspace}/channels/execute | 
[**workspaceJoinChannel**](ChannelsAPI.md#workspacejoinchannel) | **POST** /v1/organizations/{org}/workspaces/{workspace}/channels/{id}/join | 
[**workspaceLeaveChannel**](ChannelsAPI.md#workspaceleavechannel) | **POST** /v1/organizations/{org}/workspaces/{workspace}/channels/{id}/leave | 
[**workspaceListChannelActions**](ChannelsAPI.md#workspacelistchannelactions) | **GET** /v1/organizations/{org}/workspaces/{workspace}/channels/actions | 
[**workspaceListChannelMessages**](ChannelsAPI.md#workspacelistchannelmessages) | **GET** /v1/organizations/{org}/workspaces/{workspace}/channels/messages | 
[**workspaceListChannels**](ChannelsAPI.md#workspacelistchannels) | **GET** /v1/organizations/{org}/workspaces/{workspace}/channels | 
[**workspaceSendChannelMessage**](ChannelsAPI.md#workspacesendchannelmessage) | **POST** /v1/organizations/{org}/workspaces/{workspace}/channels/messages | 


# **createChannel**
```swift
    open class func createChannel(createChannelRequest: CreateChannelRequest, completion: @escaping (_ data: CreateChannelResponse?, _ error: Error?) -> Void)
```

Create a channel.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createChannelRequest = CreateChannelRequest(accountId: "accountId_example", name: "name_example", description: "description_example", isPrivate: false) // CreateChannelRequest | 

// Create a channel.
ChannelsAPI.createChannel(createChannelRequest: createChannelRequest) { (response, error) in
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
 **createChannelRequest** | [**CreateChannelRequest**](CreateChannelRequest.md) |  | 

### Return type

[**CreateChannelResponse**](CreateChannelResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeChannelAction**
```swift
    open class func executeChannelAction(executeChatActionRequest: ExecuteChatActionRequest, completion: @escaping (_ data: ExecuteChatActionResponse?, _ error: Error?) -> Void)
```

Dispatch a channel action by id.

Generic action-execution endpoint. `params` shape varies per `action_id`; consult `GET /v1/channels/actions` for the per-id contract. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let executeChatActionRequest = ExecuteChatActionRequest(actionId: "actionId_example", params: 123) // ExecuteChatActionRequest | 

// Dispatch a channel action by id.
ChannelsAPI.executeChannelAction(executeChatActionRequest: executeChatActionRequest) { (response, error) in
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

# **joinChannel**
```swift
    open class func joinChannel(id: String, channelMembershipRequest: ChannelMembershipRequest? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Join a channel.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Channel id (provider-scoped).
let channelMembershipRequest = ChannelMembershipRequest(accountId: "accountId_example") // ChannelMembershipRequest |  (optional)

// Join a channel.
ChannelsAPI.joinChannel(id: id, channelMembershipRequest: channelMembershipRequest) { (response, error) in
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
 **id** | **String** | Channel id (provider-scoped). | 
 **channelMembershipRequest** | [**ChannelMembershipRequest**](ChannelMembershipRequest.md) |  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leaveChannel**
```swift
    open class func leaveChannel(id: String, channelMembershipRequest: ChannelMembershipRequest? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Leave a channel.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Channel id (provider-scoped).
let channelMembershipRequest = ChannelMembershipRequest(accountId: "accountId_example") // ChannelMembershipRequest |  (optional)

// Leave a channel.
ChannelsAPI.leaveChannel(id: id, channelMembershipRequest: channelMembershipRequest) { (response, error) in
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
 **id** | **String** | Channel id (provider-scoped). | 
 **channelMembershipRequest** | [**ChannelMembershipRequest**](ChannelMembershipRequest.md) |  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listChannelActions**
```swift
    open class func listChannelActions(completion: @escaping (_ data: ChatActionsList?, _ error: Error?) -> Void)
```

Discover the action catalog for the Channels platform.

Returns the action descriptors the agent layer dispatches via `POST /v1/channels/execute`. Same pattern as the DirectMessages action surface. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Discover the action catalog for the Channels platform.
ChannelsAPI.listChannelActions() { (response, error) in
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

# **listChannelMessages**
```swift
    open class func listChannelMessages(channel: String, accountId: String? = nil, accountIds: [String]? = nil, providers: [String]? = nil, xWorkspaceID: String? = nil, limit: Int? = nil, cursor: String? = nil, oldestFirst: Bool? = nil, completion: @escaping (_ data: ListMessagesResponse?, _ error: Error?) -> Void)
```

List messages in a channel.

Channel ids are provider-scoped; pass `?accountId=` (preferred) or `?accountIds=` to disambiguate when the same id exists on multiple connected accounts (rare). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let channel = "channel_example" // String | Channel id.
let accountId = "accountId_example" // String |  (optional)
let accountIds = ["inner_example"] // [String] | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  (optional)
let providers = ["inner_example"] // [String] | Repeatable. Restrict to these provider ids (`gmail`, `outlook`). (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let limit = 987 // Int |  (optional)
let cursor = "cursor_example" // String |  (optional)
let oldestFirst = true // Bool |  (optional) (default to false)

// List messages in a channel.
ChannelsAPI.listChannelMessages(channel: channel, accountId: accountId, accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, limit: limit, cursor: cursor, oldestFirst: oldestFirst) { (response, error) in
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
 **channel** | **String** | Channel id. | 
 **accountId** | **String** |  | [optional] 
 **accountIds** | [**[String]**](String.md) | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to &#x60;providers&#x60; — when both are set the intersection is used.  | [optional] 
 **providers** | [**[String]**](String.md) | Repeatable. Restrict to these provider ids (&#x60;gmail&#x60;, &#x60;outlook&#x60;). | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **limit** | **Int** |  | [optional] 
 **cursor** | **String** |  | [optional] 
 **oldestFirst** | **Bool** |  | [optional] [default to false]

### Return type

[**ListMessagesResponse**](ListMessagesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listChannels**
```swift
    open class func listChannels(accountIds: [String]? = nil, providers: [String]? = nil, xWorkspaceID: String? = nil, limit: Int? = nil, cursor: String? = nil, includeArchived: Bool? = nil, types: [String]? = nil, completion: @escaping (_ data: ListChannelsResponse?, _ error: Error?) -> Void)
```

List group channels across connected chat providers.

Fan-out list. The Channels surface filters to channel-type conversations only (`type: channel | private`); for direct messages use `/v1/direct-messages`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountIds = ["inner_example"] // [String] | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  (optional)
let providers = ["inner_example"] // [String] | Repeatable. Restrict to these provider ids (`gmail`, `outlook`). (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let limit = 987 // Int |  (optional)
let cursor = "cursor_example" // String | Provider-specific pagination cursor. (optional)
let includeArchived = true // Bool |  (optional) (default to false)
let types = ["inner_example"] // [String] | Repeatable filter on `Channel.type`. Defaults applied by the platform exclude DMs; passing this overrides.  (optional)

// List group channels across connected chat providers.
ChannelsAPI.listChannels(accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, limit: limit, cursor: cursor, includeArchived: includeArchived, types: types) { (response, error) in
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
 **cursor** | **String** | Provider-specific pagination cursor. | [optional] 
 **includeArchived** | **Bool** |  | [optional] [default to false]
 **types** | [**[String]**](String.md) | Repeatable filter on &#x60;Channel.type&#x60;. Defaults applied by the platform exclude DMs; passing this overrides.  | [optional] 

### Return type

[**ListChannelsResponse**](ListChannelsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendChannelMessage**
```swift
    open class func sendChannelMessage(sendChatMessageRequest: SendChatMessageRequest, completion: @escaping (_ data: SendChatMessageResponse?, _ error: Error?) -> Void)
```

Send a message to a channel.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let sendChatMessageRequest = SendChatMessageRequest(accountId: "accountId_example", channel: "channel_example", text: "text_example", threadId: "threadId_example", blocks: ["TODO"]) // SendChatMessageRequest | 

// Send a message to a channel.
ChannelsAPI.sendChannelMessage(sendChatMessageRequest: sendChatMessageRequest) { (response, error) in
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

# **workspaceCreateChannel**
```swift
    open class func workspaceCreateChannel(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

ChannelsAPI.workspaceCreateChannel(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

# **workspaceExecuteChannelAction**
```swift
    open class func workspaceExecuteChannelAction(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

ChannelsAPI.workspaceExecuteChannelAction(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

# **workspaceJoinChannel**
```swift
    open class func workspaceJoinChannel(org: String, workspace: String, id: String, requestBody: [String: AnyCodable]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] |  (optional)

ChannelsAPI.workspaceJoinChannel(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceLeaveChannel**
```swift
    open class func workspaceLeaveChannel(org: String, workspace: String, id: String, requestBody: [String: AnyCodable]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] |  (optional)

ChannelsAPI.workspaceLeaveChannel(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListChannelActions**
```swift
    open class func workspaceListChannelActions(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

ChannelsAPI.workspaceListChannelActions(org: org, workspace: workspace) { (response, error) in
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

# **workspaceListChannelMessages**
```swift
    open class func workspaceListChannelMessages(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

ChannelsAPI.workspaceListChannelMessages(org: org, workspace: workspace) { (response, error) in
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

# **workspaceListChannels**
```swift
    open class func workspaceListChannels(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

ChannelsAPI.workspaceListChannels(org: org, workspace: workspace) { (response, error) in
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

# **workspaceSendChannelMessage**
```swift
    open class func workspaceSendChannelMessage(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

ChannelsAPI.workspaceSendChannelMessage(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

