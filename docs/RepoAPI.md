# RepoAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRepoBranch**](RepoAPI.md#createrepobranch) | **POST** /v1/repos/repositories/{owner}/{repo}/branches | Create a branch (from a base sha).
[**createRepoPullRequest**](RepoAPI.md#createrepopullrequest) | **POST** /v1/repos/repositories/{owner}/{repo}/pulls | Open a pull request.
[**createRepoRepository**](RepoAPI.md#createreporepository) | **POST** /v1/repos/repositories | Create a repository.
[**getRepoCommit**](RepoAPI.md#getrepocommit) | **GET** /v1/repos/repositories/{owner}/{repo}/commits/{sha} | Fetch a single commit.
[**getRepoRepository**](RepoAPI.md#getreporepository) | **GET** /v1/repos/repositories/{owner}/{repo} | Fetch a single repository.
[**linkRepoTask**](RepoAPI.md#linkrepotask) | **POST** /v1/repos/repositories/{owner}/{repo}/tasks/link | Link an existing Spatio task to this repo, allocating a per-repo number.
[**listRepoBranches**](RepoAPI.md#listrepobranches) | **GET** /v1/repos/repositories/{owner}/{repo}/branches | List branches on a repository.
[**listRepoCommits**](RepoAPI.md#listrepocommits) | **GET** /v1/repos/repositories/{owner}/{repo}/commits | List commits on a repository.
[**listRepoPullRequests**](RepoAPI.md#listrepopullrequests) | **GET** /v1/repos/repositories/{owner}/{repo}/pulls | List pull requests on a repository.
[**listRepoRepositories**](RepoAPI.md#listreporepositories) | **GET** /v1/repos/repositories | List the caller&#39;s accessible repositories.
[**listRepoTasks**](RepoAPI.md#listrepotasks) | **GET** /v1/repos/repositories/{owner}/{repo}/tasks | List tasks linked to this repo (the \&quot;issues\&quot; surface).
[**listRepoWorkflows**](RepoAPI.md#listrepoworkflows) | **GET** /v1/repos/repositories/{owner}/{repo}/workflows | List CI workflows.
[**mergeRepoPullRequest**](RepoAPI.md#mergerepopullrequest) | **POST** /v1/repos/repositories/{owner}/{repo}/pulls/{number}/merge | Merge a pull request.
[**triggerRepoWorkflow**](RepoAPI.md#triggerrepoworkflow) | **POST** /v1/repos/repositories/{owner}/{repo}/workflows/{id}/trigger | Trigger a workflow_dispatch run.
[**workspaceCreateRepoBranch**](RepoAPI.md#workspacecreaterepobranch) | **POST** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/branches | 
[**workspaceCreateRepoPullRequest**](RepoAPI.md#workspacecreaterepopullrequest) | **POST** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/pulls | 
[**workspaceCreateRepoRepository**](RepoAPI.md#workspacecreatereporepository) | **POST** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories | 
[**workspaceGetRepoCommit**](RepoAPI.md#workspacegetrepocommit) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/commits/{sha} | 
[**workspaceGetRepoRepository**](RepoAPI.md#workspacegetreporepository) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo} | 
[**workspaceLinkRepoTask**](RepoAPI.md#workspacelinkrepotask) | **POST** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/tasks/link | 
[**workspaceListRepoBranches**](RepoAPI.md#workspacelistrepobranches) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/branches | 
[**workspaceListRepoCommits**](RepoAPI.md#workspacelistrepocommits) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/commits | 
[**workspaceListRepoPullRequests**](RepoAPI.md#workspacelistrepopullrequests) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/pulls | 
[**workspaceListRepoRepositories**](RepoAPI.md#workspacelistreporepositories) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories | 
[**workspaceListRepoTasks**](RepoAPI.md#workspacelistrepotasks) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/tasks | 
[**workspaceListRepoWorkflows**](RepoAPI.md#workspacelistrepoworkflows) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/workflows | 
[**workspaceMergeRepoPullRequest**](RepoAPI.md#workspacemergerepopullrequest) | **POST** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/pulls/{number}/merge | 
[**workspaceTriggerRepoWorkflow**](RepoAPI.md#workspacetriggerrepoworkflow) | **POST** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/workflows/{id}/trigger | 


# **createRepoBranch**
```swift
    open class func createRepoBranch(owner: String, repo: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Create a branch (from a base sha).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Create a branch (from a base sha).
RepoAPI.createRepoBranch(owner: owner, repo: repo, requestBody: requestBody) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRepoPullRequest**
```swift
    open class func createRepoPullRequest(owner: String, repo: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Open a pull request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Open a pull request.
RepoAPI.createRepoPullRequest(owner: owner, repo: repo, requestBody: requestBody) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRepoRepository**
```swift
    open class func createRepoRepository(requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Create a repository.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Create a repository.
RepoAPI.createRepoRepository(requestBody: requestBody) { (response, error) in
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

# **getRepoCommit**
```swift
    open class func getRepoCommit(owner: String, repo: String, sha: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Fetch a single commit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let sha = "sha_example" // String | 

// Fetch a single commit.
RepoAPI.getRepoCommit(owner: owner, repo: repo, sha: sha) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **sha** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRepoRepository**
```swift
    open class func getRepoRepository(owner: String, repo: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Fetch a single repository.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let owner = "owner_example" // String | 
let repo = "repo_example" // String | 

// Fetch a single repository.
RepoAPI.getRepoRepository(owner: owner, repo: repo) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkRepoTask**
```swift
    open class func linkRepoTask(owner: String, repo: String, linkRepoTaskRequest: LinkRepoTaskRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Link an existing Spatio task to this repo, allocating a per-repo number.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let linkRepoTaskRequest = linkRepoTask_request(taskId: "taskId_example") // LinkRepoTaskRequest | 

// Link an existing Spatio task to this repo, allocating a per-repo number.
RepoAPI.linkRepoTask(owner: owner, repo: repo, linkRepoTaskRequest: linkRepoTaskRequest) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **linkRepoTaskRequest** | [**LinkRepoTaskRequest**](LinkRepoTaskRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRepoBranches**
```swift
    open class func listRepoBranches(owner: String, repo: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List branches on a repository.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let owner = "owner_example" // String | 
let repo = "repo_example" // String | 

// List branches on a repository.
RepoAPI.listRepoBranches(owner: owner, repo: repo) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRepoCommits**
```swift
    open class func listRepoCommits(owner: String, repo: String, branch: String? = nil, limit: Int? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List commits on a repository.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let branch = "branch_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// List commits on a repository.
RepoAPI.listRepoCommits(owner: owner, repo: repo, branch: branch, limit: limit) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **branch** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRepoPullRequests**
```swift
    open class func listRepoPullRequests(owner: String, repo: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List pull requests on a repository.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let owner = "owner_example" // String | 
let repo = "repo_example" // String | 

// List pull requests on a repository.
RepoAPI.listRepoPullRequests(owner: owner, repo: repo) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRepoRepositories**
```swift
    open class func listRepoRepositories(visibility: String? = nil, limit: Int? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List the caller's accessible repositories.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let visibility = "visibility_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// List the caller's accessible repositories.
RepoAPI.listRepoRepositories(visibility: visibility, limit: limit) { (response, error) in
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
 **visibility** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRepoTasks**
```swift
    open class func listRepoTasks(owner: String, repo: String, state: State_listRepoTasks? = nil, perPage: Int? = nil, page: Int? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List tasks linked to this repo (the \"issues\" surface).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let state = "state_example" // String |  (optional)
let perPage = 987 // Int |  (optional)
let page = 987 // Int |  (optional)

// List tasks linked to this repo (the \"issues\" surface).
RepoAPI.listRepoTasks(owner: owner, repo: repo, state: state, perPage: perPage, page: page) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **state** | **String** |  | [optional] 
 **perPage** | **Int** |  | [optional] 
 **page** | **Int** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRepoWorkflows**
```swift
    open class func listRepoWorkflows(owner: String, repo: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List CI workflows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let owner = "owner_example" // String | 
let repo = "repo_example" // String | 

// List CI workflows.
RepoAPI.listRepoWorkflows(owner: owner, repo: repo) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergeRepoPullRequest**
```swift
    open class func mergeRepoPullRequest(owner: String, repo: String, number: Int, requestBody: [String: AnyCodable]? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Merge a pull request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let number = 987 // Int | 
let requestBody = "TODO" // [String: AnyCodable] |  (optional)

// Merge a pull request.
RepoAPI.mergeRepoPullRequest(owner: owner, repo: repo, number: number, requestBody: requestBody) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **number** | **Int** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerRepoWorkflow**
```swift
    open class func triggerRepoWorkflow(owner: String, repo: String, id: String, requestBody: [String: AnyCodable]? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Trigger a workflow_dispatch run.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] |  (optional)

// Trigger a workflow_dispatch run.
RepoAPI.triggerRepoWorkflow(owner: owner, repo: repo, id: id, requestBody: requestBody) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **id** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateRepoBranch**
```swift
    open class func workspaceCreateRepoBranch(org: String, workspace: String, owner: String, repo: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

RepoAPI.workspaceCreateRepoBranch(org: org, workspace: workspace, owner: owner, repo: repo, requestBody: requestBody) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateRepoPullRequest**
```swift
    open class func workspaceCreateRepoPullRequest(org: String, workspace: String, owner: String, repo: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

RepoAPI.workspaceCreateRepoPullRequest(org: org, workspace: workspace, owner: owner, repo: repo, requestBody: requestBody) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateRepoRepository**
```swift
    open class func workspaceCreateRepoRepository(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

RepoAPI.workspaceCreateRepoRepository(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

# **workspaceGetRepoCommit**
```swift
    open class func workspaceGetRepoCommit(org: String, workspace: String, owner: String, repo: String, sha: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let sha = "sha_example" // String | 

RepoAPI.workspaceGetRepoCommit(org: org, workspace: workspace, owner: owner, repo: repo, sha: sha) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **sha** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetRepoRepository**
```swift
    open class func workspaceGetRepoRepository(org: String, workspace: String, owner: String, repo: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let owner = "owner_example" // String | 
let repo = "repo_example" // String | 

RepoAPI.workspaceGetRepoRepository(org: org, workspace: workspace, owner: owner, repo: repo) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceLinkRepoTask**
```swift
    open class func workspaceLinkRepoTask(org: String, workspace: String, owner: String, repo: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

RepoAPI.workspaceLinkRepoTask(org: org, workspace: workspace, owner: owner, repo: repo, requestBody: requestBody) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListRepoBranches**
```swift
    open class func workspaceListRepoBranches(org: String, workspace: String, owner: String, repo: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let owner = "owner_example" // String | 
let repo = "repo_example" // String | 

RepoAPI.workspaceListRepoBranches(org: org, workspace: workspace, owner: owner, repo: repo) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListRepoCommits**
```swift
    open class func workspaceListRepoCommits(org: String, workspace: String, owner: String, repo: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let owner = "owner_example" // String | 
let repo = "repo_example" // String | 

RepoAPI.workspaceListRepoCommits(org: org, workspace: workspace, owner: owner, repo: repo) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListRepoPullRequests**
```swift
    open class func workspaceListRepoPullRequests(org: String, workspace: String, owner: String, repo: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let owner = "owner_example" // String | 
let repo = "repo_example" // String | 

RepoAPI.workspaceListRepoPullRequests(org: org, workspace: workspace, owner: owner, repo: repo) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListRepoRepositories**
```swift
    open class func workspaceListRepoRepositories(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

RepoAPI.workspaceListRepoRepositories(org: org, workspace: workspace) { (response, error) in
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

# **workspaceListRepoTasks**
```swift
    open class func workspaceListRepoTasks(org: String, workspace: String, owner: String, repo: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let owner = "owner_example" // String | 
let repo = "repo_example" // String | 

RepoAPI.workspaceListRepoTasks(org: org, workspace: workspace, owner: owner, repo: repo) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListRepoWorkflows**
```swift
    open class func workspaceListRepoWorkflows(org: String, workspace: String, owner: String, repo: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let owner = "owner_example" // String | 
let repo = "repo_example" // String | 

RepoAPI.workspaceListRepoWorkflows(org: org, workspace: workspace, owner: owner, repo: repo) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceMergeRepoPullRequest**
```swift
    open class func workspaceMergeRepoPullRequest(org: String, workspace: String, owner: String, repo: String, number: Int, requestBody: [String: AnyCodable]? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let number = 987 // Int | 
let requestBody = "TODO" // [String: AnyCodable] |  (optional)

RepoAPI.workspaceMergeRepoPullRequest(org: org, workspace: workspace, owner: owner, repo: repo, number: number, requestBody: requestBody) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **number** | **Int** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceTriggerRepoWorkflow**
```swift
    open class func workspaceTriggerRepoWorkflow(org: String, workspace: String, owner: String, repo: String, id: String, requestBody: [String: AnyCodable]? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let owner = "owner_example" // String | 
let repo = "repo_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] |  (optional)

RepoAPI.workspaceTriggerRepoWorkflow(org: org, workspace: workspace, owner: owner, repo: repo, id: id, requestBody: requestBody) { (response, error) in
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
 **owner** | **String** |  | 
 **repo** | **String** |  | 
 **id** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

