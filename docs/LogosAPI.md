# LogosAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDomainLogo**](LogosAPI.md#getdomainlogo) | **GET** /v1/logos/domain/{domain} | Resolve a domain to its logo URL (CDN-cached 24h).
[**getEmailLogo**](LogosAPI.md#getemaillogo) | **GET** /v1/logos/email/{email} | Resolve an email address to its domain logo URL.
[**getLogosBatch**](LogosAPI.md#getlogosbatch) | **POST** /v1/logos/batch | Batch-resolve a list of domains/emails to logo URLs in one call.


# **getDomainLogo**
```swift
    open class func getDomainLogo(domain: String, completion: @escaping (_ data: GetDomainLogo200Response?, _ error: Error?) -> Void)
```

Resolve a domain to its logo URL (CDN-cached 24h).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let domain = "domain_example" // String | 

// Resolve a domain to its logo URL (CDN-cached 24h).
LogosAPI.getDomainLogo(domain: domain) { (response, error) in
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
 **domain** | **String** |  | 

### Return type

[**GetDomainLogo200Response**](GetDomainLogo200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailLogo**
```swift
    open class func getEmailLogo(email: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Resolve an email address to its domain logo URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let email = "email_example" // String | 

// Resolve an email address to its domain logo URL.
LogosAPI.getEmailLogo(email: email) { (response, error) in
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
 **email** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLogosBatch**
```swift
    open class func getLogosBatch(requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Batch-resolve a list of domains/emails to logo URLs in one call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Batch-resolve a list of domains/emails to logo URLs in one call.
LogosAPI.getLogosBatch(requestBody: requestBody) { (response, error) in
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

