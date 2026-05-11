# Workspace

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**slug** | **String** |  | 
**description** | **String** |  | [optional] 
**logoUrl** | **String** |  | [optional] 
**organizationId** | **String** |  | [optional] 
**organization** | [**WorkspaceOrganization**](WorkspaceOrganization.md) |  | [optional] 
**role** | **String** | The caller&#39;s role in this workspace (&#x60;owner&#x60;, &#x60;admin&#x60;, &#x60;member&#x60;, &#x60;guest&#x60;). | [optional] 
**settings** | **AnyCodable** | Per-workspace settings. Currently emitted as either an object (&#x60;{language, timezone, ...}&#x60;) on &#x60;GET /v1/workspaces/{id}&#x60; or a JSON-encoded string on &#x60;GET /v1/organizations/{id}/workspaces&#x60;. Treat as opaque and parse defensively.  | [optional] 
**isDefault** | **Bool** |  | [optional] 
**memberCount** | **Int** |  | [optional] 
**billingTier** | **String** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


