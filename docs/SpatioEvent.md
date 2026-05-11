# SpatioEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**title** | **String** |  | 
**description** | **String** |  | [optional] 
**startTime** | **Date** |  | 
**endTime** | **Date** |  | 
**allDay** | **Bool** |  | 
**location** | **String** |  | [optional] 
**locationDetails** | **[String: String]** | Free-form key/value (lat, lng, room, etc.). | [optional] 
**organizer** | **String** | Organizer email. | [optional] 
**attendees** | [Attendee] |  | [optional] 
**recurrenceRule** | **String** | RFC 5545 RRULE. | [optional] 
**recurrenceId** | **String** | Set on instances of a recurring series. | [optional] 
**originalStart** | **Date** | Original start of a moved recurring instance. | [optional] 
**status** | **String** | Provider-mapped event status. Free-form string — common values are &#x60;confirmed&#x60;, &#x60;tentative&#x60;, &#x60;cancelled&#x60;, &#x60;needs_action&#x60;, and the empty string when the provider doesn&#39;t populate it. Not enumerated strictly because providers add custom values and the platform passes them through verbatim.  | 
**visibility** | **String** | Free-form visibility string. Common values: &#x60;public&#x60;, &#x60;private&#x60;, &#x60;confidential&#x60;, plus empty when unset.  | 
**busy** | **Bool** | Whether this event marks the time as busy or free. | 
**reminders** | [Reminder] |  | [optional] 
**travelTimeMinutes** | **Int** | Apple Calendar&#39;s local-only travel buffer. Stored on the cached row but not synced to providers that don&#39;t model it.  | [optional] 
**categories** | **[String]** |  | [optional] 
**color** | **String** |  | [optional] 
**userId** | **String** |  | [optional] 
**accountId** | **String** |  | 
**provider** | **String** | Standardized provider id (e.g. &#x60;google-calendar&#x60;, &#x60;native-calendar&#x60;). Mirrors &#x60;provider_id&#x60; — both are populated on writes; clients should prefer &#x60;provider&#x60;.  | [optional] 
**providerId** | **String** | Legacy alias of &#x60;provider&#x60;. | 
**providerData** | **[String: AnyCodable]** | Provider-specific extras. | [optional] 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 
**deletedAt** | **Date** |  | [optional] 
**syncedAt** | **Date** |  | [optional] 
**conferenceData** | [**ConferenceData**](ConferenceData.md) |  | [optional] 
**attachments** | [Attachment] |  | [optional] 
**url** | **String** |  | [optional] 
**etag** | **String** |  | [optional] 
**sequence** | **Int** |  | [optional] 
**customData** | **[String: String]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


