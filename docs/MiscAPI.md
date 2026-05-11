# MiscAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePinnedPlatform**](MiscAPI.md#deletepinnedplatform) | **DELETE** /v1/pinned-platforms/{platformId} | Unpin a platform.
[**getBootstrap**](MiscAPI.md#getbootstrap) | **GET** /v1/bootstrap | Single-shot identity + config bundle the renderer hits on first load. Replaces the legacy server-side hydration in app/layout.tsx. 
[**getOnboardingInvitations**](MiscAPI.md#getonboardinginvitations) | **GET** /v1/onboarding/invitations | Pending invitations the caller can accept during onboarding.
[**getPinnedPlatforms**](MiscAPI.md#getpinnedplatforms) | **GET** /v1/pinned-platforms | Read the caller&#39;s pinned-platform list (sidebar order).
[**getPlatformPreferences**](MiscAPI.md#getplatformpreferences) | **GET** /v1/platform-preferences | Read the caller&#39;s per-platform sidebar/visibility preferences.
[**getPlatformSettingsLegacy**](MiscAPI.md#getplatformsettingslegacy) | **GET** /v1/settings/platform | Legacy admin-tier platform settings read endpoint.
[**getThreadsStatus**](MiscAPI.md#getthreadsstatus) | **GET** /v1/threads/status | Async-thread / job-runner status snapshot.
[**getUserPermissions**](MiscAPI.md#getuserpermissions) | **GET** /v1/user/permissions | Read the caller&#39;s effective per-resource permissions.
[**getWorkspaceActivity**](MiscAPI.md#getworkspaceactivity) | **GET** /v1/workspace-activity | Recent activity feed for a workspace.
[**getWorkspaceLayout**](MiscAPI.md#getworkspacelayout) | **GET** /v1/layout/{workspaceId} | Read the renderer&#39;s saved pane layout for a workspace.
[**putPinnedPlatform**](MiscAPI.md#putpinnedplatform) | **PUT** /v1/pinned-platforms | Pin a platform.
[**putPlatformPreferences**](MiscAPI.md#putplatformpreferences) | **PUT** /v1/platform-preferences | Replace the caller&#39;s platform preferences.
[**putWorkspaceLayout**](MiscAPI.md#putworkspacelayout) | **PUT** /v1/layout/{workspaceId} | Save the renderer&#39;s pane layout.
[**reorderPinnedPlatforms**](MiscAPI.md#reorderpinnedplatforms) | **POST** /v1/pinned-platforms/reorder | Reorder the pinned-platform list.
[**resetPlatformPreferences**](MiscAPI.md#resetplatformpreferences) | **POST** /v1/platform-preferences/reset | Reset platform preferences to defaults.
[**updateUserProfile**](MiscAPI.md#updateuserprofile) | **PATCH** /v1/user/profile | Update the caller&#39;s user profile (name, avatar, etc.).
[**validateOrganizationSlug**](MiscAPI.md#validateorganizationslug) | **GET** /v1/validate-slug/organization | Check whether an org slug is available.
[**validateWorkspaceSlug**](MiscAPI.md#validateworkspaceslug) | **GET** /v1/validate-slug/workspace | Check whether a workspace slug is available.


# **deletePinnedPlatform**
```swift
    open class func deletePinnedPlatform(platformId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unpin a platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let platformId = "platformId_example" // String | 

// Unpin a platform.
MiscAPI.deletePinnedPlatform(platformId: platformId) { (response, error) in
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

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBootstrap**
```swift
    open class func getBootstrap(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Single-shot identity + config bundle the renderer hits on first load. Replaces the legacy server-side hydration in app/layout.tsx. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Single-shot identity + config bundle the renderer hits on first load. Replaces the legacy server-side hydration in app/layout.tsx. 
MiscAPI.getBootstrap() { (response, error) in
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

# **getOnboardingInvitations**
```swift
    open class func getOnboardingInvitations(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Pending invitations the caller can accept during onboarding.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Pending invitations the caller can accept during onboarding.
MiscAPI.getOnboardingInvitations() { (response, error) in
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

# **getPinnedPlatforms**
```swift
    open class func getPinnedPlatforms(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Read the caller's pinned-platform list (sidebar order).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Read the caller's pinned-platform list (sidebar order).
MiscAPI.getPinnedPlatforms() { (response, error) in
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

# **getPlatformPreferences**
```swift
    open class func getPlatformPreferences(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Read the caller's per-platform sidebar/visibility preferences.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Read the caller's per-platform sidebar/visibility preferences.
MiscAPI.getPlatformPreferences() { (response, error) in
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

# **getPlatformSettingsLegacy**
```swift
    open class func getPlatformSettingsLegacy(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Legacy admin-tier platform settings read endpoint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Legacy admin-tier platform settings read endpoint.
MiscAPI.getPlatformSettingsLegacy() { (response, error) in
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

# **getThreadsStatus**
```swift
    open class func getThreadsStatus(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Async-thread / job-runner status snapshot.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Async-thread / job-runner status snapshot.
MiscAPI.getThreadsStatus() { (response, error) in
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

# **getUserPermissions**
```swift
    open class func getUserPermissions(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Read the caller's effective per-resource permissions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Read the caller's effective per-resource permissions.
MiscAPI.getUserPermissions() { (response, error) in
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

# **getWorkspaceActivity**
```swift
    open class func getWorkspaceActivity(workspaceId: String? = nil, limit: Int? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Recent activity feed for a workspace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// Recent activity feed for a workspace.
MiscAPI.getWorkspaceActivity(workspaceId: workspaceId, limit: limit) { (response, error) in
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
 **workspaceId** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspaceLayout**
```swift
    open class func getWorkspaceLayout(workspaceId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Read the renderer's saved pane layout for a workspace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 

// Read the renderer's saved pane layout for a workspace.
MiscAPI.getWorkspaceLayout(workspaceId: workspaceId) { (response, error) in
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

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPinnedPlatform**
```swift
    open class func putPinnedPlatform(requestBody: [String: AnyCodable], completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Pin a platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Pin a platform.
MiscAPI.putPinnedPlatform(requestBody: requestBody) { (response, error) in
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

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPlatformPreferences**
```swift
    open class func putPlatformPreferences(requestBody: [String: AnyCodable], completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Replace the caller's platform preferences.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Replace the caller's platform preferences.
MiscAPI.putPlatformPreferences(requestBody: requestBody) { (response, error) in
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

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putWorkspaceLayout**
```swift
    open class func putWorkspaceLayout(workspaceId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Save the renderer's pane layout.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Save the renderer's pane layout.
MiscAPI.putWorkspaceLayout(workspaceId: workspaceId, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reorderPinnedPlatforms**
```swift
    open class func reorderPinnedPlatforms(requestBody: [String: AnyCodable], completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Reorder the pinned-platform list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Reorder the pinned-platform list.
MiscAPI.reorderPinnedPlatforms(requestBody: requestBody) { (response, error) in
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

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPlatformPreferences**
```swift
    open class func resetPlatformPreferences(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Reset platform preferences to defaults.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Reset platform preferences to defaults.
MiscAPI.resetPlatformPreferences() { (response, error) in
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

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserProfile**
```swift
    open class func updateUserProfile(requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update the caller's user profile (name, avatar, etc.).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Update the caller's user profile (name, avatar, etc.).
MiscAPI.updateUserProfile(requestBody: requestBody) { (response, error) in
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

# **validateOrganizationSlug**
```swift
    open class func validateOrganizationSlug(slug: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Check whether an org slug is available.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let slug = "slug_example" // String |  (optional)

// Check whether an org slug is available.
MiscAPI.validateOrganizationSlug(slug: slug) { (response, error) in
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
 **slug** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateWorkspaceSlug**
```swift
    open class func validateWorkspaceSlug(slug: String? = nil, organizationId: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Check whether a workspace slug is available.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let slug = "slug_example" // String |  (optional)
let organizationId = "organizationId_example" // String |  (optional)

// Check whether a workspace slug is available.
MiscAPI.validateWorkspaceSlug(slug: slug, organizationId: organizationId) { (response, error) in
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
 **slug** | **String** |  | [optional] 
 **organizationId** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

