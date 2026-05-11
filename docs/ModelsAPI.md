# ModelsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createModel**](ModelsAPI.md#createmodel) | **POST** /v1/models | Register a model (admin-only).
[**deleteModel**](ModelsAPI.md#deletemodel) | **DELETE** /v1/models/{id} | Delete a model (admin-only).
[**getActiveModel**](ModelsAPI.md#getactivemodel) | **GET** /v1/models/active | Get the active model for a given provider.
[**getModel**](ModelsAPI.md#getmodel) | **GET** /v1/models/{id} | Fetch a model.
[**listModels**](ModelsAPI.md#listmodels) | **GET** /v1/models | List every LLM model the platform knows about.
[**setActiveModel**](ModelsAPI.md#setactivemodel) | **POST** /v1/models/{id}/activate | Set a model as the active default for its provider (admin-only).
[**updateModel**](ModelsAPI.md#updatemodel) | **PATCH** /v1/models/{id} | Update a model (admin-only).


# **createModel**
```swift
    open class func createModel(requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Register a model (admin-only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Register a model (admin-only).
ModelsAPI.createModel(requestBody: requestBody) { (response, error) in
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

# **deleteModel**
```swift
    open class func deleteModel(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a model (admin-only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Delete a model (admin-only).
ModelsAPI.deleteModel(id: id) { (response, error) in
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

# **getActiveModel**
```swift
    open class func getActiveModel(provider: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Get the active model for a given provider.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let provider = "provider_example" // String |  (optional)

// Get the active model for a given provider.
ModelsAPI.getActiveModel(provider: provider) { (response, error) in
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
 **provider** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModel**
```swift
    open class func getModel(id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Fetch a model.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch a model.
ModelsAPI.getModel(id: id) { (response, error) in
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

# **listModels**
```swift
    open class func listModels(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List every LLM model the platform knows about.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List every LLM model the platform knows about.
ModelsAPI.listModels() { (response, error) in
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

# **setActiveModel**
```swift
    open class func setActiveModel(id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Set a model as the active default for its provider (admin-only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Set a model as the active default for its provider (admin-only).
ModelsAPI.setActiveModel(id: id) { (response, error) in
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

# **updateModel**
```swift
    open class func updateModel(id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update a model (admin-only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Update a model (admin-only).
ModelsAPI.updateModel(id: id, requestBody: requestBody) { (response, error) in
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

