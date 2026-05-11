# NavigationAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getNavigation**](NavigationAPI.md#getnavigation) | **GET** /v1/navigation | Sidebar/navigation tree for the renderer.


# **getNavigation**
```swift
    open class func getNavigation(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Sidebar/navigation tree for the renderer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Sidebar/navigation tree for the renderer.
NavigationAPI.getNavigation() { (response, error) in
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

