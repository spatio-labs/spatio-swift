# AccountStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **String** | Provider id (e.g. &#x60;native-notes&#x60;, &#x60;notion&#x60;, &#x60;google-keep&#x60;). | 
**accountId** | **String** | Connected-account row id. | 
**accountName** | **String** | Human-readable label for the account, when available. | [optional] 
**status** | **String** | - &#x60;ok&#x60; — provider call returned without error. - &#x60;error&#x60; — provider call failed; details in &#x60;error&#x60;. - &#x60;skipped&#x60; — connection was filtered out before the provider   call ran. Reserved; not currently emitted by the runtime.  | 
**error** | [**AccountError**](AccountError.md) |  | [optional] 
**nextPageToken** | **String** | Provider-specific cursor for the next page, if any. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


