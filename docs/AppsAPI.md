# AppsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApp**](AppsAPI.md#createapp) | **POST** /v1/apps | Register a prototype app (project_path is the on-disk root).
[**deleteApp**](AppsAPI.md#deleteapp) | **DELETE** /v1/apps/{id} | Delete an app.
[**deleteAppFile**](AppsAPI.md#deleteappfile) | **DELETE** /v1/apps/{id}/file | Delete one file inside the app&#39;s project directory.
[**getApp**](AppsAPI.md#getapp) | **GET** /v1/apps/{id} | Fetch an app.
[**listAppFiles**](AppsAPI.md#listappfiles) | **GET** /v1/apps/{id}/files | List files inside the app&#39;s project directory.
[**listApps**](AppsAPI.md#listapps) | **GET** /v1/apps | List the caller&#39;s prototype apps.
[**readAppFile**](AppsAPI.md#readappfile) | **GET** /v1/apps/{id}/file | Read one file inside the app&#39;s project directory. Path is traversal-checked; returns 400 if it escapes project root. 
[**updateApp**](AppsAPI.md#updateapp) | **PATCH** /v1/apps/{id} | Update an app.
[**workspaceCreateApp**](AppsAPI.md#workspacecreateapp) | **POST** /v1/organizations/{org}/workspaces/{workspace}/apps | 
[**workspaceDeleteApp**](AppsAPI.md#workspacedeleteapp) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/apps/{id} | 
[**workspaceGetApp**](AppsAPI.md#workspacegetapp) | **GET** /v1/organizations/{org}/workspaces/{workspace}/apps/{id} | 
[**workspaceListApps**](AppsAPI.md#workspacelistapps) | **GET** /v1/organizations/{org}/workspaces/{workspace}/apps | 
[**workspaceUpdateApp**](AppsAPI.md#workspaceupdateapp) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/apps/{id} | 
[**writeAppFile**](AppsAPI.md#writeappfile) | **POST** /v1/apps/{id}/file | Write one file inside the app&#39;s project directory.


# **createApp**
```swift
    open class func createApp(createAppRequest: CreateAppRequest, completion: @escaping (_ data: App?, _ error: Error?) -> Void)
```

Register a prototype app (project_path is the on-disk root).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createAppRequest = CreateAppRequest(name: "name_example", description: "description_example", projectPath: "projectPath_example", icon: "icon_example", color: "color_example") // CreateAppRequest | 

// Register a prototype app (project_path is the on-disk root).
AppsAPI.createApp(createAppRequest: createAppRequest) { (response, error) in
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
 **createAppRequest** | [**CreateAppRequest**](CreateAppRequest.md) |  | 

### Return type

[**App**](App.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApp**
```swift
    open class func deleteApp(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an app.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Delete an app.
AppsAPI.deleteApp(id: id) { (response, error) in
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

# **deleteAppFile**
```swift
    open class func deleteAppFile(id: String, path: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete one file inside the app's project directory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let path = "path_example" // String | 

// Delete one file inside the app's project directory.
AppsAPI.deleteAppFile(id: id, path: path) { (response, error) in
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
 **path** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApp**
```swift
    open class func getApp(id: String, completion: @escaping (_ data: App?, _ error: Error?) -> Void)
```

Fetch an app.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch an app.
AppsAPI.getApp(id: id) { (response, error) in
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

[**App**](App.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAppFiles**
```swift
    open class func listAppFiles(id: String, path: String? = nil, completion: @escaping (_ data: AppFileListResponse?, _ error: Error?) -> Void)
```

List files inside the app's project directory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let path = "path_example" // String |  (optional)

// List files inside the app's project directory.
AppsAPI.listAppFiles(id: id, path: path) { (response, error) in
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
 **path** | **String** |  | [optional] 

### Return type

[**AppFileListResponse**](AppFileListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listApps**
```swift
    open class func listApps(completion: @escaping (_ data: AppListResponse?, _ error: Error?) -> Void)
```

List the caller's prototype apps.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the caller's prototype apps.
AppsAPI.listApps() { (response, error) in
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

[**AppListResponse**](AppListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readAppFile**
```swift
    open class func readAppFile(id: String, path: String, completion: @escaping (_ data: AppFileContentResponse?, _ error: Error?) -> Void)
```

Read one file inside the app's project directory. Path is traversal-checked; returns 400 if it escapes project root. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let path = "path_example" // String | 

// Read one file inside the app's project directory. Path is traversal-checked; returns 400 if it escapes project root. 
AppsAPI.readAppFile(id: id, path: path) { (response, error) in
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
 **path** | **String** |  | 

### Return type

[**AppFileContentResponse**](AppFileContentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateApp**
```swift
    open class func updateApp(id: String, updateAppRequest: UpdateAppRequest, completion: @escaping (_ data: App?, _ error: Error?) -> Void)
```

Update an app.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateAppRequest = UpdateAppRequest(name: "name_example", description: "description_example", icon: "icon_example", color: "color_example") // UpdateAppRequest | 

// Update an app.
AppsAPI.updateApp(id: id, updateAppRequest: updateAppRequest) { (response, error) in
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
 **updateAppRequest** | [**UpdateAppRequest**](UpdateAppRequest.md) |  | 

### Return type

[**App**](App.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateApp**
```swift
    open class func workspaceCreateApp(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

AppsAPI.workspaceCreateApp(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

# **workspaceDeleteApp**
```swift
    open class func workspaceDeleteApp(org: String, workspace: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

AppsAPI.workspaceDeleteApp(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceGetApp**
```swift
    open class func workspaceGetApp(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

AppsAPI.workspaceGetApp(org: org, workspace: workspace, id: id) { (response, error) in
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

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListApps**
```swift
    open class func workspaceListApps(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

AppsAPI.workspaceListApps(org: org, workspace: workspace) { (response, error) in
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

# **workspaceUpdateApp**
```swift
    open class func workspaceUpdateApp(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

AppsAPI.workspaceUpdateApp(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
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

# **writeAppFile**
```swift
    open class func writeAppFile(id: String, writeAppFileRequest: WriteAppFileRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Write one file inside the app's project directory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let writeAppFileRequest = WriteAppFileRequest(path: "path_example", content: "content_example") // WriteAppFileRequest | 

// Write one file inside the app's project directory.
AppsAPI.writeAppFile(id: id, writeAppFileRequest: writeAppFileRequest) { (response, error) in
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
 **writeAppFileRequest** | [**WriteAppFileRequest**](WriteAppFileRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

