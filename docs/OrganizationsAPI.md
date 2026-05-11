# OrganizationsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptOrganizationInvitation**](OrganizationsAPI.md#acceptorganizationinvitation) | **POST** /v1/organizations/{org}/accept-invitation | Accept an invitation to this organization.
[**addOrganizationMember**](OrganizationsAPI.md#addorganizationmember) | **POST** /v1/organizations/{org}/members | Add a member directly (skips invitation flow).
[**createOrganization**](OrganizationsAPI.md#createorganization) | **POST** /v1/organizations | Create an organization.
[**createOrganizationConcept**](OrganizationsAPI.md#createorganizationconcept) | **POST** /v1/organizations/{org}/concepts | Create an org-brain concept (admin+ only).
[**createOrganizationCustomRole**](OrganizationsAPI.md#createorganizationcustomrole) | **POST** /v1/organizations/{org}/roles | Create a custom role (admin+ only).
[**createOrganizationInvitation**](OrganizationsAPI.md#createorganizationinvitation) | **POST** /v1/organizations/{org}/invitations | Invite a user to the organization.
[**createOrganizationWorkspace**](OrganizationsAPI.md#createorganizationworkspace) | **POST** /v1/organizations/{org}/workspaces | Create a workspace inside an organization.
[**deleteOrganization**](OrganizationsAPI.md#deleteorganization) | **DELETE** /v1/organizations/{org} | Delete an organization.
[**deleteOrganizationConcept**](OrganizationsAPI.md#deleteorganizationconcept) | **DELETE** /v1/organizations/{org}/concepts/{slug} | Delete a concept (admin+ only).
[**deleteOrganizationCustomRole**](OrganizationsAPI.md#deleteorganizationcustomrole) | **DELETE** /v1/organizations/{org}/roles/{roleId} | Delete a custom role (admin+ only).
[**deleteOrganizationLogo**](OrganizationsAPI.md#deleteorganizationlogo) | **DELETE** /v1/organizations/{org}/logo | Delete the organization logo.
[**getOrganization**](OrganizationsAPI.md#getorganization) | **GET** /v1/organizations/{org} | Fetch a single organization.
[**getOrganizationConcept**](OrganizationsAPI.md#getorganizationconcept) | **GET** /v1/organizations/{org}/concepts/{slug} | Fetch a concept.
[**listMyOrganizations**](OrganizationsAPI.md#listmyorganizations) | **GET** /v1/organizations | List the caller&#39;s organizations.
[**listOrganizationAuditLog**](OrganizationsAPI.md#listorganizationauditlog) | **GET** /v1/organizations/{org}/audit-log | Read the organization audit log (admin / billing-admin only).
[**listOrganizationConcepts**](OrganizationsAPI.md#listorganizationconcepts) | **GET** /v1/organizations/{org}/concepts | List org-brain concepts (curated knowledge surfaced to agents).
[**listOrganizationCustomRoles**](OrganizationsAPI.md#listorganizationcustomroles) | **GET** /v1/organizations/{org}/roles | List custom roles defined on the organization.
[**listOrganizationInvitations**](OrganizationsAPI.md#listorganizationinvitations) | **GET** /v1/organizations/{org}/invitations | List pending invitations for an organization.
[**listOrganizationMembers**](OrganizationsAPI.md#listorganizationmembers) | **GET** /v1/organizations/{org}/members | List members of an organization.
[**listOrganizationWorkspaces**](OrganizationsAPI.md#listorganizationworkspaces) | **GET** /v1/organizations/{org}/workspaces | List workspaces in an organization.
[**removeOrganizationMember**](OrganizationsAPI.md#removeorganizationmember) | **DELETE** /v1/organizations/{org}/members/{memberId} | Remove a member from the organization.
[**resendOrganizationInvitation**](OrganizationsAPI.md#resendorganizationinvitation) | **POST** /v1/organizations/{org}/invitations/{invitationId}/resend | Revoke and reissue an invitation with a fresh token.
[**revokeOrganizationInvitation**](OrganizationsAPI.md#revokeorganizationinvitation) | **DELETE** /v1/organizations/{org}/invitations/{invitationId} | Revoke a pending invitation.
[**updateOrganization**](OrganizationsAPI.md#updateorganization) | **PATCH** /v1/organizations/{org} | Update organization metadata.
[**updateOrganizationConcept**](OrganizationsAPI.md#updateorganizationconcept) | **PATCH** /v1/organizations/{org}/concepts/{slug} | Update a concept (admin+ only).
[**updateOrganizationCustomRole**](OrganizationsAPI.md#updateorganizationcustomrole) | **PATCH** /v1/organizations/{org}/roles/{roleId} | Update a custom role (admin+ only).
[**updateOrganizationMember**](OrganizationsAPI.md#updateorganizationmember) | **PATCH** /v1/organizations/{org}/members/{memberId} | Update a member&#39;s role.
[**uploadOrganizationLogo**](OrganizationsAPI.md#uploadorganizationlogo) | **POST** /v1/organizations/{org}/logo | Upload (or replace) the organization logo. Multipart.


# **acceptOrganizationInvitation**
```swift
    open class func acceptOrganizationInvitation(org: String, acceptOrganizationInvitationRequest: AcceptOrganizationInvitationRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Accept an invitation to this organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let acceptOrganizationInvitationRequest = acceptOrganizationInvitation_request(token: "token_example") // AcceptOrganizationInvitationRequest | 

// Accept an invitation to this organization.
OrganizationsAPI.acceptOrganizationInvitation(org: org, acceptOrganizationInvitationRequest: acceptOrganizationInvitationRequest) { (response, error) in
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
 **acceptOrganizationInvitationRequest** | [**AcceptOrganizationInvitationRequest**](AcceptOrganizationInvitationRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addOrganizationMember**
```swift
    open class func addOrganizationMember(org: String, addOrganizationMemberRequest: AddOrganizationMemberRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Add a member directly (skips invitation flow).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let addOrganizationMemberRequest = AddOrganizationMemberRequest(email: "email_example", role: "role_example", workspaceId: "workspaceId_example") // AddOrganizationMemberRequest | 

// Add a member directly (skips invitation flow).
OrganizationsAPI.addOrganizationMember(org: org, addOrganizationMemberRequest: addOrganizationMemberRequest) { (response, error) in
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
 **addOrganizationMemberRequest** | [**AddOrganizationMemberRequest**](AddOrganizationMemberRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganization**
```swift
    open class func createOrganization(createOrganizationRequest: CreateOrganizationRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Create an organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createOrganizationRequest = CreateOrganizationRequest(name: "name_example", slug: "slug_example", description: "description_example", logoUrl: "logoUrl_example", createDefaultWorkspace: false, defaultWorkspaceName: "defaultWorkspaceName_example") // CreateOrganizationRequest | 

// Create an organization.
OrganizationsAPI.createOrganization(createOrganizationRequest: createOrganizationRequest) { (response, error) in
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
 **createOrganizationRequest** | [**CreateOrganizationRequest**](CreateOrganizationRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganizationConcept**
```swift
    open class func createOrganizationConcept(org: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Create an org-brain concept (admin+ only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Create an org-brain concept (admin+ only).
OrganizationsAPI.createOrganizationConcept(org: org, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganizationCustomRole**
```swift
    open class func createOrganizationCustomRole(org: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Create a custom role (admin+ only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Create a custom role (admin+ only).
OrganizationsAPI.createOrganizationCustomRole(org: org, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganizationInvitation**
```swift
    open class func createOrganizationInvitation(org: String, createOrganizationInvitationRequest: CreateOrganizationInvitationRequest, completion: @escaping (_ data: OrganizationInvitation?, _ error: Error?) -> Void)
```

Invite a user to the organization.

Pending invitations count toward seat cap. Free-tier callers at the cap receive a `402` with billing-upgrade payload; paid-tier auto-scales the Stripe quantity. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let createOrganizationInvitationRequest = CreateOrganizationInvitationRequest(email: "email_example", role: "role_example", workspaceId: "workspaceId_example") // CreateOrganizationInvitationRequest | 

// Invite a user to the organization.
OrganizationsAPI.createOrganizationInvitation(org: org, createOrganizationInvitationRequest: createOrganizationInvitationRequest) { (response, error) in
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
 **createOrganizationInvitationRequest** | [**CreateOrganizationInvitationRequest**](CreateOrganizationInvitationRequest.md) |  | 

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganizationWorkspace**
```swift
    open class func createOrganizationWorkspace(org: String, createWorkspaceRequest: CreateWorkspaceRequest, completion: @escaping (_ data: WorkspaceEnvelope?, _ error: Error?) -> Void)
```

Create a workspace inside an organization.

Requires the `OrgActionCreateWorkspace` action permission. Slug collisions auto-suffix (`-2`, `-3`, ...). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let createWorkspaceRequest = CreateWorkspaceRequest(name: "name_example", slug: "slug_example", description: "description_example", organizationId: "organizationId_example") // CreateWorkspaceRequest | 

// Create a workspace inside an organization.
OrganizationsAPI.createOrganizationWorkspace(org: org, createWorkspaceRequest: createWorkspaceRequest) { (response, error) in
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
 **createWorkspaceRequest** | [**CreateWorkspaceRequest**](CreateWorkspaceRequest.md) |  | 

### Return type

[**WorkspaceEnvelope**](WorkspaceEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrganization**
```swift
    open class func deleteOrganization(org: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | Organization id or slug.

// Delete an organization.
OrganizationsAPI.deleteOrganization(org: org) { (response, error) in
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
 **org** | **String** | Organization id or slug. | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrganizationConcept**
```swift
    open class func deleteOrganizationConcept(org: String, slug: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a concept (admin+ only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let slug = "slug_example" // String | 

// Delete a concept (admin+ only).
OrganizationsAPI.deleteOrganizationConcept(org: org, slug: slug) { (response, error) in
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
 **slug** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrganizationCustomRole**
```swift
    open class func deleteOrganizationCustomRole(org: String, roleId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a custom role (admin+ only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let roleId = "roleId_example" // String | 

// Delete a custom role (admin+ only).
OrganizationsAPI.deleteOrganizationCustomRole(org: org, roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrganizationLogo**
```swift
    open class func deleteOrganizationLogo(org: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete the organization logo.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 

// Delete the organization logo.
OrganizationsAPI.deleteOrganizationLogo(org: org) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganization**
```swift
    open class func getOrganization(org: String, completion: @escaping (_ data: OrganizationDetailLegacy?, _ error: Error?) -> Void)
```

Fetch a single organization.

**Wire format note:** response uses PascalCase keys (`ID`, `Name`, `Slug`, ...) — distinct from the rest of the SpatioAPI's camelCase convention. Documented as-is; a future cleanup will harmonize. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | Organization id or slug.

// Fetch a single organization.
OrganizationsAPI.getOrganization(org: org) { (response, error) in
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
 **org** | **String** | Organization id or slug. | 

### Return type

[**OrganizationDetailLegacy**](OrganizationDetailLegacy.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationConcept**
```swift
    open class func getOrganizationConcept(org: String, slug: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Fetch a concept.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let slug = "slug_example" // String | 

// Fetch a concept.
OrganizationsAPI.getOrganizationConcept(org: org, slug: slug) { (response, error) in
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
 **slug** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMyOrganizations**
```swift
    open class func listMyOrganizations(completion: @escaping (_ data: OrganizationListResponse?, _ error: Error?) -> Void)
```

List the caller's organizations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the caller's organizations.
OrganizationsAPI.listMyOrganizations() { (response, error) in
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

[**OrganizationListResponse**](OrganizationListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationAuditLog**
```swift
    open class func listOrganizationAuditLog(org: String, limit: Int? = nil, cursor: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Read the organization audit log (admin / billing-admin only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let limit = 987 // Int |  (optional)
let cursor = "cursor_example" // String |  (optional)

// Read the organization audit log (admin / billing-admin only).
OrganizationsAPI.listOrganizationAuditLog(org: org, limit: limit, cursor: cursor) { (response, error) in
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
 **limit** | **Int** |  | [optional] 
 **cursor** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationConcepts**
```swift
    open class func listOrganizationConcepts(org: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List org-brain concepts (curated knowledge surfaced to agents).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 

// List org-brain concepts (curated knowledge surfaced to agents).
OrganizationsAPI.listOrganizationConcepts(org: org) { (response, error) in
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

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationCustomRoles**
```swift
    open class func listOrganizationCustomRoles(org: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

List custom roles defined on the organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 

// List custom roles defined on the organization.
OrganizationsAPI.listOrganizationCustomRoles(org: org) { (response, error) in
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

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationInvitations**
```swift
    open class func listOrganizationInvitations(org: String, completion: @escaping (_ data: OrganizationInvitationListResponse?, _ error: Error?) -> Void)
```

List pending invitations for an organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 

// List pending invitations for an organization.
OrganizationsAPI.listOrganizationInvitations(org: org) { (response, error) in
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

### Return type

[**OrganizationInvitationListResponse**](OrganizationInvitationListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationMembers**
```swift
    open class func listOrganizationMembers(org: String, completion: @escaping (_ data: OrganizationMemberListResponse?, _ error: Error?) -> Void)
```

List members of an organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 

// List members of an organization.
OrganizationsAPI.listOrganizationMembers(org: org) { (response, error) in
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

### Return type

[**OrganizationMemberListResponse**](OrganizationMemberListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationWorkspaces**
```swift
    open class func listOrganizationWorkspaces(org: String, completion: @escaping (_ data: WorkspaceListResponse?, _ error: Error?) -> Void)
```

List workspaces in an organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 

// List workspaces in an organization.
OrganizationsAPI.listOrganizationWorkspaces(org: org) { (response, error) in
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

### Return type

[**WorkspaceListResponse**](WorkspaceListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeOrganizationMember**
```swift
    open class func removeOrganizationMember(org: String, memberId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove a member from the organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let memberId = "memberId_example" // String | 

// Remove a member from the organization.
OrganizationsAPI.removeOrganizationMember(org: org, memberId: memberId) { (response, error) in
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
 **memberId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resendOrganizationInvitation**
```swift
    open class func resendOrganizationInvitation(org: String, invitationId: String, completion: @escaping (_ data: OrganizationInvitation?, _ error: Error?) -> Void)
```

Revoke and reissue an invitation with a fresh token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let invitationId = "invitationId_example" // String | 

// Revoke and reissue an invitation with a fresh token.
OrganizationsAPI.resendOrganizationInvitation(org: org, invitationId: invitationId) { (response, error) in
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
 **invitationId** | **String** |  | 

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeOrganizationInvitation**
```swift
    open class func revokeOrganizationInvitation(org: String, invitationId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revoke a pending invitation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let invitationId = "invitationId_example" // String | 

// Revoke a pending invitation.
OrganizationsAPI.revokeOrganizationInvitation(org: org, invitationId: invitationId) { (response, error) in
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
 **invitationId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganization**
```swift
    open class func updateOrganization(org: String, updateOrganizationRequest: UpdateOrganizationRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update organization metadata.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | Organization id or slug.
let updateOrganizationRequest = UpdateOrganizationRequest(name: "name_example", description: "description_example", logoUrl: "logoUrl_example") // UpdateOrganizationRequest | 

// Update organization metadata.
OrganizationsAPI.updateOrganization(org: org, updateOrganizationRequest: updateOrganizationRequest) { (response, error) in
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
 **org** | **String** | Organization id or slug. | 
 **updateOrganizationRequest** | [**UpdateOrganizationRequest**](UpdateOrganizationRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganizationConcept**
```swift
    open class func updateOrganizationConcept(org: String, slug: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update a concept (admin+ only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let slug = "slug_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Update a concept (admin+ only).
OrganizationsAPI.updateOrganizationConcept(org: org, slug: slug, requestBody: requestBody) { (response, error) in
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
 **slug** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganizationCustomRole**
```swift
    open class func updateOrganizationCustomRole(org: String, roleId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update a custom role (admin+ only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let roleId = "roleId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Update a custom role (admin+ only).
OrganizationsAPI.updateOrganizationCustomRole(org: org, roleId: roleId, requestBody: requestBody) { (response, error) in
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
 **roleId** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganizationMember**
```swift
    open class func updateOrganizationMember(org: String, memberId: String, updateOrganizationMemberRequest: UpdateOrganizationMemberRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update a member's role.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let memberId = "memberId_example" // String | 
let updateOrganizationMemberRequest = UpdateOrganizationMemberRequest(role: "role_example") // UpdateOrganizationMemberRequest | 

// Update a member's role.
OrganizationsAPI.updateOrganizationMember(org: org, memberId: memberId, updateOrganizationMemberRequest: updateOrganizationMemberRequest) { (response, error) in
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
 **memberId** | **String** |  | 
 **updateOrganizationMemberRequest** | [**UpdateOrganizationMemberRequest**](UpdateOrganizationMemberRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadOrganizationLogo**
```swift
    open class func uploadOrganizationLogo(org: String, file: URL? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Upload (or replace) the organization logo. Multipart.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let file = URL(string: "https://example.com")! // URL |  (optional)

// Upload (or replace) the organization logo. Multipart.
OrganizationsAPI.uploadOrganizationLogo(org: org, file: file) { (response, error) in
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
 **file** | **URL** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

