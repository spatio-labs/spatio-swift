# ShareSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isPublic** | **Bool** |  | 
**hasPassword** | **Bool** |  | 
**shareToken** | **String** | Opaque token embedded in the public URL. Empty when &#x60;isPublic&#x60; is false.  | [optional] 
**shareUrl** | **String** | Fully-qualified public viewer URL. Computed server-side from &#x60;PUBLIC_VIEWER_BASE&#x60; (defaults to &#x60;https://spatio.app&#x60;) and the share token. Empty when the note is private.  | [optional] 
**passwordSetAt** | **Date** | When the current password was set, if any. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


