# AccountAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changePassword**](AccountAPI.md#changepassword) | **POST** /v1/account/security/password | Change or set the account password.
[**consumeAgentTask**](AccountAPI.md#consumeagenttask) | **POST** /v1/account/usage/consume-agent-task | Atomic check + increment on the agent-task counter (one slot per turn).
[**getAccountPlan**](AccountAPI.md#getaccountplan) | **GET** /v1/account/plan | The caller&#39;s subscription tier and status.
[**getAccountTier**](AccountAPI.md#getaccounttier) | **GET** /v1/account/tier | Capability + quota envelope for the caller&#39;s tier.
[**getAccountUsage**](AccountAPI.md#getaccountusage) | **GET** /v1/account/usage | Today&#39;s usage counters across notes, sheets, slides, files, tasks, mail, API.
[**getAgentTaskUsage**](AccountAPI.md#getagenttaskusage) | **GET** /v1/account/usage/agent-tasks | Free-trial agent-task counter snapshot. Read-only; does NOT consume a slot. Use POST &#x60;/v1/account/usage/consume-agent-task&#x60; atomically per turn to gate a tool-using turn. 
[**getSignInMethods**](AccountAPI.md#getsigninmethods) | **GET** /v1/account/security/sign-in-methods | List the linked sign-in methods (password + OAuth providers).
[**listConnectedApps**](AccountAPI.md#listconnectedapps) | **GET** /v1/account/connected-apps | List the OAuth clients the calling user has granted access to.
[**listSessions**](AccountAPI.md#listsessions) | **GET** /v1/account/security/sessions | List active sessions for the caller.
[**revokeConnectedApp**](AccountAPI.md#revokeconnectedapp) | **DELETE** /v1/account/connected-apps/{client_id} | Revoke a connected app and all of its active tokens.
[**revokeOtherSessions**](AccountAPI.md#revokeothersessions) | **POST** /v1/account/security/sessions/revoke-others | Revoke every session except the caller&#39;s current one.
[**revokeSession**](AccountAPI.md#revokesession) | **DELETE** /v1/account/security/sessions/{id} | Revoke a specific session.


# **changePassword**
```swift
    open class func changePassword(changePasswordRequest: ChangePasswordRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Change or set the account password.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let changePasswordRequest = ChangePasswordRequest(currentPassword: "currentPassword_example", newPassword: "newPassword_example") // ChangePasswordRequest | 

// Change or set the account password.
AccountAPI.changePassword(changePasswordRequest: changePasswordRequest) { (response, error) in
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
 **changePasswordRequest** | [**ChangePasswordRequest**](ChangePasswordRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumeAgentTask**
```swift
    open class func consumeAgentTask(completion: @escaping (_ data: ConsumeAgentTaskResponse?, _ error: Error?) -> Void)
```

Atomic check + increment on the agent-task counter (one slot per turn).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Atomic check + increment on the agent-task counter (one slot per turn).
AccountAPI.consumeAgentTask() { (response, error) in
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

[**ConsumeAgentTaskResponse**](ConsumeAgentTaskResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountPlan**
```swift
    open class func getAccountPlan(completion: @escaping (_ data: AccountPlan?, _ error: Error?) -> Void)
```

The caller's subscription tier and status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// The caller's subscription tier and status.
AccountAPI.getAccountPlan() { (response, error) in
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

[**AccountPlan**](AccountPlan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountTier**
```swift
    open class func getAccountTier(completion: @escaping (_ data: AccountTierDetails?, _ error: Error?) -> Void)
```

Capability + quota envelope for the caller's tier.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Capability + quota envelope for the caller's tier.
AccountAPI.getAccountTier() { (response, error) in
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

[**AccountTierDetails**](AccountTierDetails.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountUsage**
```swift
    open class func getAccountUsage(completion: @escaping (_ data: AccountUsage?, _ error: Error?) -> Void)
```

Today's usage counters across notes, sheets, slides, files, tasks, mail, API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Today's usage counters across notes, sheets, slides, files, tasks, mail, API.
AccountAPI.getAccountUsage() { (response, error) in
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

[**AccountUsage**](AccountUsage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentTaskUsage**
```swift
    open class func getAgentTaskUsage(completion: @escaping (_ data: AgentTaskUsage?, _ error: Error?) -> Void)
```

Free-trial agent-task counter snapshot. Read-only; does NOT consume a slot. Use POST `/v1/account/usage/consume-agent-task` atomically per turn to gate a tool-using turn. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Free-trial agent-task counter snapshot. Read-only; does NOT consume a slot. Use POST `/v1/account/usage/consume-agent-task` atomically per turn to gate a tool-using turn. 
AccountAPI.getAgentTaskUsage() { (response, error) in
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

[**AgentTaskUsage**](AgentTaskUsage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignInMethods**
```swift
    open class func getSignInMethods(completion: @escaping (_ data: SignInMethods?, _ error: Error?) -> Void)
```

List the linked sign-in methods (password + OAuth providers).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the linked sign-in methods (password + OAuth providers).
AccountAPI.getSignInMethods() { (response, error) in
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

[**SignInMethods**](SignInMethods.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConnectedApps**
```swift
    open class func listConnectedApps(completion: @escaping (_ data: ConnectedAppsListResponse?, _ error: Error?) -> Void)
```

List the OAuth clients the calling user has granted access to.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the OAuth clients the calling user has granted access to.
AccountAPI.listConnectedApps() { (response, error) in
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

[**ConnectedAppsListResponse**](ConnectedAppsListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSessions**
```swift
    open class func listSessions(completion: @escaping (_ data: SessionListResponse?, _ error: Error?) -> Void)
```

List active sessions for the caller.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List active sessions for the caller.
AccountAPI.listSessions() { (response, error) in
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

[**SessionListResponse**](SessionListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeConnectedApp**
```swift
    open class func revokeConnectedApp(clientId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revoke a connected app and all of its active tokens.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let clientId = "clientId_example" // String | 

// Revoke a connected app and all of its active tokens.
AccountAPI.revokeConnectedApp(clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeOtherSessions**
```swift
    open class func revokeOtherSessions(completion: @escaping (_ data: RevokeOtherSessionsResponse?, _ error: Error?) -> Void)
```

Revoke every session except the caller's current one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Revoke every session except the caller's current one.
AccountAPI.revokeOtherSessions() { (response, error) in
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

[**RevokeOtherSessionsResponse**](RevokeOtherSessionsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeSession**
```swift
    open class func revokeSession(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revoke a specific session.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Revoke a specific session.
AccountAPI.revokeSession(id: id) { (response, error) in
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

