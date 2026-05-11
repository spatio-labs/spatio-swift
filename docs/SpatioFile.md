# SpatioFile

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**provider** | **String** |  | [optional] 
**accountId** | **String** |  | [optional] 
**name** | **String** |  | 
**size** | **Int64** | Bytes. | 
**mimeType** | **String** |  | 
**folderId** | **String** |  | [optional] 
**storageType** | **String** | Backing storage class — &#x60;r2&#x60;, &#x60;gdrive&#x60;, &#x60;dropbox&#x60;, etc. Provider-specific; treat as opaque.  | 
**downloadUrl** | **String** | Pre-signed download URL when one is cached on the row. Use &#x60;GET /v1/files/{id}/download&#x60; for a guaranteed-fresh URL — this field can lag past expiry.  | [optional] 
**metadata** | **[String: AnyCodable]** |  | [optional] 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


