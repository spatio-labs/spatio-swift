# ConnectionsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disconnectConnection**](ConnectionsAPI.md#disconnectconnection) | **POST** /v1/connections/disconnect | Disconnect a connected account.
[**installConnection**](ConnectionsAPI.md#installconnection) | **POST** /v1/connections/install | Begin an OAuth install for a connection.
[**listAccounts**](ConnectionsAPI.md#listaccounts) | **GET** /v1/accounts | List the caller&#39;s multi-provider accounts.
[**listConnectionIntegrations**](ConnectionsAPI.md#listconnectionintegrations) | **GET** /v1/connections/integrations | List supported integrations + their connection state. Legacy path; &#x60;/v1/connections/list&#x60; is the preferred alias. 
[**listConnections**](ConnectionsAPI.md#listconnections) | **GET** /v1/connections/list | List supported integrations + their connection state.
[**listUserConnections**](ConnectionsAPI.md#listuserconnections) | **GET** /v1/connections/user | List the caller&#39;s connected accounts.
[**refreshConnection**](ConnectionsAPI.md#refreshconnection) | **POST** /v1/connections/refresh | Force a refresh of a connection&#39;s OAuth tokens.
[**removeAccount**](ConnectionsAPI.md#removeaccount) | **DELETE** /v1/accounts/{accountId} | Remove an account.
[**resolveAccount**](ConnectionsAPI.md#resolveaccount) | **GET** /v1/accounts/resolve | Resolve an account by provider/identifier.
[**syncAccount**](ConnectionsAPI.md#syncaccount) | **POST** /v1/accounts/{accountId}/sync | Force a sync against the upstream provider.
[**updateAccount**](ConnectionsAPI.md#updateaccount) | **PATCH** /v1/accounts/{accountId} | Update account metadata (label, etc.).


# **disconnectConnection**
```swift
    open class func disconnectConnection(disconnectConnectionRequest: DisconnectConnectionRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Disconnect a connected account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let disconnectConnectionRequest = DisconnectConnectionRequest(connectionId: "connectionId_example", accountId: "accountId_example") // DisconnectConnectionRequest | 

// Disconnect a connected account.
ConnectionsAPI.disconnectConnection(disconnectConnectionRequest: disconnectConnectionRequest) { (response, error) in
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
 **disconnectConnectionRequest** | [**DisconnectConnectionRequest**](DisconnectConnectionRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **installConnection**
```swift
    open class func installConnection(installConnectionRequest: InstallConnectionRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Begin an OAuth install for a connection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let installConnectionRequest = InstallConnectionRequest(connectionId: "connectionId_example", accountId: "accountId_example", metadata: "TODO") // InstallConnectionRequest | 

// Begin an OAuth install for a connection.
ConnectionsAPI.installConnection(installConnectionRequest: installConnectionRequest) { (response, error) in
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
 **installConnectionRequest** | [**InstallConnectionRequest**](InstallConnectionRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccounts**
```swift
    open class func listAccounts(completion: @escaping (_ data: AccountListResponse?, _ error: Error?) -> Void)
```

List the caller's multi-provider accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the caller's multi-provider accounts.
ConnectionsAPI.listAccounts() { (response, error) in
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

[**AccountListResponse**](AccountListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConnectionIntegrations**
```swift
    open class func listConnectionIntegrations(completion: @escaping (_ data: ConnectionListResponse?, _ error: Error?) -> Void)
```

List supported integrations + their connection state. Legacy path; `/v1/connections/list` is the preferred alias. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List supported integrations + their connection state. Legacy path; `/v1/connections/list` is the preferred alias. 
ConnectionsAPI.listConnectionIntegrations() { (response, error) in
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

[**ConnectionListResponse**](ConnectionListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConnections**
```swift
    open class func listConnections(completion: @escaping (_ data: ConnectionListResponse?, _ error: Error?) -> Void)
```

List supported integrations + their connection state.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List supported integrations + their connection state.
ConnectionsAPI.listConnections() { (response, error) in
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

[**ConnectionListResponse**](ConnectionListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserConnections**
```swift
    open class func listUserConnections(completion: @escaping (_ data: ConnectionAccountListResponse?, _ error: Error?) -> Void)
```

List the caller's connected accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the caller's connected accounts.
ConnectionsAPI.listUserConnections() { (response, error) in
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

[**ConnectionAccountListResponse**](ConnectionAccountListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshConnection**
```swift
    open class func refreshConnection(refreshConnectionRequest: RefreshConnectionRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Force a refresh of a connection's OAuth tokens.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let refreshConnectionRequest = RefreshConnectionRequest(connectionId: "connectionId_example", accountId: "accountId_example") // RefreshConnectionRequest | 

// Force a refresh of a connection's OAuth tokens.
ConnectionsAPI.refreshConnection(refreshConnectionRequest: refreshConnectionRequest) { (response, error) in
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
 **refreshConnectionRequest** | [**RefreshConnectionRequest**](RefreshConnectionRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeAccount**
```swift
    open class func removeAccount(accountId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountId = "accountId_example" // String | 

// Remove an account.
ConnectionsAPI.removeAccount(accountId: accountId) { (response, error) in
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
 **accountId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveAccount**
```swift
    open class func resolveAccount(provider: String? = nil, email: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Resolve an account by provider/identifier.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let provider = "provider_example" // String |  (optional)
let email = "email_example" // String |  (optional)

// Resolve an account by provider/identifier.
ConnectionsAPI.resolveAccount(provider: provider, email: email) { (response, error) in
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
 **provider** | **String** |  | [optional] 
 **email** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncAccount**
```swift
    open class func syncAccount(accountId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Force a sync against the upstream provider.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountId = "accountId_example" // String | 

// Force a sync against the upstream provider.
ConnectionsAPI.syncAccount(accountId: accountId) { (response, error) in
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
 **accountId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccount**
```swift
    open class func updateAccount(accountId: String, updateAccountRequest: UpdateAccountRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update account metadata (label, etc.).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountId = "accountId_example" // String | 
let updateAccountRequest = UpdateAccountRequest(label: "label_example", metadata: "TODO") // UpdateAccountRequest | 

// Update account metadata (label, etc.).
ConnectionsAPI.updateAccount(accountId: accountId, updateAccountRequest: updateAccountRequest) { (response, error) in
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
 **accountId** | **String** |  | 
 **updateAccountRequest** | [**UpdateAccountRequest**](UpdateAccountRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

