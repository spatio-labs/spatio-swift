# PlatformsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPlatformProviderAccount**](PlatformsAPI.md#addplatformprovideraccount) | **POST** /v1/platforms/{platformId}/providers/{provider}/accounts | Add a connected account for a platform/provider pair.
[**createOrUpdatePlatformSecret**](PlatformsAPI.md#createorupdateplatformsecret) | **POST** /v1/platforms/{platformId}/secrets | Create or update a secret value.
[**deletePlatformSecret**](PlatformsAPI.md#deleteplatformsecret) | **DELETE** /v1/platforms/{platformId}/secrets/{name} | Delete a secret.
[**execPlatformData**](PlatformsAPI.md#execplatformdata) | **POST** /v1/platforms/{platformId}/exec | Run an INSERT/UPDATE/DELETE statement against a platform&#39;s store.
[**exportPlatformSecrets**](PlatformsAPI.md#exportplatformsecrets) | **GET** /v1/platforms/{platformId}/secrets/export | Export all secrets for a platform (values included). Caller must be the platform owner. 
[**generatePlatformBackendToken**](PlatformsAPI.md#generateplatformbackendtoken) | **POST** /v1/platforms/{platformId}/backend-token | Generate a short-lived backend JWT a platform&#39;s worker can use to call back into platform-service. 
[**getPlatformCatalog**](PlatformsAPI.md#getplatformcatalog) | **GET** /v1/catalog/platforms | List the global platform catalog — every platform that exists, not just the ones the caller has installed. 
[**getPlatformManifest**](PlatformsAPI.md#getplatformmanifest) | **GET** /v1/platforms/{platformId}/manifest | Fetch a platform&#39;s manifest (capabilities, schema, UI metadata).
[**listPlatformAccounts**](PlatformsAPI.md#listplatformaccounts) | **GET** /v1/platforms/{platformId}/accounts | List accounts the caller has connected for a platform.
[**listPlatformProviders**](PlatformsAPI.md#listplatformproviders) | **GET** /v1/platforms/{platformId}/providers | Discover supported providers + capabilities for a platform.
[**listPlatformSecrets**](PlatformsAPI.md#listplatformsecrets) | **GET** /v1/platforms/{platformId}/secrets | List secret keys (values redacted).
[**listPlatformTables**](PlatformsAPI.md#listplatformtables) | **GET** /v1/platforms/{platformId}/tables | List tables in a platform&#39;s data store.
[**listPlatforms**](PlatformsAPI.md#listplatforms) | **GET** /v1/platforms | List installed platforms for the sidebar.
[**queryPlatformData**](PlatformsAPI.md#queryplatformdata) | **POST** /v1/platforms/{platformId}/query | Run a SELECT query against a platform&#39;s data store.
[**runPlatformMigrations**](PlatformsAPI.md#runplatformmigrations) | **POST** /v1/platforms/{platformId}/migrate | Run pending migrations for a platform.


# **addPlatformProviderAccount**
```swift
    open class func addPlatformProviderAccount(platformId: String, provider: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Add a connected account for a platform/provider pair.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 
let provider = "provider_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Add a connected account for a platform/provider pair.
PlatformsAPI.addPlatformProviderAccount(platformId: platformId, provider: provider, requestBody: requestBody) { (response, error) in
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
 **platformId** | **String** |  | 
 **provider** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrUpdatePlatformSecret**
```swift
    open class func createOrUpdatePlatformSecret(platformId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Create or update a secret value.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Create or update a secret value.
PlatformsAPI.createOrUpdatePlatformSecret(platformId: platformId, requestBody: requestBody) { (response, error) in
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
 **platformId** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePlatformSecret**
```swift
    open class func deletePlatformSecret(platformId: String, name: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a secret.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 
let name = "name_example" // String | 

// Delete a secret.
PlatformsAPI.deletePlatformSecret(platformId: platformId, name: name) { (response, error) in
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
 **platformId** | **String** |  | 
 **name** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execPlatformData**
```swift
    open class func execPlatformData(platformId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Run an INSERT/UPDATE/DELETE statement against a platform's store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Run an INSERT/UPDATE/DELETE statement against a platform's store.
PlatformsAPI.execPlatformData(platformId: platformId, requestBody: requestBody) { (response, error) in
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
 **platformId** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportPlatformSecrets**
```swift
    open class func exportPlatformSecrets(platformId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Export all secrets for a platform (values included). Caller must be the platform owner. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 

// Export all secrets for a platform (values included). Caller must be the platform owner. 
PlatformsAPI.exportPlatformSecrets(platformId: platformId) { (response, error) in
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
 **platformId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generatePlatformBackendToken**
```swift
    open class func generatePlatformBackendToken(platformId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Generate a short-lived backend JWT a platform's worker can use to call back into platform-service. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 

// Generate a short-lived backend JWT a platform's worker can use to call back into platform-service. 
PlatformsAPI.generatePlatformBackendToken(platformId: platformId) { (response, error) in
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
 **platformId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlatformCatalog**
```swift
    open class func getPlatformCatalog(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List the global platform catalog — every platform that exists, not just the ones the caller has installed. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the global platform catalog — every platform that exists, not just the ones the caller has installed. 
PlatformsAPI.getPlatformCatalog() { (response, error) in
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

# **getPlatformManifest**
```swift
    open class func getPlatformManifest(platformId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Fetch a platform's manifest (capabilities, schema, UI metadata).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 

// Fetch a platform's manifest (capabilities, schema, UI metadata).
PlatformsAPI.getPlatformManifest(platformId: platformId) { (response, error) in
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
 **platformId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlatformAccounts**
```swift
    open class func listPlatformAccounts(platformId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List accounts the caller has connected for a platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 

// List accounts the caller has connected for a platform.
PlatformsAPI.listPlatformAccounts(platformId: platformId) { (response, error) in
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
 **platformId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlatformProviders**
```swift
    open class func listPlatformProviders(platformId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Discover supported providers + capabilities for a platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 

// Discover supported providers + capabilities for a platform.
PlatformsAPI.listPlatformProviders(platformId: platformId) { (response, error) in
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
 **platformId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlatformSecrets**
```swift
    open class func listPlatformSecrets(platformId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List secret keys (values redacted).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 

// List secret keys (values redacted).
PlatformsAPI.listPlatformSecrets(platformId: platformId) { (response, error) in
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
 **platformId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlatformTables**
```swift
    open class func listPlatformTables(platformId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List tables in a platform's data store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 

// List tables in a platform's data store.
PlatformsAPI.listPlatformTables(platformId: platformId) { (response, error) in
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
 **platformId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlatforms**
```swift
    open class func listPlatforms(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List installed platforms for the sidebar.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List installed platforms for the sidebar.
PlatformsAPI.listPlatforms() { (response, error) in
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

# **queryPlatformData**
```swift
    open class func queryPlatformData(platformId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Run a SELECT query against a platform's data store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Run a SELECT query against a platform's data store.
PlatformsAPI.queryPlatformData(platformId: platformId, requestBody: requestBody) { (response, error) in
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
 **platformId** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runPlatformMigrations**
```swift
    open class func runPlatformMigrations(platformId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Run pending migrations for a platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 

// Run pending migrations for a platform.
PlatformsAPI.runPlatformMigrations(platformId: platformId) { (response, error) in
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
 **platformId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

