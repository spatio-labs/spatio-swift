# SearchAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**federatedSearch**](SearchAPI.md#federatedsearch) | **POST** /v1/search | Cross-platform federated search.


# **federatedSearch**
```swift
    open class func federatedSearch(federatedSearchRequest: FederatedSearchRequest, completion: @escaping (_ data: FederatedSearch200Response?, _ error: Error?) -> Void)
```

Cross-platform federated search.

Fans out to every platform's per-platform search method in parallel, merges + dedupes results, and returns them in a relevance-then-recency ranking with per-platform cursors for pagination. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let federatedSearchRequest = federatedSearch_request(query: "query_example", platforms: ["platforms_example"], limit: 123, pageTokens: "TODO", workspaceId: "workspaceId_example", organizationId: "organizationId_example", includeShared: false, includeArchived: false) // FederatedSearchRequest | 

// Cross-platform federated search.
SearchAPI.federatedSearch(federatedSearchRequest: federatedSearchRequest) { (response, error) in
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
 **federatedSearchRequest** | [**FederatedSearchRequest**](FederatedSearchRequest.md) |  | 

### Return type

[**FederatedSearch200Response**](FederatedSearch200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

