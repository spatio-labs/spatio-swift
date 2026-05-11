# KeybindingsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteKeyBinding**](KeybindingsAPI.md#deletekeybinding) | **DELETE** /v1/keybindings/{id} | Reset a binding to its platform default.
[**getDefaultKeyBindings**](KeybindingsAPI.md#getdefaultkeybindings) | **GET** /v1/keybindings/defaults | Platform default key bindings (no user customizations applied).
[**listKeyBindings**](KeybindingsAPI.md#listkeybindings) | **GET** /v1/keybindings | User&#39;s merged key bindings (defaults + customizations).
[**resetAllKeyBindings**](KeybindingsAPI.md#resetallkeybindings) | **POST** /v1/keybindings/reset | Reset every customization to its platform default.
[**updateKeyBinding**](KeybindingsAPI.md#updatekeybinding) | **PUT** /v1/keybindings/{id} | Create or update a user key-binding customization.
[**validateKeyBinding**](KeybindingsAPI.md#validatekeybinding) | **POST** /v1/keybindings/validate | Check whether a proposed binding conflicts with existing ones.


# **deleteKeyBinding**
```swift
    open class func deleteKeyBinding(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Reset a binding to its platform default.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Reset a binding to its platform default.
KeybindingsAPI.deleteKeyBinding(id: id) { (response, error) in
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

# **getDefaultKeyBindings**
```swift
    open class func getDefaultKeyBindings(completion: @escaping (_ data: KeyBindingListResponse?, _ error: Error?) -> Void)
```

Platform default key bindings (no user customizations applied).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Platform default key bindings (no user customizations applied).
KeybindingsAPI.getDefaultKeyBindings() { (response, error) in
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

[**KeyBindingListResponse**](KeyBindingListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listKeyBindings**
```swift
    open class func listKeyBindings(completion: @escaping (_ data: KeyBindingListResponse?, _ error: Error?) -> Void)
```

User's merged key bindings (defaults + customizations).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// User's merged key bindings (defaults + customizations).
KeybindingsAPI.listKeyBindings() { (response, error) in
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

[**KeyBindingListResponse**](KeyBindingListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetAllKeyBindings**
```swift
    open class func resetAllKeyBindings(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Reset every customization to its platform default.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Reset every customization to its platform default.
KeybindingsAPI.resetAllKeyBindings() { (response, error) in
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

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateKeyBinding**
```swift
    open class func updateKeyBinding(id: String, updateKeyBindingRequest: UpdateKeyBindingRequest, completion: @escaping (_ data: KeyBinding?, _ error: Error?) -> Void)
```

Create or update a user key-binding customization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateKeyBindingRequest = UpdateKeyBindingRequest(key: "key_example", modifiers: ["modifiers_example"]) // UpdateKeyBindingRequest | 

// Create or update a user key-binding customization.
KeybindingsAPI.updateKeyBinding(id: id, updateKeyBindingRequest: updateKeyBindingRequest) { (response, error) in
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
 **updateKeyBindingRequest** | [**UpdateKeyBindingRequest**](UpdateKeyBindingRequest.md) |  | 

### Return type

[**KeyBinding**](KeyBinding.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateKeyBinding**
```swift
    open class func validateKeyBinding(validateKeyBindingRequest: ValidateKeyBindingRequest, completion: @escaping (_ data: ValidateKeyBindingResponse?, _ error: Error?) -> Void)
```

Check whether a proposed binding conflicts with existing ones.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let validateKeyBindingRequest = ValidateKeyBindingRequest(actionId: "actionId_example", key: "key_example", modifiers: ["modifiers_example"]) // ValidateKeyBindingRequest | 

// Check whether a proposed binding conflicts with existing ones.
KeybindingsAPI.validateKeyBinding(validateKeyBindingRequest: validateKeyBindingRequest) { (response, error) in
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
 **validateKeyBindingRequest** | [**ValidateKeyBindingRequest**](ValidateKeyBindingRequest.md) |  | 

### Return type

[**ValidateKeyBindingResponse**](ValidateKeyBindingResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

