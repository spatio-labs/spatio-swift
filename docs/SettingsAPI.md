# SettingsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkUpdateSettings**](SettingsAPI.md#bulkupdatesettings) | **POST** /v1/settings/bulk-update | Bulk-update multiple settings rows in one round-trip.
[**deleteCurrentUserSettings**](SettingsAPI.md#deletecurrentusersettings) | **DELETE** /v1/settings | Reset the caller&#39;s user-level settings.
[**getCurrentUserSettings**](SettingsAPI.md#getcurrentusersettings) | **GET** /v1/settings | Fetch the caller&#39;s user-level settings.
[**getMailReadReceiptsPref**](SettingsAPI.md#getmailreadreceiptspref) | **GET** /v1/me/preferences/mail-read-receipts | Read the caller&#39;s mail-read-receipts preference.
[**getSettingsPermissions**](SettingsAPI.md#getsettingspermissions) | **GET** /v1/settings/permissions | Read the caller&#39;s settings-write permissions matrix.
[**getUserSettings**](SettingsAPI.md#getusersettings) | **GET** /v1/settings/user/{userId} | Fetch a specific user&#39;s settings (admin / self only).
[**getWorkspaceSettings**](SettingsAPI.md#getworkspacesettings) | **GET** /v1/settings/workspace/{workspaceId} | Fetch workspace-level settings.
[**putCurrentUserSettings**](SettingsAPI.md#putcurrentusersettings) | **PUT** /v1/settings | Replace the caller&#39;s user-level settings.
[**putMailReadReceiptsPref**](SettingsAPI.md#putmailreadreceiptspref) | **PUT** /v1/me/preferences/mail-read-receipts | Update the caller&#39;s mail-read-receipts preference.
[**putUserSettings**](SettingsAPI.md#putusersettings) | **PUT** /v1/settings/user/{userId} | Replace a specific user&#39;s settings.
[**putWorkspaceSettings**](SettingsAPI.md#putworkspacesettings) | **PUT** /v1/settings/workspace/{workspaceId} | Replace workspace-level settings.


# **bulkUpdateSettings**
```swift
    open class func bulkUpdateSettings(requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Bulk-update multiple settings rows in one round-trip.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Bulk-update multiple settings rows in one round-trip.
SettingsAPI.bulkUpdateSettings(requestBody: requestBody) { (response, error) in
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

# **deleteCurrentUserSettings**
```swift
    open class func deleteCurrentUserSettings(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Reset the caller's user-level settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Reset the caller's user-level settings.
SettingsAPI.deleteCurrentUserSettings() { (response, error) in
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

# **getCurrentUserSettings**
```swift
    open class func getCurrentUserSettings(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Fetch the caller's user-level settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Fetch the caller's user-level settings.
SettingsAPI.getCurrentUserSettings() { (response, error) in
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

# **getMailReadReceiptsPref**
```swift
    open class func getMailReadReceiptsPref(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Read the caller's mail-read-receipts preference.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Read the caller's mail-read-receipts preference.
SettingsAPI.getMailReadReceiptsPref() { (response, error) in
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

# **getSettingsPermissions**
```swift
    open class func getSettingsPermissions(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Read the caller's settings-write permissions matrix.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Read the caller's settings-write permissions matrix.
SettingsAPI.getSettingsPermissions() { (response, error) in
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

# **getUserSettings**
```swift
    open class func getUserSettings(userId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Fetch a specific user's settings (admin / self only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let userId = "userId_example" // String | 

// Fetch a specific user's settings (admin / self only).
SettingsAPI.getUserSettings(userId: userId) { (response, error) in
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
 **userId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspaceSettings**
```swift
    open class func getWorkspaceSettings(workspaceId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Fetch workspace-level settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 

// Fetch workspace-level settings.
SettingsAPI.getWorkspaceSettings(workspaceId: workspaceId) { (response, error) in
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

# **putCurrentUserSettings**
```swift
    open class func putCurrentUserSettings(requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Replace the caller's user-level settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Replace the caller's user-level settings.
SettingsAPI.putCurrentUserSettings(requestBody: requestBody) { (response, error) in
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

# **putMailReadReceiptsPref**
```swift
    open class func putMailReadReceiptsPref(requestBody: [String: AnyCodable], completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update the caller's mail-read-receipts preference.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let requestBody = "TODO" // [String: AnyCodable] | 

// Update the caller's mail-read-receipts preference.
SettingsAPI.putMailReadReceiptsPref(requestBody: requestBody) { (response, error) in
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

# **putUserSettings**
```swift
    open class func putUserSettings(userId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Replace a specific user's settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let userId = "userId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Replace a specific user's settings.
SettingsAPI.putUserSettings(userId: userId, requestBody: requestBody) { (response, error) in
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
 **userId** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putWorkspaceSettings**
```swift
    open class func putWorkspaceSettings(workspaceId: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Replace workspace-level settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Replace workspace-level settings.
SettingsAPI.putWorkspaceSettings(workspaceId: workspaceId, requestBody: requestBody) { (response, error) in
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

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

