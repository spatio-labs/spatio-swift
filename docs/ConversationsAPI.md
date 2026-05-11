# ConversationsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConversation**](ConversationsAPI.md#createconversation) | **POST** /v1/conversations | Persist a new LLM conversation.
[**deleteConversation**](ConversationsAPI.md#deleteconversation) | **DELETE** /v1/conversations/{id} | Soft-delete a conversation.
[**getConversation**](ConversationsAPI.md#getconversation) | **GET** /v1/conversations/{id} | Fetch one conversation.
[**getLatestConversationForContext**](ConversationsAPI.md#getlatestconversationforcontext) | **GET** /v1/conversations/latest | Fetch the most recently active conversation for a given context tag.
[**listConversationMessages**](ConversationsAPI.md#listconversationmessages) | **GET** /v1/conversations/{id}/messages | List messages in a conversation.
[**listConversations**](ConversationsAPI.md#listconversations) | **GET** /v1/conversations | List the caller&#39;s persisted LLM conversations.
[**saveConversationMessage**](ConversationsAPI.md#saveconversationmessage) | **POST** /v1/conversations/{id}/messages | Append a message to a conversation.
[**updateConversation**](ConversationsAPI.md#updateconversation) | **PATCH** /v1/conversations/{id} | Update conversation metadata (title, context, cwd, session_id, pinned).
[**updateConversationMessageMetadata**](ConversationsAPI.md#updateconversationmessagemetadata) | **PATCH** /v1/conversations/{id}/messages | Patch metadata on an existing message. Body must include the message id (path is the conversation id, not the message). 


# **createConversation**
```swift
    open class func createConversation(createConversationRequest: CreateConversationRequest? = nil, completion: @escaping (_ data: Conversation?, _ error: Error?) -> Void)
```

Persist a new LLM conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createConversationRequest = CreateConversationRequest(title: "title_example", context: "context_example", cwd: "cwd_example", sessionId: "sessionId_example", metadata: "TODO") // CreateConversationRequest |  (optional)

// Persist a new LLM conversation.
ConversationsAPI.createConversation(createConversationRequest: createConversationRequest) { (response, error) in
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
 **createConversationRequest** | [**CreateConversationRequest**](CreateConversationRequest.md) |  | [optional] 

### Return type

[**Conversation**](Conversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteConversation**
```swift
    open class func deleteConversation(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Soft-delete a conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Soft-delete a conversation.
ConversationsAPI.deleteConversation(id: id) { (response, error) in
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

# **getConversation**
```swift
    open class func getConversation(id: String, completion: @escaping (_ data: Conversation?, _ error: Error?) -> Void)
```

Fetch one conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch one conversation.
ConversationsAPI.getConversation(id: id) { (response, error) in
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

[**Conversation**](Conversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatestConversationForContext**
```swift
    open class func getLatestConversationForContext(context: String, completion: @escaping (_ data: Conversation?, _ error: Error?) -> Void)
```

Fetch the most recently active conversation for a given context tag.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let context = "context_example" // String | 

// Fetch the most recently active conversation for a given context tag.
ConversationsAPI.getLatestConversationForContext(context: context) { (response, error) in
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
 **context** | **String** |  | 

### Return type

[**Conversation**](Conversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConversationMessages**
```swift
    open class func listConversationMessages(id: String, limit: Int? = nil, before: String? = nil, completion: @escaping (_ data: [ConversationMessage]?, _ error: Error?) -> Void)
```

List messages in a conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let limit = 987 // Int |  (optional)
let before = "before_example" // String |  (optional)

// List messages in a conversation.
ConversationsAPI.listConversationMessages(id: id, limit: limit, before: before) { (response, error) in
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
 **limit** | **Int** |  | [optional] 
 **before** | **String** |  | [optional] 

### Return type

[**[ConversationMessage]**](ConversationMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConversations**
```swift
    open class func listConversations(context: String? = nil, limit: Int? = nil, completion: @escaping (_ data: [Conversation]?, _ error: Error?) -> Void)
```

List the caller's persisted LLM conversations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let context = "context_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// List the caller's persisted LLM conversations.
ConversationsAPI.listConversations(context: context, limit: limit) { (response, error) in
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
 **context** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

[**[Conversation]**](Conversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveConversationMessage**
```swift
    open class func saveConversationMessage(id: String, saveMessageRequest: SaveMessageRequest, completion: @escaping (_ data: ConversationMessage?, _ error: Error?) -> Void)
```

Append a message to a conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let saveMessageRequest = SaveMessageRequest(role: "role_example", content: "content_example", metadata: "TODO") // SaveMessageRequest | 

// Append a message to a conversation.
ConversationsAPI.saveConversationMessage(id: id, saveMessageRequest: saveMessageRequest) { (response, error) in
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
 **saveMessageRequest** | [**SaveMessageRequest**](SaveMessageRequest.md) |  | 

### Return type

[**ConversationMessage**](ConversationMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConversation**
```swift
    open class func updateConversation(id: String, updateConversationRequest: UpdateConversationRequest, completion: @escaping (_ data: Conversation?, _ error: Error?) -> Void)
```

Update conversation metadata (title, context, cwd, session_id, pinned).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateConversationRequest = UpdateConversationRequest(title: "title_example", context: "context_example", cwd: "cwd_example", sessionId: "sessionId_example", pinned: false) // UpdateConversationRequest | 

// Update conversation metadata (title, context, cwd, session_id, pinned).
ConversationsAPI.updateConversation(id: id, updateConversationRequest: updateConversationRequest) { (response, error) in
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
 **updateConversationRequest** | [**UpdateConversationRequest**](UpdateConversationRequest.md) |  | 

### Return type

[**Conversation**](Conversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConversationMessageMetadata**
```swift
    open class func updateConversationMessageMetadata(id: String, updateMessageMetadataRequest: UpdateMessageMetadataRequest, completion: @escaping (_ data: ConversationMessage?, _ error: Error?) -> Void)
```

Patch metadata on an existing message. Body must include the message id (path is the conversation id, not the message). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateMessageMetadataRequest = UpdateMessageMetadataRequest(id: "id_example", metadata: "TODO") // UpdateMessageMetadataRequest | 

// Patch metadata on an existing message. Body must include the message id (path is the conversation id, not the message). 
ConversationsAPI.updateConversationMessageMetadata(id: id, updateMessageMetadataRequest: updateMessageMetadataRequest) { (response, error) in
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
 **updateMessageMetadataRequest** | [**UpdateMessageMetadataRequest**](UpdateMessageMetadataRequest.md) |  | 

### Return type

[**ConversationMessage**](ConversationMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

