# PersonalAccessTokensAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPersonalAccessToken**](PersonalAccessTokensAPI.md#createpersonalaccesstoken) | **POST** /v1/tokens | Create a new PAT. The full token is returned only once on creation; the API never reveals the secret again. 
[**listAvailablePATScopes**](PersonalAccessTokensAPI.md#listavailablepatscopes) | **GET** /v1/tokens/scopes | List the scope strings PATs can be issued with.
[**listPersonalAccessTokens**](PersonalAccessTokensAPI.md#listpersonalaccesstokens) | **GET** /v1/tokens | List the caller&#39;s personal access tokens (with available scopes).
[**revokePersonalAccessToken**](PersonalAccessTokensAPI.md#revokepersonalaccesstoken) | **DELETE** /v1/tokens/{id} | Revoke a PAT.
[**updatePersonalAccessToken**](PersonalAccessTokensAPI.md#updatepersonalaccesstoken) | **PATCH** /v1/tokens/{id} | Rename or re-describe a PAT (scopes are immutable).
[**workspaceCreatePAT**](PersonalAccessTokensAPI.md#workspacecreatepat) | **POST** /v1/organizations/{org}/workspaces/{workspace}/tokens | 
[**workspaceListPATs**](PersonalAccessTokensAPI.md#workspacelistpats) | **GET** /v1/organizations/{org}/workspaces/{workspace}/tokens | 
[**workspaceRevokePAT**](PersonalAccessTokensAPI.md#workspacerevokepat) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/tokens/{id} | 
[**workspaceUpdatePAT**](PersonalAccessTokensAPI.md#workspaceupdatepat) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/tokens/{id} | 


# **createPersonalAccessToken**
```swift
    open class func createPersonalAccessToken(createPATRequest: CreatePATRequest, completion: @escaping (_ data: CreatePATResponse?, _ error: Error?) -> Void)
```

Create a new PAT. The full token is returned only once on creation; the API never reveals the secret again. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createPATRequest = CreatePATRequest(name: "name_example", description: "description_example", scopes: ["scopes_example"], workspaceId: "workspaceId_example", expiresAt: Date()) // CreatePATRequest | 

// Create a new PAT. The full token is returned only once on creation; the API never reveals the secret again. 
PersonalAccessTokensAPI.createPersonalAccessToken(createPATRequest: createPATRequest) { (response, error) in
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
 **createPATRequest** | [**CreatePATRequest**](CreatePATRequest.md) |  | 

### Return type

[**CreatePATResponse**](CreatePATResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAvailablePATScopes**
```swift
    open class func listAvailablePATScopes(completion: @escaping (_ data: PATScopesResponse?, _ error: Error?) -> Void)
```

List the scope strings PATs can be issued with.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the scope strings PATs can be issued with.
PersonalAccessTokensAPI.listAvailablePATScopes() { (response, error) in
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

[**PATScopesResponse**](PATScopesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPersonalAccessTokens**
```swift
    open class func listPersonalAccessTokens(completion: @escaping (_ data: PATListResponse?, _ error: Error?) -> Void)
```

List the caller's personal access tokens (with available scopes).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the caller's personal access tokens (with available scopes).
PersonalAccessTokensAPI.listPersonalAccessTokens() { (response, error) in
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

[**PATListResponse**](PATListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokePersonalAccessToken**
```swift
    open class func revokePersonalAccessToken(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revoke a PAT.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Revoke a PAT.
PersonalAccessTokensAPI.revokePersonalAccessToken(id: id) { (response, error) in
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

# **updatePersonalAccessToken**
```swift
    open class func updatePersonalAccessToken(id: String, updatePATRequest: UpdatePATRequest, completion: @escaping (_ data: PersonalAccessToken?, _ error: Error?) -> Void)
```

Rename or re-describe a PAT (scopes are immutable).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updatePATRequest = UpdatePATRequest(name: "name_example", description: "description_example") // UpdatePATRequest | 

// Rename or re-describe a PAT (scopes are immutable).
PersonalAccessTokensAPI.updatePersonalAccessToken(id: id, updatePATRequest: updatePATRequest) { (response, error) in
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
 **updatePATRequest** | [**UpdatePATRequest**](UpdatePATRequest.md) |  | 

### Return type

[**PersonalAccessToken**](PersonalAccessToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreatePAT**
```swift
    open class func workspaceCreatePAT(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

PersonalAccessTokensAPI.workspaceCreatePAT(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

# **workspaceListPATs**
```swift
    open class func workspaceListPATs(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

PersonalAccessTokensAPI.workspaceListPATs(org: org, workspace: workspace) { (response, error) in
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

# **workspaceRevokePAT**
```swift
    open class func workspaceRevokePAT(org: String, workspace: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

PersonalAccessTokensAPI.workspaceRevokePAT(org: org, workspace: workspace, id: id) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUpdatePAT**
```swift
    open class func workspaceUpdatePAT(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

PersonalAccessTokensAPI.workspaceUpdatePAT(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

