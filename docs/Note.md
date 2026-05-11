# Note

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Stable provider id for the note. | 
**provider** | **String** | Registered provider id (e.g. &#x60;native-notes&#x60;). | [optional] 
**accountId** | **String** | Connected-account row this note belongs to. | [optional] 
**ownerUserId** | **String** | User id of the note&#39;s owner. Surfaced so the renderer can show \&quot;Shared with you\&quot; when &#x60;ownerUserId&#x60; differs from the viewer&#39;s id. Empty for non-native providers.  | [optional] 
**title** | **String** |  | 
**content** | **String** | Markdown body. The block tree at &#x60;/v1/notes/{id}/blocks&#x60; is the canonical structured representation; &#x60;content&#x60; is a flattened markdown view kept for clients that don&#39;t render blocks.  | 
**icon** | **String** | Emoji or short string used as the note&#39;s icon. | [optional] 
**coverImage** | **String** | URL of the note&#39;s cover image. | [optional] 
**parentId** | **String** | Parent note id when notes are nested. | [optional] 
**properties** | **[String: AnyCodable]** | Free-form provider-specific properties (tags, etc.). | [optional] 
**archived** | **Bool** |  | 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 
**lastEditedBy** | **String** | User id of the most recent editor. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


