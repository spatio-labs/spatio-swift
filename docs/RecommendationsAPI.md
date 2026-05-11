# RecommendationsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteRecommendation**](RecommendationsAPI.md#deleterecommendation) | **DELETE** /v1/recommendations/{id} | Delete a recommendation (hard delete; status-update is preferred).
[**getRecommendation**](RecommendationsAPI.md#getrecommendation) | **GET** /v1/recommendations/{id} | Fetch one recommendation.
[**listRecommendations**](RecommendationsAPI.md#listrecommendations) | **GET** /v1/recommendations | List recommendations for a workspace.
[**proposeRecommendation**](RecommendationsAPI.md#proposerecommendation) | **POST** /v1/recommendations | Agent-side propose endpoint (the &#x60;spatio_recommendations propose&#x60; MCP tool calls this).
[**updateRecommendationStatus**](RecommendationsAPI.md#updaterecommendationstatus) | **PATCH** /v1/recommendations/{id}/status | Accept or dismiss a recommendation.


# **deleteRecommendation**
```swift
    open class func deleteRecommendation(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a recommendation (hard delete; status-update is preferred).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Delete a recommendation (hard delete; status-update is preferred).
RecommendationsAPI.deleteRecommendation(id: id) { (response, error) in
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

# **getRecommendation**
```swift
    open class func getRecommendation(id: String, completion: @escaping (_ data: Recommendation?, _ error: Error?) -> Void)
```

Fetch one recommendation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch one recommendation.
RecommendationsAPI.getRecommendation(id: id) { (response, error) in
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

[**Recommendation**](Recommendation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecommendations**
```swift
    open class func listRecommendations(workspaceId: String? = nil, status: String? = nil, limit: Int? = nil, completion: @escaping (_ data: RecommendationListResponse?, _ error: Error?) -> Void)
```

List recommendations for a workspace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let workspaceId = "workspaceId_example" // String |  (optional)
let status = "status_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// List recommendations for a workspace.
RecommendationsAPI.listRecommendations(workspaceId: workspaceId, status: status, limit: limit) { (response, error) in
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
 **limit** | **Int** |  | [optional] 

### Return type

[**RecommendationListResponse**](RecommendationListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **proposeRecommendation**
```swift
    open class func proposeRecommendation(proposeRecommendationRequest: ProposeRecommendationRequest, completion: @escaping (_ data: Recommendation?, _ error: Error?) -> Void)
```

Agent-side propose endpoint (the `spatio_recommendations propose` MCP tool calls this).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let proposeRecommendationRequest = ProposeRecommendationRequest(workspaceId: "workspaceId_example", kind: "kind_example", title: "title_example", body: "body_example", payload: "TODO", expiresAt: Date()) // ProposeRecommendationRequest | 

// Agent-side propose endpoint (the `spatio_recommendations propose` MCP tool calls this).
RecommendationsAPI.proposeRecommendation(proposeRecommendationRequest: proposeRecommendationRequest) { (response, error) in
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
 **proposeRecommendationRequest** | [**ProposeRecommendationRequest**](ProposeRecommendationRequest.md) |  | 

### Return type

[**Recommendation**](Recommendation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecommendationStatus**
```swift
    open class func updateRecommendationStatus(id: String, updateRecommendationStatusRequest: UpdateRecommendationStatusRequest, completion: @escaping (_ data: Recommendation?, _ error: Error?) -> Void)
```

Accept or dismiss a recommendation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateRecommendationStatusRequest = UpdateRecommendationStatusRequest(status: "status_example") // UpdateRecommendationStatusRequest | 

// Accept or dismiss a recommendation.
RecommendationsAPI.updateRecommendationStatus(id: id, updateRecommendationStatusRequest: updateRecommendationStatusRequest) { (response, error) in
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
 **updateRecommendationStatusRequest** | [**UpdateRecommendationStatusRequest**](UpdateRecommendationStatusRequest.md) |  | 

### Return type

[**Recommendation**](Recommendation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

