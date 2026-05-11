# CallsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCall**](CallsAPI.md#createcall) | **POST** /v1/calls | Start a new call.
[**createMeetingRoom**](CallsAPI.md#createmeetingroom) | **POST** /v1/calls/rooms | Create a persistent meeting room.
[**deleteCallRecording**](CallsAPI.md#deletecallrecording) | **DELETE** /v1/calls/recordings/{recordingId} | Delete a recording.
[**endCall**](CallsAPI.md#endcall) | **POST** /v1/calls/{id}/end | End a call (host only).
[**getBandwidthHistory**](CallsAPI.md#getbandwidthhistory) | **GET** /v1/calls/bandwidth/history | Time-series bandwidth metrics.
[**getBandwidthSummary**](CallsAPI.md#getbandwidthsummary) | **GET** /v1/calls/bandwidth/summary | Aggregate bandwidth metrics.
[**getCall**](CallsAPI.md#getcall) | **GET** /v1/calls/{id} | Fetch a call.
[**getMeetingRoom**](CallsAPI.md#getmeetingroom) | **GET** /v1/calls/rooms/{id} | Fetch a meeting room.
[**joinCall**](CallsAPI.md#joincall) | **POST** /v1/calls/{id}/join | Join a call.
[**leaveCall**](CallsAPI.md#leavecall) | **POST** /v1/calls/{id}/leave | Leave a call.
[**listActiveCalls**](CallsAPI.md#listactivecalls) | **GET** /v1/calls | List active calls.
[**listCallRecordings**](CallsAPI.md#listcallrecordings) | **GET** /v1/calls/{id}/recordings | List recordings for a call.
[**startCallRecording**](CallsAPI.md#startcallrecording) | **POST** /v1/calls/{id}/recordings/start | Start a recording (host only).
[**stopCallRecording**](CallsAPI.md#stopcallrecording) | **POST** /v1/calls/{id}/recordings/{recordingId}/stop | Stop an in-progress recording.
[**updateCallParticipantState**](CallsAPI.md#updatecallparticipantstate) | **PATCH** /v1/calls/{id}/participant | Toggle participant audio/video/screen-share state.
[**workspaceCreateCall**](CallsAPI.md#workspacecreatecall) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls | 
[**workspaceCreateMeetingRoom**](CallsAPI.md#workspacecreatemeetingroom) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls/rooms | 
[**workspaceDeleteCallRecording**](CallsAPI.md#workspacedeletecallrecording) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/calls/recordings/{recordingId} | 
[**workspaceEndCall**](CallsAPI.md#workspaceendcall) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/end | 
[**workspaceGetBandwidthHistory**](CallsAPI.md#workspacegetbandwidthhistory) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calls/bandwidth/history | 
[**workspaceGetBandwidthSummary**](CallsAPI.md#workspacegetbandwidthsummary) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calls/bandwidth/summary | 
[**workspaceGetCall**](CallsAPI.md#workspacegetcall) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calls/{id} | 
[**workspaceGetMeetingRoom**](CallsAPI.md#workspacegetmeetingroom) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calls/rooms/{id} | 
[**workspaceJoinCall**](CallsAPI.md#workspacejoincall) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/join | 
[**workspaceLeaveCall**](CallsAPI.md#workspaceleavecall) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/leave | 
[**workspaceListActiveCalls**](CallsAPI.md#workspacelistactivecalls) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calls | 
[**workspaceListCallRecordings**](CallsAPI.md#workspacelistcallrecordings) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/recordings | 
[**workspaceStartCallRecording**](CallsAPI.md#workspacestartcallrecording) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/recordings/start | 
[**workspaceStopCallRecording**](CallsAPI.md#workspacestopcallrecording) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/recordings/{recordingId}/stop | 
[**workspaceUpdateCallParticipant**](CallsAPI.md#workspaceupdatecallparticipant) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/participant | 


# **createCall**
```swift
    open class func createCall(createCallRequest: CreateCallRequest? = nil, completion: @escaping (_ data: SpatioCall?, _ error: Error?) -> Void)
```

Start a new call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createCallRequest = CreateCallRequest(title: "title_example", workspaceId: "workspaceId_example", roomId: "roomId_example", metadata: "TODO") // CreateCallRequest |  (optional)

// Start a new call.
CallsAPI.createCall(createCallRequest: createCallRequest) { (response, error) in
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
 **createCallRequest** | [**CreateCallRequest**](CreateCallRequest.md) |  | [optional] 

### Return type

[**SpatioCall**](SpatioCall.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMeetingRoom**
```swift
    open class func createMeetingRoom(createMeetingRoomRequest: CreateMeetingRoomRequest, completion: @escaping (_ data: MeetingRoom?, _ error: Error?) -> Void)
```

Create a persistent meeting room.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createMeetingRoomRequest = CreateMeetingRoomRequest(name: "name_example", workspaceId: "workspaceId_example") // CreateMeetingRoomRequest | 

// Create a persistent meeting room.
CallsAPI.createMeetingRoom(createMeetingRoomRequest: createMeetingRoomRequest) { (response, error) in
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
 **createMeetingRoomRequest** | [**CreateMeetingRoomRequest**](CreateMeetingRoomRequest.md) |  | 

### Return type

[**MeetingRoom**](MeetingRoom.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCallRecording**
```swift
    open class func deleteCallRecording(recordingId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a recording.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let recordingId = "recordingId_example" // String | 

// Delete a recording.
CallsAPI.deleteCallRecording(recordingId: recordingId) { (response, error) in
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
 **recordingId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **endCall**
```swift
    open class func endCall(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

End a call (host only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// End a call (host only).
CallsAPI.endCall(id: id) { (response, error) in
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

# **getBandwidthHistory**
```swift
    open class func getBandwidthHistory(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Time-series bandwidth metrics.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Time-series bandwidth metrics.
CallsAPI.getBandwidthHistory() { (response, error) in
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

# **getBandwidthSummary**
```swift
    open class func getBandwidthSummary(completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Aggregate bandwidth metrics.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Aggregate bandwidth metrics.
CallsAPI.getBandwidthSummary() { (response, error) in
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

# **getCall**
```swift
    open class func getCall(id: String, completion: @escaping (_ data: SpatioCall?, _ error: Error?) -> Void)
```

Fetch a call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch a call.
CallsAPI.getCall(id: id) { (response, error) in
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

[**SpatioCall**](SpatioCall.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMeetingRoom**
```swift
    open class func getMeetingRoom(id: String, completion: @escaping (_ data: MeetingRoom?, _ error: Error?) -> Void)
```

Fetch a meeting room.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch a meeting room.
CallsAPI.getMeetingRoom(id: id) { (response, error) in
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

[**MeetingRoom**](MeetingRoom.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **joinCall**
```swift
    open class func joinCall(id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Join a call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Join a call.
CallsAPI.joinCall(id: id) { (response, error) in
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

# **leaveCall**
```swift
    open class func leaveCall(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Leave a call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Leave a call.
CallsAPI.leaveCall(id: id) { (response, error) in
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

# **listActiveCalls**
```swift
    open class func listActiveCalls(completion: @escaping (_ data: CallListResponse?, _ error: Error?) -> Void)
```

List active calls.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List active calls.
CallsAPI.listActiveCalls() { (response, error) in
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

[**CallListResponse**](CallListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCallRecordings**
```swift
    open class func listCallRecordings(id: String, completion: @escaping (_ data: CallRecordingListResponse?, _ error: Error?) -> Void)
```

List recordings for a call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// List recordings for a call.
CallsAPI.listCallRecordings(id: id) { (response, error) in
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

[**CallRecordingListResponse**](CallRecordingListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startCallRecording**
```swift
    open class func startCallRecording(id: String, completion: @escaping (_ data: CallRecording?, _ error: Error?) -> Void)
```

Start a recording (host only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Start a recording (host only).
CallsAPI.startCallRecording(id: id) { (response, error) in
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

[**CallRecording**](CallRecording.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stopCallRecording**
```swift
    open class func stopCallRecording(id: String, recordingId: String, completion: @escaping (_ data: CallRecording?, _ error: Error?) -> Void)
```

Stop an in-progress recording.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let recordingId = "recordingId_example" // String | 

// Stop an in-progress recording.
CallsAPI.stopCallRecording(id: id, recordingId: recordingId) { (response, error) in
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
 **recordingId** | **String** |  | 

### Return type

[**CallRecording**](CallRecording.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCallParticipantState**
```swift
    open class func updateCallParticipantState(id: String, updateParticipantStateRequest: UpdateParticipantStateRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Toggle participant audio/video/screen-share state.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateParticipantStateRequest = UpdateParticipantStateRequest(audioEnabled: false, videoEnabled: false, screenShareEnabled: false) // UpdateParticipantStateRequest | 

// Toggle participant audio/video/screen-share state.
CallsAPI.updateCallParticipantState(id: id, updateParticipantStateRequest: updateParticipantStateRequest) { (response, error) in
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
 **updateParticipantStateRequest** | [**UpdateParticipantStateRequest**](UpdateParticipantStateRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateCall**
```swift
    open class func workspaceCreateCall(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

CallsAPI.workspaceCreateCall(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

# **workspaceCreateMeetingRoom**
```swift
    open class func workspaceCreateMeetingRoom(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

CallsAPI.workspaceCreateMeetingRoom(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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

# **workspaceDeleteCallRecording**
```swift
    open class func workspaceDeleteCallRecording(org: String, workspace: String, recordingId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let recordingId = "recordingId_example" // String | 

CallsAPI.workspaceDeleteCallRecording(org: org, workspace: workspace, recordingId: recordingId) { (response, error) in
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
 **recordingId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceEndCall**
```swift
    open class func workspaceEndCall(org: String, workspace: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

CallsAPI.workspaceEndCall(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceGetBandwidthHistory**
```swift
    open class func workspaceGetBandwidthHistory(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

CallsAPI.workspaceGetBandwidthHistory(org: org, workspace: workspace) { (response, error) in
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

# **workspaceGetBandwidthSummary**
```swift
    open class func workspaceGetBandwidthSummary(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

CallsAPI.workspaceGetBandwidthSummary(org: org, workspace: workspace) { (response, error) in
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

# **workspaceGetCall**
```swift
    open class func workspaceGetCall(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

CallsAPI.workspaceGetCall(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceGetMeetingRoom**
```swift
    open class func workspaceGetMeetingRoom(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

CallsAPI.workspaceGetMeetingRoom(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceJoinCall**
```swift
    open class func workspaceJoinCall(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

CallsAPI.workspaceJoinCall(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceLeaveCall**
```swift
    open class func workspaceLeaveCall(org: String, workspace: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

CallsAPI.workspaceLeaveCall(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceListActiveCalls**
```swift
    open class func workspaceListActiveCalls(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

CallsAPI.workspaceListActiveCalls(org: org, workspace: workspace) { (response, error) in
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

# **workspaceListCallRecordings**
```swift
    open class func workspaceListCallRecordings(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

CallsAPI.workspaceListCallRecordings(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceStartCallRecording**
```swift
    open class func workspaceStartCallRecording(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

CallsAPI.workspaceStartCallRecording(org: org, workspace: workspace, id: id) { (response, error) in
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

# **workspaceStopCallRecording**
```swift
    open class func workspaceStopCallRecording(org: String, workspace: String, id: String, recordingId: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let recordingId = "recordingId_example" // String | 

CallsAPI.workspaceStopCallRecording(org: org, workspace: workspace, id: id, recordingId: recordingId) { (response, error) in
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
 **recordingId** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUpdateCallParticipant**
```swift
    open class func workspaceUpdateCallParticipant(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

CallsAPI.workspaceUpdateCallParticipant(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
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

