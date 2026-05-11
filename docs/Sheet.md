# Sheet

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**provider** | **String** | Registered provider id (e.g. &#x60;native-sheets&#x60;). | [optional] 
**accountId** | **String** | Connected-account row this sheet belongs to. | [optional] 
**ownerUserId** | **String** | User id of the sheet owner; non-native providers leave empty. | [optional] 
**name** | **String** |  | 
**description** | **String** |  | [optional] 
**data** | **[String: AnyCodable]** | Free-form provider blob. Treat as opaque. | [optional] 
**rowCount** | **Int** |  | 
**columnCount** | **Int** |  | 
**sheetCount** | **Int** | Tab count when the file contains multiple sheets. | 
**isPublic** | **Bool** |  | 
**isReadOnly** | **Bool** |  | 
**fileSize** | **Int** |  | [optional] 
**lastAccessedAt** | **Date** |  | [optional] 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


