# RoutinesAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**claimRoutineRun**](RoutinesAPI.md#claimroutinerun) | **POST** /v1/routines/runs/{id}/claim | Worker claims a queued run.
[**completeRoutineRun**](RoutinesAPI.md#completeroutinerun) | **POST** /v1/routines/runs/{id}/complete | Worker marks a run complete.
[**createRoutine**](RoutinesAPI.md#createroutine) | **POST** /v1/routines | Create a routine.
[**deleteRoutine**](RoutinesAPI.md#deleteroutine) | **DELETE** /v1/routines/{id} | Delete a routine.
[**getRoutine**](RoutinesAPI.md#getroutine) | **GET** /v1/routines/{id} | Fetch a routine.
[**listRoutineRuns**](RoutinesAPI.md#listroutineruns) | **GET** /v1/routines/{id}/runs | List runs for a routine.
[**listRoutines**](RoutinesAPI.md#listroutines) | **GET** /v1/routines | List routines for the caller&#39;s workspace.
[**runRoutineNow**](RoutinesAPI.md#runroutinenow) | **POST** /v1/routines/{id}/run-now | Trigger an ad-hoc run.
[**updateRoutine**](RoutinesAPI.md#updateroutine) | **PATCH** /v1/routines/{id} | Update a routine.
[**updateRoutineRunProgress**](RoutinesAPI.md#updateroutinerunprogress) | **POST** /v1/routines/runs/{id}/progress | Worker reports progress.


# **claimRoutineRun**
```swift
    open class func claimRoutineRun(id: String, completion: @escaping (_ data: RoutineRun?, _ error: Error?) -> Void)
```

Worker claims a queued run.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Worker claims a queued run.
RoutinesAPI.claimRoutineRun(id: id) { (response, error) in
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

[**RoutineRun**](RoutineRun.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **completeRoutineRun**
```swift
    open class func completeRoutineRun(id: String, routineRunCompleteRequest: RoutineRunCompleteRequest, completion: @escaping (_ data: RoutineRun?, _ error: Error?) -> Void)
```

Worker marks a run complete.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let routineRunCompleteRequest = RoutineRunCompleteRequest(status: "status_example", metadata: "TODO") // RoutineRunCompleteRequest | 

// Worker marks a run complete.
RoutinesAPI.completeRoutineRun(id: id, routineRunCompleteRequest: routineRunCompleteRequest) { (response, error) in
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
 **routineRunCompleteRequest** | [**RoutineRunCompleteRequest**](RoutineRunCompleteRequest.md) |  | 

### Return type

[**RoutineRun**](RoutineRun.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRoutine**
```swift
    open class func createRoutine(createRoutineRequest: CreateRoutineRequest, completion: @escaping (_ data: Routine?, _ error: Error?) -> Void)
```

Create a routine.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createRoutineRequest = CreateRoutineRequest(workspaceId: "workspaceId_example", name: "name_example", description: "description_example", schedule: "TODO", metadata: "TODO") // CreateRoutineRequest | 

// Create a routine.
RoutinesAPI.createRoutine(createRoutineRequest: createRoutineRequest) { (response, error) in
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
 **createRoutineRequest** | [**CreateRoutineRequest**](CreateRoutineRequest.md) |  | 

### Return type

[**Routine**](Routine.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRoutine**
```swift
    open class func deleteRoutine(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a routine.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Delete a routine.
RoutinesAPI.deleteRoutine(id: id) { (response, error) in
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

# **getRoutine**
```swift
    open class func getRoutine(id: String, completion: @escaping (_ data: Routine?, _ error: Error?) -> Void)
```

Fetch a routine.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch a routine.
RoutinesAPI.getRoutine(id: id) { (response, error) in
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

[**Routine**](Routine.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRoutineRuns**
```swift
    open class func listRoutineRuns(id: String, completion: @escaping (_ data: RoutineRunListResponse?, _ error: Error?) -> Void)
```

List runs for a routine.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// List runs for a routine.
RoutinesAPI.listRoutineRuns(id: id) { (response, error) in
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

[**RoutineRunListResponse**](RoutineRunListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRoutines**
```swift
    open class func listRoutines(workspaceId: String? = nil, status: String? = nil, completion: @escaping (_ data: RoutineListResponse?, _ error: Error?) -> Void)
```

List routines for the caller's workspace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String |  (optional)
let status = "status_example" // String |  (optional)

// List routines for the caller's workspace.
RoutinesAPI.listRoutines(workspaceId: workspaceId, status: status) { (response, error) in
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
 **status** | **String** |  | [optional] 

### Return type

[**RoutineListResponse**](RoutineListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runRoutineNow**
```swift
    open class func runRoutineNow(id: String, completion: @escaping (_ data: RoutineRun?, _ error: Error?) -> Void)
```

Trigger an ad-hoc run.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Trigger an ad-hoc run.
RoutinesAPI.runRoutineNow(id: id) { (response, error) in
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

[**RoutineRun**](RoutineRun.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRoutine**
```swift
    open class func updateRoutine(id: String, updateRoutineRequest: UpdateRoutineRequest, completion: @escaping (_ data: Routine?, _ error: Error?) -> Void)
```

Update a routine.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateRoutineRequest = UpdateRoutineRequest(name: "name_example", description: "description_example", schedule: "TODO", status: "status_example", metadata: "TODO") // UpdateRoutineRequest | 

// Update a routine.
RoutinesAPI.updateRoutine(id: id, updateRoutineRequest: updateRoutineRequest) { (response, error) in
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
 **updateRoutineRequest** | [**UpdateRoutineRequest**](UpdateRoutineRequest.md) |  | 

### Return type

[**Routine**](Routine.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRoutineRunProgress**
```swift
    open class func updateRoutineRunProgress(id: String, routineRunProgressRequest: RoutineRunProgressRequest, completion: @escaping (_ data: RoutineRun?, _ error: Error?) -> Void)
```

Worker reports progress.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let routineRunProgressRequest = RoutineRunProgressRequest(progress: 123, metadata: "TODO") // RoutineRunProgressRequest | 

// Worker reports progress.
RoutinesAPI.updateRoutineRunProgress(id: id, routineRunProgressRequest: routineRunProgressRequest) { (response, error) in
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
 **routineRunProgressRequest** | [**RoutineRunProgressRequest**](RoutineRunProgressRequest.md) |  | 

### Return type

[**RoutineRun**](RoutineRun.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

