# RealtimeAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**issueCollaborationToken**](RealtimeAPI.md#issuecollaborationtoken) | **POST** /v1/realtime/collaboration-token | Exchange a bearer token for a short-lived Yjs collaboration JWT.


# **issueCollaborationToken**
```swift
    open class func issueCollaborationToken(issueCollaborationTokenRequest: IssueCollaborationTokenRequest? = nil, completion: @escaping (_ data: IssueCollaborationToken200Response?, _ error: Error?) -> Void)
```

Exchange a bearer token for a short-lived Yjs collaboration JWT.

The Yjs Cloudflare Worker that powers live document collaboration (`wss://realtime-collaboration.<account>.workers.dev`) only accepts platform-signed JWTs. Third-party clients holding an OAuth access token or PAT call this endpoint to mint a 5-minute collaboration JWT they can present to the worker.  The minted JWT inherits user + workspace identity from the presenting bearer token. Optionally scope it to a single room by supplying `room` in the request body. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let issueCollaborationTokenRequest = issueCollaborationToken_request(room: "room_example") // IssueCollaborationTokenRequest |  (optional)

// Exchange a bearer token for a short-lived Yjs collaboration JWT.
RealtimeAPI.issueCollaborationToken(issueCollaborationTokenRequest: issueCollaborationTokenRequest) { (response, error) in
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
 **issueCollaborationTokenRequest** | [**IssueCollaborationTokenRequest**](IssueCollaborationTokenRequest.md) |  | [optional] 

### Return type

[**IssueCollaborationToken200Response**](IssueCollaborationToken200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

