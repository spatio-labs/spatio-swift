# WorkspacesAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptWorkspaceInvitation**](WorkspacesAPI.md#acceptworkspaceinvitation) | **POST** /v1/invitations/{token}/accept | Accept a workspace invitation by token. The signed-in user&#39;s email must match the invitation. Organization-token accept lives at &#x60;POST /v1/organizations/{org}/accept-invitation&#x60;. 
[**addWorkspaceMember**](WorkspacesAPI.md#addworkspacemember) | **POST** /v1/workspaces/{workspaceId}/members | Add a member directly (skips invitation flow).
[**createWorkspace**](WorkspacesAPI.md#createworkspace) | **POST** /v1/workspaces | Create a workspace. Requires &#x60;organizationId&#x60; in the body — bare \&quot;personal\&quot; workspaces aren&#39;t supported on the public API. 
[**createWorkspaceInvitation**](WorkspacesAPI.md#createworkspaceinvitation) | **POST** /v1/workspaces/{workspaceId}/invitations | Invite a user to a workspace.
[**getPublicInvitation**](WorkspacesAPI.md#getpublicinvitation) | **GET** /invitations/{token} | Fetch invitation details by token (unauthenticated). Used by the renderer to show invitation context before the user signs in. 
[**getWorkspace**](WorkspacesAPI.md#getworkspace) | **GET** /v1/workspaces/{workspaceId} | Fetch a single workspace by id.
[**listMyWorkspaces**](WorkspacesAPI.md#listmyworkspaces) | **GET** /v1/workspaces | List the caller&#39;s workspaces (across organizations).
[**listWorkspaceInvitations**](WorkspacesAPI.md#listworkspaceinvitations) | **GET** /v1/workspaces/{workspaceId}/invitations | List pending workspace invitations.
[**listWorkspaceMembers**](WorkspacesAPI.md#listworkspacemembers) | **GET** /v1/workspaces/{workspaceId}/members | List members of a workspace.
[**removeWorkspaceMember**](WorkspacesAPI.md#removeworkspacemember) | **DELETE** /v1/workspaces/{workspaceId}/members/{memberId} | Remove a member from the workspace.
[**revokeWorkspaceInvitation**](WorkspacesAPI.md#revokeworkspaceinvitation) | **DELETE** /v1/workspaces/{workspaceId}/invitations/{invitationId} | Revoke a pending workspace invitation.
[**updateWorkspace**](WorkspacesAPI.md#updateworkspace) | **PATCH** /v1/workspaces/{workspaceId} | Update workspace metadata.
[**updateWorkspaceMember**](WorkspacesAPI.md#updateworkspacemember) | **PATCH** /v1/workspaces/{workspaceId}/members/{memberId} | Update a member&#39;s role.


# **acceptWorkspaceInvitation**
```swift
    open class func acceptWorkspaceInvitation(token: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Accept a workspace invitation by token. The signed-in user's email must match the invitation. Organization-token accept lives at `POST /v1/organizations/{org}/accept-invitation`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let token = "token_example" // String | 

// Accept a workspace invitation by token. The signed-in user's email must match the invitation. Organization-token accept lives at `POST /v1/organizations/{org}/accept-invitation`. 
WorkspacesAPI.acceptWorkspaceInvitation(token: token) { (response, error) in
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
 **token** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addWorkspaceMember**
```swift
    open class func addWorkspaceMember(workspaceId: String, addWorkspaceMemberRequest: AddWorkspaceMemberRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Add a member directly (skips invitation flow).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 
let addWorkspaceMemberRequest = AddWorkspaceMemberRequest(email: "email_example", role: "role_example") // AddWorkspaceMemberRequest | 

// Add a member directly (skips invitation flow).
WorkspacesAPI.addWorkspaceMember(workspaceId: workspaceId, addWorkspaceMemberRequest: addWorkspaceMemberRequest) { (response, error) in
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
 **workspaceId** | **String** |  | 
 **addWorkspaceMemberRequest** | [**AddWorkspaceMemberRequest**](AddWorkspaceMemberRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkspace**
```swift
    open class func createWorkspace(createWorkspaceRequest: CreateWorkspaceRequest, completion: @escaping (_ data: WorkspaceEnvelope?, _ error: Error?) -> Void)
```

Create a workspace. Requires `organizationId` in the body — bare \"personal\" workspaces aren't supported on the public API. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createWorkspaceRequest = CreateWorkspaceRequest(name: "name_example", slug: "slug_example", description: "description_example", organizationId: "organizationId_example") // CreateWorkspaceRequest | 

// Create a workspace. Requires `organizationId` in the body — bare \"personal\" workspaces aren't supported on the public API. 
WorkspacesAPI.createWorkspace(createWorkspaceRequest: createWorkspaceRequest) { (response, error) in
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
 **createWorkspaceRequest** | [**CreateWorkspaceRequest**](CreateWorkspaceRequest.md) |  | 

### Return type

[**WorkspaceEnvelope**](WorkspaceEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkspaceInvitation**
```swift
    open class func createWorkspaceInvitation(workspaceId: String, createWorkspaceInvitationRequest: CreateWorkspaceInvitationRequest, completion: @escaping (_ data: WorkspaceInvitation?, _ error: Error?) -> Void)
```

Invite a user to a workspace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 
let createWorkspaceInvitationRequest = CreateWorkspaceInvitationRequest(email: "email_example", role: "role_example") // CreateWorkspaceInvitationRequest | 

// Invite a user to a workspace.
WorkspacesAPI.createWorkspaceInvitation(workspaceId: workspaceId, createWorkspaceInvitationRequest: createWorkspaceInvitationRequest) { (response, error) in
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
 **workspaceId** | **String** |  | 
 **createWorkspaceInvitationRequest** | [**CreateWorkspaceInvitationRequest**](CreateWorkspaceInvitationRequest.md) |  | 

### Return type

[**WorkspaceInvitation**](WorkspaceInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicInvitation**
```swift
    open class func getPublicInvitation(token: String, completion: @escaping (_ data: PublicInvitationPayload?, _ error: Error?) -> Void)
```

Fetch invitation details by token (unauthenticated). Used by the renderer to show invitation context before the user signs in. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let token = "token_example" // String | 

// Fetch invitation details by token (unauthenticated). Used by the renderer to show invitation context before the user signs in. 
WorkspacesAPI.getPublicInvitation(token: token) { (response, error) in
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
 **token** | **String** |  | 

### Return type

[**PublicInvitationPayload**](PublicInvitationPayload.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspace**
```swift
    open class func getWorkspace(workspaceId: String, completion: @escaping (_ data: WorkspaceEnvelope?, _ error: Error?) -> Void)
```

Fetch a single workspace by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 

// Fetch a single workspace by id.
WorkspacesAPI.getWorkspace(workspaceId: workspaceId) { (response, error) in
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
 **workspaceId** | **String** |  | 

### Return type

[**WorkspaceEnvelope**](WorkspaceEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMyWorkspaces**
```swift
    open class func listMyWorkspaces(completion: @escaping (_ data: WorkspaceListResponse?, _ error: Error?) -> Void)
```

List the caller's workspaces (across organizations).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the caller's workspaces (across organizations).
WorkspacesAPI.listMyWorkspaces() { (response, error) in
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

[**WorkspaceListResponse**](WorkspaceListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkspaceInvitations**
```swift
    open class func listWorkspaceInvitations(workspaceId: String, completion: @escaping (_ data: WorkspaceInvitationListResponse?, _ error: Error?) -> Void)
```

List pending workspace invitations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 

// List pending workspace invitations.
WorkspacesAPI.listWorkspaceInvitations(workspaceId: workspaceId) { (response, error) in
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
 **workspaceId** | **String** |  | 

### Return type

[**WorkspaceInvitationListResponse**](WorkspaceInvitationListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkspaceMembers**
```swift
    open class func listWorkspaceMembers(workspaceId: String, completion: @escaping (_ data: WorkspaceMemberListResponse?, _ error: Error?) -> Void)
```

List members of a workspace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 

// List members of a workspace.
WorkspacesAPI.listWorkspaceMembers(workspaceId: workspaceId) { (response, error) in
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
 **workspaceId** | **String** |  | 

### Return type

[**WorkspaceMemberListResponse**](WorkspaceMemberListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeWorkspaceMember**
```swift
    open class func removeWorkspaceMember(workspaceId: String, memberId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove a member from the workspace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 
let memberId = "memberId_example" // String | 

// Remove a member from the workspace.
WorkspacesAPI.removeWorkspaceMember(workspaceId: workspaceId, memberId: memberId) { (response, error) in
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
 **workspaceId** | **String** |  | 
 **memberId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeWorkspaceInvitation**
```swift
    open class func revokeWorkspaceInvitation(workspaceId: String, invitationId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revoke a pending workspace invitation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 
let invitationId = "invitationId_example" // String | 

// Revoke a pending workspace invitation.
WorkspacesAPI.revokeWorkspaceInvitation(workspaceId: workspaceId, invitationId: invitationId) { (response, error) in
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
 **workspaceId** | **String** |  | 
 **invitationId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkspace**
```swift
    open class func updateWorkspace(workspaceId: String, updateWorkspaceRequest: UpdateWorkspaceRequest, completion: @escaping (_ data: WorkspaceEnvelope?, _ error: Error?) -> Void)
```

Update workspace metadata.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 
let updateWorkspaceRequest = UpdateWorkspaceRequest(name: "name_example", description: "description_example", logoUrl: "logoUrl_example", settings: "TODO") // UpdateWorkspaceRequest | 

// Update workspace metadata.
WorkspacesAPI.updateWorkspace(workspaceId: workspaceId, updateWorkspaceRequest: updateWorkspaceRequest) { (response, error) in
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
 **workspaceId** | **String** |  | 
 **updateWorkspaceRequest** | [**UpdateWorkspaceRequest**](UpdateWorkspaceRequest.md) |  | 

### Return type

[**WorkspaceEnvelope**](WorkspaceEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkspaceMember**
```swift
    open class func updateWorkspaceMember(workspaceId: String, memberId: String, updateWorkspaceMemberRequest: UpdateWorkspaceMemberRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update a member's role.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 
let memberId = "memberId_example" // String | 
let updateWorkspaceMemberRequest = UpdateWorkspaceMemberRequest(role: "role_example") // UpdateWorkspaceMemberRequest | 

// Update a member's role.
WorkspacesAPI.updateWorkspaceMember(workspaceId: workspaceId, memberId: memberId, updateWorkspaceMemberRequest: updateWorkspaceMemberRequest) { (response, error) in
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
 **workspaceId** | **String** |  | 
 **memberId** | **String** |  | 
 **updateWorkspaceMemberRequest** | [**UpdateWorkspaceMemberRequest**](UpdateWorkspaceMemberRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

