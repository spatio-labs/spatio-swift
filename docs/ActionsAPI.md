# ActionsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executeAction**](ActionsAPI.md#executeaction) | **POST** /v1/actions/execute | Renderer-side execute alias. The canonical endpoint is &#x60;POST /v1/agent/actions/execute&#x60;; this path delegates to the same handler. 
[**getCoreAction**](ActionsAPI.md#getcoreaction) | **GET** /v1/actions/core/{id} | Fetch a single core action by id.
[**listAvailableActions**](ActionsAPI.md#listavailableactions) | **GET** /v1/actions/available | List every action the agent platform exposes.
[**listCoreActions**](ActionsAPI.md#listcoreactions) | **GET** /v1/actions/core | List renderer-curated \&quot;core actions\&quot; (command-palette + keybindings backing).
[**listCoreActionsByPlatform**](ActionsAPI.md#listcoreactionsbyplatform) | **GET** /v1/actions/core/platform/{platform} | Core actions filtered to one platform.
[**listPlatformActions**](ActionsAPI.md#listplatformactions) | **GET** /v1/actions/platform/{platform} | List actions tagged for a specific platform (notes, mail, ...).


# **executeAction**
```swift
    open class func executeAction(executeActionRequest: ExecuteActionRequest, completion: @escaping (_ data: ExecuteActionResponse?, _ error: Error?) -> Void)
```

Renderer-side execute alias. The canonical endpoint is `POST /v1/agent/actions/execute`; this path delegates to the same handler. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let executeActionRequest = ExecuteActionRequest(actionId: "actionId_example", params: "TODO", accountId: "accountId_example") // ExecuteActionRequest | 

// Renderer-side execute alias. The canonical endpoint is `POST /v1/agent/actions/execute`; this path delegates to the same handler. 
ActionsAPI.executeAction(executeActionRequest: executeActionRequest) { (response, error) in
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
 **executeActionRequest** | [**ExecuteActionRequest**](ExecuteActionRequest.md) |  | 

### Return type

[**ExecuteActionResponse**](ExecuteActionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCoreAction**
```swift
    open class func getCoreAction(id: String, completion: @escaping (_ data: CoreAction?, _ error: Error?) -> Void)
```

Fetch a single core action by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch a single core action by id.
ActionsAPI.getCoreAction(id: id) { (response, error) in
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

[**CoreAction**](CoreAction.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAvailableActions**
```swift
    open class func listAvailableActions(completion: @escaping (_ data: [ActionDescriptor]?, _ error: Error?) -> Void)
```

List every action the agent platform exposes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List every action the agent platform exposes.
ActionsAPI.listAvailableActions() { (response, error) in
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

[**[ActionDescriptor]**](ActionDescriptor.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCoreActions**
```swift
    open class func listCoreActions(completion: @escaping (_ data: CoreActionListResponse?, _ error: Error?) -> Void)
```

List renderer-curated \"core actions\" (command-palette + keybindings backing).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List renderer-curated \"core actions\" (command-palette + keybindings backing).
ActionsAPI.listCoreActions() { (response, error) in
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

[**CoreActionListResponse**](CoreActionListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCoreActionsByPlatform**
```swift
    open class func listCoreActionsByPlatform(platform: String, completion: @escaping (_ data: CoreActionListResponse?, _ error: Error?) -> Void)
```

Core actions filtered to one platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platform = "platform_example" // String | 

// Core actions filtered to one platform.
ActionsAPI.listCoreActionsByPlatform(platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

[**CoreActionListResponse**](CoreActionListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlatformActions**
```swift
    open class func listPlatformActions(platform: String, completion: @escaping (_ data: [ActionDescriptor]?, _ error: Error?) -> Void)
```

List actions tagged for a specific platform (notes, mail, ...).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platform = "platform_example" // String | 

// List actions tagged for a specific platform (notes, mail, ...).
ActionsAPI.listPlatformActions(platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

[**[ActionDescriptor]**](ActionDescriptor.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

