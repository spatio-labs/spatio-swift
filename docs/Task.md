# Task

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**provider** | **String** | Registered provider id (e.g. &#x60;native-tasks&#x60;, &#x60;linear&#x60;). | [optional] 
**accountId** | **String** |  | [optional] 
**ownerUserId** | **String** |  | [optional] 
**title** | **String** |  | 
**description** | **String** |  | [optional] 
**status** | **String** | Free-form status string. Canonical values across most providers: &#x60;todo&#x60;, &#x60;in_progress&#x60;, &#x60;in_review&#x60;, &#x60;backlog&#x60;, &#x60;done&#x60;. The platform falls back to &#x60;done&#x60; when &#x60;completed&#x60; is true and &#x60;status&#x60; is empty, else &#x60;todo&#x60;.  | [optional] 
**completed** | **Bool** |  | 
**dueDate** | **Date** |  | [optional] 
**priority** | **String** | Priority bucket. Canonical values (mapped from a 0–4 integer): &#x60;none&#x60;, &#x60;low&#x60;, &#x60;medium&#x60;, &#x60;high&#x60;, &#x60;urgent&#x60;.  | 
**labels** | **[String]** |  | [optional] 
**tags** | **[String]** |  | [optional] 
**assigneeId** | **String** |  | [optional] 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 
**completedAt** | **Date** |  | [optional] 
**parentTaskId** | **String** | Parent task id when this is a subtask. | [optional] 
**metadata** | **[String: AnyCodable]** | Provider-specific extras. | [optional] 
**type** | **String** | Discriminator. Canonical values: &#x60;todo&#x60;, &#x60;reminder&#x60;, &#x60;issue&#x60;. Empty defaults to &#x60;todo&#x60;.  | [optional] 
**sourcePlatform** | **String** | When this task was auto-generated from another artifact (e.g. a calendar event reminder), the platform id of that artifact.  | [optional] 
**sourceId** | **String** | Source artifact id paired with &#x60;sourcePlatform&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


