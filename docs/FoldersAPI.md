# FoldersAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmailFolder**](FoldersAPI.md#createemailfolder) | **POST** /v1/folders | Create an email folder.
[**deleteEmailFolder**](FoldersAPI.md#deleteemailfolder) | **DELETE** /v1/folders/{id} | Delete an email folder.
[**listEmailFolders**](FoldersAPI.md#listemailfolders) | **GET** /v1/folders | List the caller&#39;s email folders.
[**listFolderEmails**](FoldersAPI.md#listfolderemails) | **GET** /v1/folders/{id}/emails | List emails inside a folder.
[**moveEmailsToFolder**](FoldersAPI.md#moveemailstofolder) | **POST** /v1/folders/{id}/emails | Move emails into a folder.
[**updateEmailFolder**](FoldersAPI.md#updateemailfolder) | **PUT** /v1/folders/{id} | Update an email folder.


# **createEmailFolder**
```swift
    open class func createEmailFolder(createEmailFolderRequest: CreateEmailFolderRequest, completion: @escaping (_ data: EmailFolder?, _ error: Error?) -> Void)
```

Create an email folder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createEmailFolderRequest = CreateEmailFolderRequest(name: "name_example", accountId: "accountId_example") // CreateEmailFolderRequest | 

// Create an email folder.
FoldersAPI.createEmailFolder(createEmailFolderRequest: createEmailFolderRequest) { (response, error) in
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
 **createEmailFolderRequest** | [**CreateEmailFolderRequest**](CreateEmailFolderRequest.md) |  | 

### Return type

[**EmailFolder**](EmailFolder.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmailFolder**
```swift
    open class func deleteEmailFolder(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an email folder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Delete an email folder.
FoldersAPI.deleteEmailFolder(id: id) { (response, error) in
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

# **listEmailFolders**
```swift
    open class func listEmailFolders(completion: @escaping (_ data: EmailFolderListResponse?, _ error: Error?) -> Void)
```

List the caller's email folders.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the caller's email folders.
FoldersAPI.listEmailFolders() { (response, error) in
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

[**EmailFolderListResponse**](EmailFolderListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFolderEmails**
```swift
    open class func listFolderEmails(id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List emails inside a folder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// List emails inside a folder.
FoldersAPI.listFolderEmails(id: id) { (response, error) in
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

# **moveEmailsToFolder**
```swift
    open class func moveEmailsToFolder(id: String, moveEmailsRequest: MoveEmailsRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Move emails into a folder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let moveEmailsRequest = MoveEmailsRequest(messageIds: ["messageIds_example"]) // MoveEmailsRequest | 

// Move emails into a folder.
FoldersAPI.moveEmailsToFolder(id: id, moveEmailsRequest: moveEmailsRequest) { (response, error) in
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
 **moveEmailsRequest** | [**MoveEmailsRequest**](MoveEmailsRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmailFolder**
```swift
    open class func updateEmailFolder(id: String, updateEmailFolderRequest: UpdateEmailFolderRequest, completion: @escaping (_ data: EmailFolder?, _ error: Error?) -> Void)
```

Update an email folder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateEmailFolderRequest = UpdateEmailFolderRequest(name: "name_example") // UpdateEmailFolderRequest | 

// Update an email folder.
FoldersAPI.updateEmailFolder(id: id, updateEmailFolderRequest: updateEmailFolderRequest) { (response, error) in
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
 **updateEmailFolderRequest** | [**UpdateEmailFolderRequest**](UpdateEmailFolderRequest.md) |  | 

### Return type

[**EmailFolder**](EmailFolder.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

