# ResourcesAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listResourcePermissionGrants**](ResourcesAPI.md#listresourcepermissiongrants) | **GET** /v1/resources/{platform}/{resourceId}/permissions | List access grants on a resource (per-resource ACL).
[**revokeResourcePermissionGrant**](ResourcesAPI.md#revokeresourcepermissiongrant) | **DELETE** /v1/resources/{platform}/{resourceId}/permissions/{grantId} | Revoke an access grant.
[**setResourcePermissionGrant**](ResourcesAPI.md#setresourcepermissiongrant) | **POST** /v1/resources/{platform}/{resourceId}/permissions | Create or update an access grant.


# **listResourcePermissionGrants**
```swift
    open class func listResourcePermissionGrants(platform: String, resourceId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List access grants on a resource (per-resource ACL).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platform = "platform_example" // String | 
let resourceId = "resourceId_example" // String | 

// List access grants on a resource (per-resource ACL).
ResourcesAPI.listResourcePermissionGrants(platform: platform, resourceId: resourceId) { (response, error) in
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
 **resourceId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeResourcePermissionGrant**
```swift
    open class func revokeResourcePermissionGrant(platform: String, resourceId: String, grantId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revoke an access grant.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platform = "platform_example" // String | 
let resourceId = "resourceId_example" // String | 
let grantId = "grantId_example" // String | 

// Revoke an access grant.
ResourcesAPI.revokeResourcePermissionGrant(platform: platform, resourceId: resourceId, grantId: grantId) { (response, error) in
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
 **resourceId** | **String** |  | 
 **grantId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setResourcePermissionGrant**
```swift
    open class func setResourcePermissionGrant(platform: String, resourceId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Create or update an access grant.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platform = "platform_example" // String | 
let resourceId = "resourceId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Create or update an access grant.
ResourcesAPI.setResourcePermissionGrant(platform: platform, resourceId: resourceId, requestBody: requestBody) { (response, error) in
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
 **resourceId** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

