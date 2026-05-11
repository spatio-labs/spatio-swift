# FederatedSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** |  | 
**platforms** | **[String]** | Subset to fan out to. Empty means all available platforms. | [optional] 
**limit** | **Int** |  | [optional] [default to 25]
**pageTokens** | **[String: String]** | Per-platform cursor for pagination. | [optional] 
**workspaceId** | **String** |  | [optional] 
**organizationId** | **String** |  | [optional] 
**includeShared** | **Bool** |  | [optional] 
**includeArchived** | **Bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


