# NativeDMAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addNativeDMReaction**](NativeDMAPI.md#addnativedmreaction) | **POST** /v1/native/dm/messages/{messageId}/reactions | Add a reaction to a DM message.
[**attachToNativeDMMessage**](NativeDMAPI.md#attachtonativedmmessage) | **POST** /v1/native/dm/messages/{messageId}/attachments | Attach a file to a DM message.
[**deleteNativeDMMessage**](NativeDMAPI.md#deletenativedmmessage) | **DELETE** /v1/native/dm/{dmId}/messages/{messageId} | Delete a DM message.
[**forwardNativeDMMessage**](NativeDMAPI.md#forwardnativedmmessage) | **POST** /v1/native/dm/messages/{messageId}/forward | Forward a DM message to another conversation.
[**listNativeDMChannels**](NativeDMAPI.md#listnativedmchannels) | **GET** /v1/native/dm | List the caller&#39;s DM channels.
[**listNativeDMConversations**](NativeDMAPI.md#listnativedmconversations) | **GET** /v1/native/dm/conversations | List DM conversations with metadata (last message, unread count, etc.).
[**listNativeDMMessages**](NativeDMAPI.md#listnativedmmessages) | **GET** /v1/native/dm/{dmId}/messages | List messages in a DM.
[**listNativeDMPinnedMessages**](NativeDMAPI.md#listnativedmpinnedmessages) | **GET** /v1/native/dm/{dmId}/pinned | List pinned messages in a DM.
[**listNativeDMThreadReplies**](NativeDMAPI.md#listnativedmthreadreplies) | **GET** /v1/native/dm/{dmId}/messages/{messageId}/replies | List threaded replies on a message.
[**markNativeDMRead**](NativeDMAPI.md#marknativedmread) | **POST** /v1/native/dm/{dmId}/read | Mark a DM as read.
[**muteNativeDM**](NativeDMAPI.md#mutenativedm) | **POST** /v1/native/dm/{dmId}/mute | Mute a DM.
[**pinNativeDMConversation**](NativeDMAPI.md#pinnativedmconversation) | **POST** /v1/native/dm/{dmId}/pin | Pin a DM conversation in the sidebar.
[**pinNativeDMMessage**](NativeDMAPI.md#pinnativedmmessage) | **POST** /v1/native/dm/messages/{messageId}/pin | Pin a DM message.
[**postNativeDMMessage**](NativeDMAPI.md#postnativedmmessage) | **POST** /v1/native/dm | Post a DM message (top-level entry).
[**postNativeDMThreadReply**](NativeDMAPI.md#postnativedmthreadreply) | **POST** /v1/native/dm/{dmId}/messages/{messageId}/replies | Post a threaded reply.
[**removeNativeDMReaction**](NativeDMAPI.md#removenativedmreaction) | **DELETE** /v1/native/dm/messages/{messageId}/reactions/{emoji} | Remove a reaction.
[**searchNativeDMMessages**](NativeDMAPI.md#searchnativedmmessages) | **GET** /v1/native/dm/search | Search DM messages.
[**setNativeDMDraft**](NativeDMAPI.md#setnativedmdraft) | **PUT** /v1/native/dm/{dmId}/draft | Save a draft on a DM conversation.
[**unpinNativeDMConversation**](NativeDMAPI.md#unpinnativedmconversation) | **DELETE** /v1/native/dm/{dmId}/pin | Unpin a DM conversation.
[**unpinNativeDMMessage**](NativeDMAPI.md#unpinnativedmmessage) | **DELETE** /v1/native/dm/messages/{messageId}/pin | Unpin a DM message.
[**updateNativeDMMessage**](NativeDMAPI.md#updatenativedmmessage) | **PATCH** /v1/native/dm/{dmId}/messages/{messageId} | Update a DM message body.


# **addNativeDMReaction**
```swift
    open class func addNativeDMReaction(messageId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Add a reaction to a DM message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Add a reaction to a DM message.
NativeDMAPI.addNativeDMReaction(messageId: messageId, requestBody: requestBody) { (response, error) in
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

# **attachToNativeDMMessage**
```swift
    open class func attachToNativeDMMessage(messageId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Attach a file to a DM message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Attach a file to a DM message.
NativeDMAPI.attachToNativeDMMessage(messageId: messageId, requestBody: requestBody) { (response, error) in
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

# **deleteNativeDMMessage**
```swift
    open class func deleteNativeDMMessage(dmId: String, messageId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a DM message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | 
let messageId = "messageId_example" // String | 

// Delete a DM message.
NativeDMAPI.deleteNativeDMMessage(dmId: dmId, messageId: messageId) { (response, error) in
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
 **dmId** | **String** |  | 
 **messageId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forwardNativeDMMessage**
```swift
    open class func forwardNativeDMMessage(messageId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Forward a DM message to another conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Forward a DM message to another conversation.
NativeDMAPI.forwardNativeDMMessage(messageId: messageId, requestBody: requestBody) { (response, error) in
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

# **listNativeDMChannels**
```swift
    open class func listNativeDMChannels(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List the caller's DM channels.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the caller's DM channels.
NativeDMAPI.listNativeDMChannels() { (response, error) in
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

# **listNativeDMConversations**
```swift
    open class func listNativeDMConversations(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List DM conversations with metadata (last message, unread count, etc.).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List DM conversations with metadata (last message, unread count, etc.).
NativeDMAPI.listNativeDMConversations() { (response, error) in
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

# **listNativeDMMessages**
```swift
    open class func listNativeDMMessages(dmId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List messages in a DM.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | 

// List messages in a DM.
NativeDMAPI.listNativeDMMessages(dmId: dmId) { (response, error) in
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
 **dmId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNativeDMPinnedMessages**
```swift
    open class func listNativeDMPinnedMessages(dmId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List pinned messages in a DM.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | 

// List pinned messages in a DM.
NativeDMAPI.listNativeDMPinnedMessages(dmId: dmId) { (response, error) in
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
 **dmId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNativeDMThreadReplies**
```swift
    open class func listNativeDMThreadReplies(dmId: String, messageId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List threaded replies on a message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | 
let messageId = "messageId_example" // String | 

// List threaded replies on a message.
NativeDMAPI.listNativeDMThreadReplies(dmId: dmId, messageId: messageId) { (response, error) in
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
 **dmId** | **String** |  | 
 **messageId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markNativeDMRead**
```swift
    open class func markNativeDMRead(dmId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Mark a DM as read.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | 

// Mark a DM as read.
NativeDMAPI.markNativeDMRead(dmId: dmId) { (response, error) in
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
 **dmId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **muteNativeDM**
```swift
    open class func muteNativeDM(dmId: String, requestBody: [String: AnyCodable]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Mute a DM.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] |  (optional)

// Mute a DM.
NativeDMAPI.muteNativeDM(dmId: dmId, requestBody: requestBody) { (response, error) in
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
 **dmId** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pinNativeDMConversation**
```swift
    open class func pinNativeDMConversation(dmId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Pin a DM conversation in the sidebar.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | 

// Pin a DM conversation in the sidebar.
NativeDMAPI.pinNativeDMConversation(dmId: dmId) { (response, error) in
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
 **dmId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pinNativeDMMessage**
```swift
    open class func pinNativeDMMessage(messageId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Pin a DM message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | 

// Pin a DM message.
NativeDMAPI.pinNativeDMMessage(messageId: messageId) { (response, error) in
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
 **messageId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postNativeDMMessage**
```swift
    open class func postNativeDMMessage(requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Post a DM message (top-level entry).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Post a DM message (top-level entry).
NativeDMAPI.postNativeDMMessage(requestBody: requestBody) { (response, error) in
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

# **postNativeDMThreadReply**
```swift
    open class func postNativeDMThreadReply(dmId: String, messageId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Post a threaded reply.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | 
let messageId = "messageId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Post a threaded reply.
NativeDMAPI.postNativeDMThreadReply(dmId: dmId, messageId: messageId, requestBody: requestBody) { (response, error) in
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
 **dmId** | **String** |  | 
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

# **removeNativeDMReaction**
```swift
    open class func removeNativeDMReaction(messageId: String, emoji: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove a reaction.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | 
let emoji = "emoji_example" // String | 

// Remove a reaction.
NativeDMAPI.removeNativeDMReaction(messageId: messageId, emoji: emoji) { (response, error) in
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
 **messageId** | **String** |  | 
 **emoji** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchNativeDMMessages**
```swift
    open class func searchNativeDMMessages(q: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Search DM messages.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let q = "q_example" // String |  (optional)

// Search DM messages.
NativeDMAPI.searchNativeDMMessages(q: q) { (response, error) in
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
 **q** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setNativeDMDraft**
```swift
    open class func setNativeDMDraft(dmId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Save a draft on a DM conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Save a draft on a DM conversation.
NativeDMAPI.setNativeDMDraft(dmId: dmId, requestBody: requestBody) { (response, error) in
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
 **dmId** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unpinNativeDMConversation**
```swift
    open class func unpinNativeDMConversation(dmId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unpin a DM conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | 

// Unpin a DM conversation.
NativeDMAPI.unpinNativeDMConversation(dmId: dmId) { (response, error) in
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
 **dmId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unpinNativeDMMessage**
```swift
    open class func unpinNativeDMMessage(messageId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unpin a DM message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let messageId = "messageId_example" // String | 

// Unpin a DM message.
NativeDMAPI.unpinNativeDMMessage(messageId: messageId) { (response, error) in
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
 **messageId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNativeDMMessage**
```swift
    open class func updateNativeDMMessage(dmId: String, messageId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update a DM message body.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let dmId = "dmId_example" // String | 
let messageId = "messageId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Update a DM message body.
NativeDMAPI.updateNativeDMMessage(dmId: dmId, messageId: messageId, requestBody: requestBody) { (response, error) in
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
 **dmId** | **String** |  | 
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

