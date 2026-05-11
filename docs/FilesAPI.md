# FilesAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkDeleteFiles**](FilesAPI.md#bulkdeletefiles) | **POST** /v1/files/delete | Delete multiple files in one call.
[**bulkMoveFiles**](FilesAPI.md#bulkmovefiles) | **POST** /v1/files/move | Move multiple files to a target folder.
[**commitChunkedUpload**](FilesAPI.md#commitchunkedupload) | **POST** /v1/files/upload/chunked/commit | Finalize a chunked-upload session and create the file row.
[**createFileFolder**](FilesAPI.md#createfilefolder) | **POST** /v1/files/folders | Create a folder.
[**deleteFile**](FilesAPI.md#deletefile) | **DELETE** /v1/files/{id} | Delete a file.
[**extractFileText**](FilesAPI.md#extractfiletext) | **GET** /v1/files/{id}/extract-text | Extract text content from a PDF (or other supported file).
[**getChunkedFileManifest**](FilesAPI.md#getchunkedfilemanifest) | **GET** /v1/files/{id}/manifest | Fetch the block manifest for a chunked-uploaded file.
[**getFile**](FilesAPI.md#getfile) | **GET** /v1/files/{id} | Fetch one file&#39;s metadata.
[**getFileDownloadUrl**](FilesAPI.md#getfiledownloadurl) | **GET** /v1/files/{id}/download | Mint a fresh signed download URL.
[**initChunkedUpload**](FilesAPI.md#initchunkedupload) | **POST** /v1/files/upload/chunked/init | Begin a content-addressed chunked upload session.
[**listFileFolders**](FilesAPI.md#listfilefolders) | **GET** /v1/files/folders | List folders across connected file providers.
[**listFiles**](FilesAPI.md#listfiles) | **GET** /v1/files | List files across connected file providers.
[**listFilesAndFolders**](FilesAPI.md#listfilesandfolders) | **GET** /v1/files/list | Aggregate list of files + folders for renderer file-browser views.
[**moveFile**](FilesAPI.md#movefile) | **POST** /v1/files/{id}/move | Move a single file to a target folder.
[**searchFiles**](FilesAPI.md#searchfiles) | **GET** /v1/files/search | Substring-match search across the caller&#39;s files.
[**updateFile**](FilesAPI.md#updatefile) | **PATCH** /v1/files/{id} | Update a file&#39;s metadata (name, folder, custom fields).
[**uploadChunkedBlock**](FilesAPI.md#uploadchunkedblock) | **POST** /v1/files/upload/chunked/blocks | Upload one block for an open chunked-upload session.
[**uploadFile**](FilesAPI.md#uploadfile) | **POST** /v1/files/upload | Upload a file via multipart form.
[**uploadFileBase64**](FilesAPI.md#uploadfilebase64) | **POST** /v1/files/upload/base64 | Upload a file via JSON with base64-encoded content.
[**workspaceCommitChunkedUpload**](FilesAPI.md#workspacecommitchunkedupload) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/upload/chunked/commit | Workspace-scoped chunked-upload commit (RBAC-protected).
[**workspaceCreateFileFolder**](FilesAPI.md#workspacecreatefilefolder) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/folders | Workspace-scoped create-folder (RBAC-protected).
[**workspaceDeleteFile**](FilesAPI.md#workspacedeletefile) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/files/{id} | Workspace-scoped delete-file.
[**workspaceGetFile**](FilesAPI.md#workspacegetfile) | **GET** /v1/organizations/{org}/workspaces/{workspace}/files/{id} | Workspace-scoped get-file.
[**workspaceGetFileDownload**](FilesAPI.md#workspacegetfiledownload) | **GET** /v1/organizations/{org}/workspaces/{workspace}/files/{id}/download | Workspace-scoped signed-download URL.
[**workspaceGetFileManifest**](FilesAPI.md#workspacegetfilemanifest) | **GET** /v1/organizations/{org}/workspaces/{workspace}/files/{id}/manifest | Workspace-scoped chunked-file manifest.
[**workspaceInitChunkedUpload**](FilesAPI.md#workspaceinitchunkedupload) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/upload/chunked/init | Workspace-scoped chunked-upload init (RBAC-protected).
[**workspaceListFileFolders**](FilesAPI.md#workspacelistfilefolders) | **GET** /v1/organizations/{org}/workspaces/{workspace}/files/folders | Workspace-scoped list-folders (RBAC-protected).
[**workspaceListFiles**](FilesAPI.md#workspacelistfiles) | **GET** /v1/organizations/{org}/workspaces/{workspace}/files | Workspace-scoped list-files (RBAC-protected).
[**workspaceMoveFile**](FilesAPI.md#workspacemovefile) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/{id}/move | Workspace-scoped move-file.
[**workspaceUpdateFile**](FilesAPI.md#workspaceupdatefile) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/files/{id} | Workspace-scoped update-file.
[**workspaceUploadChunkedBlock**](FilesAPI.md#workspaceuploadchunkedblock) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/upload/chunked/blocks | Workspace-scoped chunked-upload block (RBAC-protected).
[**workspaceUploadFile**](FilesAPI.md#workspaceuploadfile) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/upload | Workspace-scoped multipart upload (RBAC-protected).
[**workspaceUploadFileBase64**](FilesAPI.md#workspaceuploadfilebase64) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/upload/base64 | Workspace-scoped base64 upload (RBAC-protected).


# **bulkDeleteFiles**
```swift
    open class func bulkDeleteFiles(bulkDeleteFilesRequest: BulkDeleteFilesRequest, completion: @escaping (_ data: BulkFilesResponse?, _ error: Error?) -> Void)
```

Delete multiple files in one call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let bulkDeleteFilesRequest = BulkDeleteFilesRequest(fileIds: ["fileIds_example"], accountIds: ["accountIds_example"], fileId: "fileId_example", accountId: "accountId_example") // BulkDeleteFilesRequest | 

// Delete multiple files in one call.
FilesAPI.bulkDeleteFiles(bulkDeleteFilesRequest: bulkDeleteFilesRequest) { (response, error) in
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
 **bulkDeleteFilesRequest** | [**BulkDeleteFilesRequest**](BulkDeleteFilesRequest.md) |  | 

### Return type

[**BulkFilesResponse**](BulkFilesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkMoveFiles**
```swift
    open class func bulkMoveFiles(bulkMoveFilesRequest: BulkMoveFilesRequest, completion: @escaping (_ data: BulkFilesResponse?, _ error: Error?) -> Void)
```

Move multiple files to a target folder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let bulkMoveFilesRequest = BulkMoveFilesRequest(fileIds: ["fileIds_example"], accountIds: ["accountIds_example"], accountId: "accountId_example", targetFolderId: "targetFolderId_example", folderId: "folderId_example") // BulkMoveFilesRequest | 

// Move multiple files to a target folder.
FilesAPI.bulkMoveFiles(bulkMoveFilesRequest: bulkMoveFilesRequest) { (response, error) in
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
 **bulkMoveFilesRequest** | [**BulkMoveFilesRequest**](BulkMoveFilesRequest.md) |  | 

### Return type

[**BulkFilesResponse**](BulkFilesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commitChunkedUpload**
```swift
    open class func commitChunkedUpload(commitChunkedUploadRequest: CommitChunkedUploadRequest, completion: @escaping (_ data: CommitChunkedUploadResponse?, _ error: Error?) -> Void)
```

Finalize a chunked-upload session and create the file row.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let commitChunkedUploadRequest = CommitChunkedUploadRequest(sessionId: "sessionId_example") // CommitChunkedUploadRequest | 

// Finalize a chunked-upload session and create the file row.
FilesAPI.commitChunkedUpload(commitChunkedUploadRequest: commitChunkedUploadRequest) { (response, error) in
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
 **commitChunkedUploadRequest** | [**CommitChunkedUploadRequest**](CommitChunkedUploadRequest.md) |  | 

### Return type

[**CommitChunkedUploadResponse**](CommitChunkedUploadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFileFolder**
```swift
    open class func createFileFolder(createFolderRequest: CreateFolderRequest, accountId: String? = nil, provider: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Folder?, _ error: Error?) -> Void)
```

Create a folder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createFolderRequest = CreateFolderRequest(accountId: "accountId_example", name: "name_example", parentId: "parentId_example", workspaceId: "workspaceId_example", organizationId: "organizationId_example") // CreateFolderRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let provider = "provider_example" // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Create a folder.
FilesAPI.createFileFolder(createFolderRequest: createFolderRequest, accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **createFolderRequest** | [**CreateFolderRequest**](CreateFolderRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String** | Provider id (e.g. &#x60;native-notes&#x60;, &#x60;notion&#x60;). Selects every connected account for the provider. Mutually exclusive with &#x60;accountId&#x60;.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFile**
```swift
    open class func deleteFile(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a file.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | File id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Delete a file.
FilesAPI.deleteFile(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | File id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractFileText**
```swift
    open class func extractFileText(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, pageStart: Int? = nil, pageEnd: Int? = nil, maxChars: Int? = nil, completion: @escaping (_ data: ExtractTextResult?, _ error: Error?) -> Void)
```

Extract text content from a PDF (or other supported file).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | File id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let pageStart = 987 // Int |  (optional)
let pageEnd = 987 // Int |  (optional)
let maxChars = 987 // Int | Truncation limit; sets `truncated: true` when hit. (optional)

// Extract text content from a PDF (or other supported file).
FilesAPI.extractFileText(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID, pageStart: pageStart, pageEnd: pageEnd, maxChars: maxChars) { (response, error) in
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
 **id** | **String** | File id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **pageStart** | **Int** |  | [optional] 
 **pageEnd** | **Int** |  | [optional] 
 **maxChars** | **Int** | Truncation limit; sets &#x60;truncated: true&#x60; when hit. | [optional] 

### Return type

[**ExtractTextResult**](ExtractTextResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChunkedFileManifest**
```swift
    open class func getChunkedFileManifest(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: ChunkedFileManifest?, _ error: Error?) -> Void)
```

Fetch the block manifest for a chunked-uploaded file.

Only meaningful for files uploaded via `upload/chunked/_*`. Files uploaded via `upload` or `upload/base64` return `404`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | File id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch the block manifest for a chunked-uploaded file.
FilesAPI.getChunkedFileManifest(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | File id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**ChunkedFileManifest**](ChunkedFileManifest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFile**
```swift
    open class func getFile(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SpatioFile?, _ error: Error?) -> Void)
```

Fetch one file's metadata.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | File id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch one file's metadata.
FilesAPI.getFile(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | File id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SpatioFile**](SpatioFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFileDownloadUrl**
```swift
    open class func getFileDownloadUrl(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: DownloadFileResponse?, _ error: Error?) -> Void)
```

Mint a fresh signed download URL.

Returns a JSON envelope with a pre-signed URL pointing at the backing storage. Clients follow the URL — the platform does not stream bytes through itself. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | File id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Mint a fresh signed download URL.
FilesAPI.getFileDownloadUrl(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | File id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**DownloadFileResponse**](DownloadFileResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initChunkedUpload**
```swift
    open class func initChunkedUpload(initChunkedUploadRequest: InitChunkedUploadRequest, completion: @escaping (_ data: InitChunkedUploadResponse?, _ error: Error?) -> Void)
```

Begin a content-addressed chunked upload session.

Client computes per-block hashes ahead of time and submits the list. The server replies with which blocks need uploading vs. already-on-server (deduplicated). Subsequent calls upload the missing blocks via `uploadChunkedBlock`, then `commit`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let initChunkedUploadRequest = InitChunkedUploadRequest(fileName: "fileName_example", totalSize: 123, mimeType: "mimeType_example", expectedBlocks: ["expectedBlocks_example"], folderId: "folderId_example", workspaceId: "workspaceId_example", organizationId: "organizationId_example") // InitChunkedUploadRequest | 

// Begin a content-addressed chunked upload session.
FilesAPI.initChunkedUpload(initChunkedUploadRequest: initChunkedUploadRequest) { (response, error) in
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
 **initChunkedUploadRequest** | [**InitChunkedUploadRequest**](InitChunkedUploadRequest.md) |  | 

### Return type

[**InitChunkedUploadResponse**](InitChunkedUploadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFileFolders**
```swift
    open class func listFileFolders(accountId: String? = nil, provider: String? = nil, xWorkspaceID: String? = nil, parentId: String? = nil, workspaceId: String? = nil, organizationId: String? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: FolderListEnvelope?, _ error: Error?) -> Void)
```

List folders across connected file providers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let provider = "provider_example" // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let parentId = "parentId_example" // String | Filter to children of this folder. Omit for root. (optional)
let workspaceId = "workspaceId_example" // String |  (optional)
let organizationId = "organizationId_example" // String |  (optional)
let limit = 987 // Int |  (optional) (default to 50)
let offset = 987 // Int |  (optional) (default to 0)

// List folders across connected file providers.
FilesAPI.listFileFolders(accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID, parentId: parentId, workspaceId: workspaceId, organizationId: organizationId, limit: limit, offset: offset) { (response, error) in
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
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String** | Provider id (e.g. &#x60;native-notes&#x60;, &#x60;notion&#x60;). Selects every connected account for the provider. Mutually exclusive with &#x60;accountId&#x60;.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **parentId** | **String** | Filter to children of this folder. Omit for root. | [optional] 
 **workspaceId** | **String** |  | [optional] 
 **organizationId** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] [default to 50]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**FolderListEnvelope**](FolderListEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFiles**
```swift
    open class func listFiles(accountId: String? = nil, provider: String? = nil, xWorkspaceID: String? = nil, folderId: String? = nil, workspaceId: String? = nil, organizationId: String? = nil, limit: Int? = nil, offset: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder_listFiles? = nil, completion: @escaping (_ data: FileListEnvelope?, _ error: Error?) -> Void)
```

List files across connected file providers.

Fan-out list. Returns files from every connected file provider unless filtered by `?accountId=` or `?provider=`. Folder contents are scoped via `?folderId=`; omit for account root. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let provider = "provider_example" // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let folderId = "folderId_example" // String | Filter to one folder. Omit for the account root. (optional)
let workspaceId = "workspaceId_example" // String |  (optional)
let organizationId = "organizationId_example" // String |  (optional)
let limit = 987 // Int |  (optional) (default to 50)
let offset = 987 // Int |  (optional) (default to 0)
let sortBy = "sortBy_example" // String | Provider-dependent. Common values: `created_at`, `name`, `size`. (optional) (default to "created_at")
let sortOrder = "sortOrder_example" // String |  (optional) (default to .desc)

// List files across connected file providers.
FilesAPI.listFiles(accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID, folderId: folderId, workspaceId: workspaceId, organizationId: organizationId, limit: limit, offset: offset, sortBy: sortBy, sortOrder: sortOrder) { (response, error) in
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
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String** | Provider id (e.g. &#x60;native-notes&#x60;, &#x60;notion&#x60;). Selects every connected account for the provider. Mutually exclusive with &#x60;accountId&#x60;.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **folderId** | **String** | Filter to one folder. Omit for the account root. | [optional] 
 **workspaceId** | **String** |  | [optional] 
 **organizationId** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] [default to 50]
 **offset** | **Int** |  | [optional] [default to 0]
 **sortBy** | **String** | Provider-dependent. Common values: &#x60;created_at&#x60;, &#x60;name&#x60;, &#x60;size&#x60;. | [optional] [default to &quot;created_at&quot;]
 **sortOrder** | **String** |  | [optional] [default to .desc]

### Return type

[**FileListEnvelope**](FileListEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFilesAndFolders**
```swift
    open class func listFilesAndFolders(accountId: String? = nil, provider: String? = nil, folderId: String? = nil, workspaceId: String? = nil, organizationId: String? = nil, limit: Int? = nil, offset: Int? = nil, sortBy: String? = nil, sortOrder: String? = nil, completion: @escaping (_ data: FilesAndFoldersResponse?, _ error: Error?) -> Void)
```

Aggregate list of files + folders for renderer file-browser views.

Calls `listFiles` and `listFileFolders` in parallel and merges the results. Saves a round-trip when the UI shows both side-by-side. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let provider = "provider_example" // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  (optional)
let folderId = "folderId_example" // String | Filter to one folder. Omit for the account root. (optional)
let workspaceId = "workspaceId_example" // String |  (optional)
let organizationId = "organizationId_example" // String |  (optional)
let limit = 987 // Int |  (optional) (default to 50)
let offset = 987 // Int |  (optional) (default to 0)
let sortBy = "sortBy_example" // String |  (optional)
let sortOrder = "sortOrder_example" // String |  (optional)

// Aggregate list of files + folders for renderer file-browser views.
FilesAPI.listFilesAndFolders(accountId: accountId, provider: provider, folderId: folderId, workspaceId: workspaceId, organizationId: organizationId, limit: limit, offset: offset, sortBy: sortBy, sortOrder: sortOrder) { (response, error) in
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
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String** | Provider id (e.g. &#x60;native-notes&#x60;, &#x60;notion&#x60;). Selects every connected account for the provider. Mutually exclusive with &#x60;accountId&#x60;.  | [optional] 
 **folderId** | **String** | Filter to one folder. Omit for the account root. | [optional] 
 **workspaceId** | **String** |  | [optional] 
 **organizationId** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] [default to 50]
 **offset** | **Int** |  | [optional] [default to 0]
 **sortBy** | **String** |  | [optional] 
 **sortOrder** | **String** |  | [optional] 

### Return type

[**FilesAndFoldersResponse**](FilesAndFoldersResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveFile**
```swift
    open class func moveFile(id: String, moveFileRequest: MoveFileRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: MoveFileResponse?, _ error: Error?) -> Void)
```

Move a single file to a target folder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | File id.
let moveFileRequest = MoveFileRequest(folderId: "folderId_example") // MoveFileRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Move a single file to a target folder.
FilesAPI.moveFile(id: id, moveFileRequest: moveFileRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | File id. | 
 **moveFileRequest** | [**MoveFileRequest**](MoveFileRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**MoveFileResponse**](MoveFileResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchFiles**
```swift
    open class func searchFiles(query: String, accountId: String? = nil, provider: String? = nil, folderId: String? = nil, workspaceId: String? = nil, organizationId: String? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: SearchFilesResponse?, _ error: Error?) -> Void)
```

Substring-match search across the caller's files.

In-memory search — the platform lists up to ~500 files and filters locally on `name` (case-insensitive substring). Not suitable for global search across very large file libraries. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let query = "query_example" // String | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let provider = "provider_example" // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  (optional)
let folderId = "folderId_example" // String | Filter to one folder. Omit for the account root. (optional)
let workspaceId = "workspaceId_example" // String |  (optional)
let organizationId = "organizationId_example" // String |  (optional)
let limit = 987 // Int |  (optional) (default to 50)
let offset = 987 // Int |  (optional) (default to 0)

// Substring-match search across the caller's files.
FilesAPI.searchFiles(query: query, accountId: accountId, provider: provider, folderId: folderId, workspaceId: workspaceId, organizationId: organizationId, limit: limit, offset: offset) { (response, error) in
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
 **query** | **String** |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String** | Provider id (e.g. &#x60;native-notes&#x60;, &#x60;notion&#x60;). Selects every connected account for the provider. Mutually exclusive with &#x60;accountId&#x60;.  | [optional] 
 **folderId** | **String** | Filter to one folder. Omit for the account root. | [optional] 
 **workspaceId** | **String** |  | [optional] 
 **organizationId** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] [default to 50]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**SearchFilesResponse**](SearchFilesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFile**
```swift
    open class func updateFile(id: String, updateFileRequest: UpdateFileRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SpatioFile?, _ error: Error?) -> Void)
```

Update a file's metadata (name, folder, custom fields).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | File id.
let updateFileRequest = UpdateFileRequest(name: "name_example", folderId: "folderId_example", metadata: "TODO") // UpdateFileRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Update a file's metadata (name, folder, custom fields).
FilesAPI.updateFile(id: id, updateFileRequest: updateFileRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | File id. | 
 **updateFileRequest** | [**UpdateFileRequest**](UpdateFileRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SpatioFile**](SpatioFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadChunkedBlock**
```swift
    open class func uploadChunkedBlock(sessionId: String, blockHash: String, block: URL, blockIndex: Int? = nil, completion: @escaping (_ data: UploadChunkedBlockResponse?, _ error: Error?) -> Void)
```

Upload one block for an open chunked-upload session.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let sessionId = "sessionId_example" // String | 
let blockHash = "blockHash_example" // String | 
let block = URL(string: "https://example.com")! // URL | 
let blockIndex = 987 // Int |  (optional)

// Upload one block for an open chunked-upload session.
FilesAPI.uploadChunkedBlock(sessionId: sessionId, blockHash: blockHash, block: block, blockIndex: blockIndex) { (response, error) in
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
 **sessionId** | **String** |  | 
 **blockHash** | **String** |  | 
 **block** | **URL** |  | 
 **blockIndex** | **Int** |  | [optional] 

### Return type

[**UploadChunkedBlockResponse**](UploadChunkedBlockResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadFile**
```swift
    open class func uploadFile(file: URL, folderId: String? = nil, workspaceId: String? = nil, organizationId: String? = nil, accountId: String? = nil, completion: @escaping (_ data: SpatioFile?, _ error: Error?) -> Void)
```

Upload a file via multipart form.

Multipart upload. Form field `file` carries the binary; auxiliary form fields scope the upload (`folderId`, `workspaceId`, `organizationId`, `accountId`). Max body size is currently 100 MB. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let file = URL(string: "https://example.com")! // URL | File bytes (multipart form field name `file`).
let folderId = "folderId_example" // String |  (optional)
let workspaceId = "workspaceId_example" // String |  (optional)
let organizationId = "organizationId_example" // String |  (optional)
let accountId = "accountId_example" // String |  (optional)

// Upload a file via multipart form.
FilesAPI.uploadFile(file: file, folderId: folderId, workspaceId: workspaceId, organizationId: organizationId, accountId: accountId) { (response, error) in
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
 **file** | **URL** | File bytes (multipart form field name &#x60;file&#x60;). | 
 **folderId** | **String** |  | [optional] 
 **workspaceId** | **String** |  | [optional] 
 **organizationId** | **String** |  | [optional] 
 **accountId** | **String** |  | [optional] 

### Return type

[**SpatioFile**](SpatioFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadFileBase64**
```swift
    open class func uploadFileBase64(uploadFileBase64Request: UploadFileBase64Request, completion: @escaping (_ data: SpatioFile?, _ error: Error?) -> Void)
```

Upload a file via JSON with base64-encoded content.

Equivalent to `uploadFile` for clients that can't post multipart bodies (e.g. browser fetch with strict CSP). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let uploadFileBase64Request = UploadFileBase64Request(accountId: "accountId_example", name: "name_example", content: 123, mimeType: "mimeType_example", folderId: "folderId_example", workspaceId: "workspaceId_example", organizationId: "organizationId_example", metadata: "TODO") // UploadFileBase64Request | 

// Upload a file via JSON with base64-encoded content.
FilesAPI.uploadFileBase64(uploadFileBase64Request: uploadFileBase64Request) { (response, error) in
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
 **uploadFileBase64Request** | [**UploadFileBase64Request**](UploadFileBase64Request.md) |  | 

### Return type

[**SpatioFile**](SpatioFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCommitChunkedUpload**
```swift
    open class func workspaceCommitChunkedUpload(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped chunked-upload commit (RBAC-protected).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Workspace-scoped chunked-upload commit (RBAC-protected).
FilesAPI.workspaceCommitChunkedUpload(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

# **workspaceCreateFileFolder**
```swift
    open class func workspaceCreateFileFolder(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped create-folder (RBAC-protected).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Workspace-scoped create-folder (RBAC-protected).
FilesAPI.workspaceCreateFileFolder(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

# **workspaceDeleteFile**
```swift
    open class func workspaceDeleteFile(org: String, workspace: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Workspace-scoped delete-file.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

// Workspace-scoped delete-file.
FilesAPI.workspaceDeleteFile(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceGetFile**
```swift
    open class func workspaceGetFile(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped get-file.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

// Workspace-scoped get-file.
FilesAPI.workspaceGetFile(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceGetFileDownload**
```swift
    open class func workspaceGetFileDownload(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped signed-download URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

// Workspace-scoped signed-download URL.
FilesAPI.workspaceGetFileDownload(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceGetFileManifest**
```swift
    open class func workspaceGetFileManifest(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped chunked-file manifest.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

// Workspace-scoped chunked-file manifest.
FilesAPI.workspaceGetFileManifest(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceInitChunkedUpload**
```swift
    open class func workspaceInitChunkedUpload(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped chunked-upload init (RBAC-protected).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Workspace-scoped chunked-upload init (RBAC-protected).
FilesAPI.workspaceInitChunkedUpload(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

# **workspaceListFileFolders**
```swift
    open class func workspaceListFileFolders(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped list-folders (RBAC-protected).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

// Workspace-scoped list-folders (RBAC-protected).
FilesAPI.workspaceListFileFolders(org: org, workspace: workspace) { (response, error) in
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

# **workspaceListFiles**
```swift
    open class func workspaceListFiles(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped list-files (RBAC-protected).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

// Workspace-scoped list-files (RBAC-protected).
FilesAPI.workspaceListFiles(org: org, workspace: workspace) { (response, error) in
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

# **workspaceMoveFile**
```swift
    open class func workspaceMoveFile(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped move-file.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Workspace-scoped move-file.
FilesAPI.workspaceMoveFile(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
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

# **workspaceUpdateFile**
```swift
    open class func workspaceUpdateFile(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped update-file.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Workspace-scoped update-file.
FilesAPI.workspaceUpdateFile(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
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

# **workspaceUploadChunkedBlock**
```swift
    open class func workspaceUploadChunkedBlock(org: String, workspace: String, body: URL, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped chunked-upload block (RBAC-protected).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let body = URL(string: "https://example.com")! // URL | 

// Workspace-scoped chunked-upload block (RBAC-protected).
FilesAPI.workspaceUploadChunkedBlock(org: org, workspace: workspace, body: body) { (response, error) in
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
 **body** | **URL** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUploadFile**
```swift
    open class func workspaceUploadFile(org: String, workspace: String, file: URL? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped multipart upload (RBAC-protected).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let file = URL(string: "https://example.com")! // URL |  (optional)

// Workspace-scoped multipart upload (RBAC-protected).
FilesAPI.workspaceUploadFile(org: org, workspace: workspace, file: file) { (response, error) in
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
 **file** | **URL** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUploadFileBase64**
```swift
    open class func workspaceUploadFileBase64(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped base64 upload (RBAC-protected).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Workspace-scoped base64 upload (RBAC-protected).
FilesAPI.workspaceUploadFileBase64(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

