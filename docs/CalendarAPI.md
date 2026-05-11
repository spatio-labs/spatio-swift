# CalendarAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCalendarEvent**](CalendarAPI.md#createcalendarevent) | **POST** /v1/calendar/events | Create a calendar event.
[**deleteCalendarEvent**](CalendarAPI.md#deletecalendarevent) | **DELETE** /v1/calendar/events/{id} | Delete an event.
[**getCalendarCapabilities**](CalendarAPI.md#getcalendarcapabilities) | **GET** /v1/calendar/capabilities | Per-account capability flags.
[**getCalendarEvent**](CalendarAPI.md#getcalendarevent) | **GET** /v1/calendar/events/{id} | Fetch one event.
[**listCalendarEvents**](CalendarAPI.md#listcalendarevents) | **GET** /v1/calendar/events | List calendar events across connected accounts.
[**listCalendarProviders**](CalendarAPI.md#listcalendarproviders) | **GET** /v1/calendar/providers | List supported calendar providers.
[**syncCalendar**](CalendarAPI.md#synccalendar) | **POST** /v1/calendar/sync | Trigger a sync across connected calendar accounts.
[**updateCalendarEvent**](CalendarAPI.md#updatecalendarevent) | **PATCH** /v1/calendar/events/{id} | Update an event (sparse).
[**workspaceCreateCalendarEvent**](CalendarAPI.md#workspacecreatecalendarevent) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calendar/events | Workspace-scoped create-event (RBAC-protected).
[**workspaceDeleteCalendarEvent**](CalendarAPI.md#workspacedeletecalendarevent) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/calendar/events/{id} | 
[**workspaceGetCalendarEvent**](CalendarAPI.md#workspacegetcalendarevent) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calendar/events/{id} | 
[**workspaceListCalendarEvents**](CalendarAPI.md#workspacelistcalendarevents) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calendar/events | Workspace-scoped list-events (RBAC-protected).
[**workspaceListCalendarProviders**](CalendarAPI.md#workspacelistcalendarproviders) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calendar/providers | Workspace-scoped calendar providers.
[**workspaceUpdateCalendarEvent**](CalendarAPI.md#workspaceupdatecalendarevent) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/calendar/events/{id} | 


# **createCalendarEvent**
```swift
    open class func createCalendarEvent(createEventRequest: CreateEventRequest, xWorkspaceID: String? = nil, completion: @escaping (_ data: CreateCalendarEvent201Response?, _ error: Error?) -> Void)
```

Create a calendar event.

Single-account create. `account_id` is required (no auto-resolve for write operations). Reminder array is mirrored into native tasks under the hood; conference data is auto-attached when `conference_type` is supplied. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createEventRequest = CreateEventRequest(accountId: "accountId_example", calendarId: "calendarId_example", event: SpatioEvent(id: "id_example", title: "title_example", description: "description_example", startTime: Date(), endTime: Date(), allDay: false, location: "location_example", locationDetails: "TODO", organizer: "organizer_example", attendees: [Attendee(email: "email_example", name: "name_example", status: AttendeeStatus(), role: AttendeeRole(), _optional: false, comment: "comment_example", additionalGuests: 123)], recurrenceRule: "recurrenceRule_example", recurrenceId: "recurrenceId_example", originalStart: Date(), status: "status_example", visibility: "visibility_example", busy: false, reminders: [Reminder(method: ReminderMethod(), minutes: 123)], travelTimeMinutes: 123, categories: ["categories_example"], color: "color_example", userId: "userId_example", accountId: "accountId_example", provider: "provider_example", providerId: "providerId_example", providerData: "TODO", createdAt: Date(), updatedAt: Date(), deletedAt: Date(), syncedAt: Date(), conferenceData: ConferenceData(type: "type_example", uri: "uri_example", meetingId: "meetingId_example", passcode: "passcode_example", accessCode: "accessCode_example", dialIn: ["dialIn_example"]), attachments: [Attachment(id: "id_example", title: "title_example", mimeType: "mimeType_example", url: "url_example", size: 123)], url: "url_example", etag: "etag_example", sequence: 123, customData: "TODO"), sendUpdates: "sendUpdates_example", conferenceType: "conferenceType_example") // CreateEventRequest | 
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Create a calendar event.
CalendarAPI.createCalendarEvent(createEventRequest: createEventRequest, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **createEventRequest** | [**CreateEventRequest**](CreateEventRequest.md) |  | 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**CreateCalendarEvent201Response**](CreateCalendarEvent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCalendarEvent**
```swift
    open class func deleteCalendarEvent(id: String, accountId: String, xWorkspaceID: String? = nil, completion: @escaping (_ data: CalendarOperationResult?, _ error: Error?) -> Void)
```

Delete an event.

Hard delete (no soft-delete / trash). Cascades to any reminder tasks the platform created from this event. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Event id.
let accountId = "accountId_example" // String | Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations. 
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Delete an event.
CalendarAPI.deleteCalendarEvent(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Event id. | 
 **accountId** | **String** | Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses &#x60;accountId&#x60;). Required for single-event operations.  | 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**CalendarOperationResult**](CalendarOperationResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarCapabilities**
```swift
    open class func getCalendarCapabilities(accountId: String, completion: @escaping (_ data: CalendarCapabilitiesResponse?, _ error: Error?) -> Void)
```

Per-account capability flags.

Returns the capabilities the provider declares for the given connected account. The renderer uses these to enable/disable form fields (recurrence picker, attendee inputs, etc.). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountId = "accountId_example" // String | Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations. 

// Per-account capability flags.
CalendarAPI.getCalendarCapabilities(accountId: accountId) { (response, error) in
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
 **accountId** | **String** | Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses &#x60;accountId&#x60;). Required for single-event operations.  | 

### Return type

[**CalendarCapabilitiesResponse**](CalendarCapabilitiesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarEvent**
```swift
    open class func getCalendarEvent(id: String, accountId: String, xWorkspaceID: String? = nil, completion: @escaping (_ data: SpatioEvent?, _ error: Error?) -> Void)
```

Fetch one event.

Requires `?account_id=` to identify the source account. Response is the bare `Event` (not wrapped in CalendarOperationResult — distinct from the list/create/update shapes). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Event id.
let accountId = "accountId_example" // String | Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations. 
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch one event.
CalendarAPI.getCalendarEvent(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Event id. | 
 **accountId** | **String** | Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses &#x60;accountId&#x60;). Required for single-event operations.  | 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SpatioEvent**](SpatioEvent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCalendarEvents**
```swift
    open class func listCalendarEvents(accountIds: [String]? = nil, providers: [String]? = nil, xWorkspaceID: String? = nil, timeMin: Date? = nil, timeMax: Date? = nil, limit: Int? = nil, completion: @escaping (_ data: ListCalendarEvents200Response?, _ error: Error?) -> Void)
```

List calendar events across connected accounts.

Fan-out list. Returns events across every connected calendar provider unless filtered by `account_ids[]` or `providers[]`. Supports the cross-platform repeated-or-comma-separated filter syntax (`?account_ids=a&account_ids=b` or `?account_ids=a,b`).  Time bounds (`timeMin` / `timeMax`) accept both RFC3339 and RFC3339Nano. The handler also accepts the snake_case `time_min` / `time_max` for direct curl callers; the spec models the camelCase form because that's what the renderer and SDKs use. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountIds = ["inner_example"] // [String] | Repeatable. Restrict to specific connected accounts. (optional)
let providers = ["inner_example"] // [String] | Repeatable. Restrict to provider ids (`google-calendar`, etc.). (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let timeMin = Date() // Date | Inclusive lower-bound time. RFC3339 or RFC3339Nano. (optional)
let timeMax = Date() // Date | Inclusive upper-bound time. (optional)
let limit = 987 // Int | Max events to return per page (default 50). (optional) (default to 50)

// List calendar events across connected accounts.
CalendarAPI.listCalendarEvents(accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, timeMin: timeMin, timeMax: timeMax, limit: limit) { (response, error) in
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
 **accountIds** | [**[String]**](String.md) | Repeatable. Restrict to specific connected accounts. | [optional] 
 **providers** | [**[String]**](String.md) | Repeatable. Restrict to provider ids (&#x60;google-calendar&#x60;, etc.). | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **timeMin** | **Date** | Inclusive lower-bound time. RFC3339 or RFC3339Nano. | [optional] 
 **timeMax** | **Date** | Inclusive upper-bound time. | [optional] 
 **limit** | **Int** | Max events to return per page (default 50). | [optional] [default to 50]

### Return type

[**ListCalendarEvents200Response**](ListCalendarEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCalendarProviders**
```swift
    open class func listCalendarProviders(completion: @escaping (_ data: CalendarProvidersInfo?, _ error: Error?) -> Void)
```

List supported calendar providers.

Static list of provider ids the Calendar platform can connect to. Returned regardless of which providers the caller has actually authorized. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List supported calendar providers.
CalendarAPI.listCalendarProviders() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**CalendarProvidersInfo**](CalendarProvidersInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncCalendar**
```swift
    open class func syncCalendar(wait: Bool? = nil, completion: @escaping (_ data: CalendarSyncResponse?, _ error: Error?) -> Void)
```

Trigger a sync across connected calendar accounts.

Enqueues sync jobs (one per connected calendar account) and returns immediately with the job ids. Pass `?wait=true` to block until all jobs complete (10-second polling budget); the response is then `200` with `waited: true` and a `timed_out` flag if any job didn't finish in time. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let wait = true // Bool | Block until all sync jobs finish (10s timeout). (optional) (default to false)

// Trigger a sync across connected calendar accounts.
CalendarAPI.syncCalendar(wait: wait) { (response, error) in
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
 **wait** | **Bool** | Block until all sync jobs finish (10s timeout). | [optional] [default to false]

### Return type

[**CalendarSyncResponse**](CalendarSyncResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCalendarEvent**
```swift
    open class func updateCalendarEvent(id: String, updateEventRequest: UpdateEventRequest, xWorkspaceID: String? = nil, accountId: String? = nil, completion: @escaping (_ data: CreateCalendarEvent201Response?, _ error: Error?) -> Void)
```

Update an event (sparse).

Partial update. `account_id` may be supplied in the body (preferred) or as `?account_id=` query param — the renderer's update path puts it in the URL while create puts it in the body. `updates` is a free-form map; the platform's capability gate rejects fields the provider doesn't support. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Event id.
let updateEventRequest = UpdateEventRequest(accountId: "accountId_example", updates: "TODO", sendUpdates: "sendUpdates_example") // UpdateEventRequest | 
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let accountId = "accountId_example" // String | Optional account-id filter (snake_case). (optional)

// Update an event (sparse).
CalendarAPI.updateCalendarEvent(id: id, updateEventRequest: updateEventRequest, xWorkspaceID: xWorkspaceID, accountId: accountId) { (response, error) in
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
 **id** | **String** | Event id. | 
 **updateEventRequest** | [**UpdateEventRequest**](UpdateEventRequest.md) |  | 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **accountId** | **String** | Optional account-id filter (snake_case). | [optional] 

### Return type

[**CreateCalendarEvent201Response**](CreateCalendarEvent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateCalendarEvent**
```swift
    open class func workspaceCreateCalendarEvent(org: String, workspace: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped create-event (RBAC-protected).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

// Workspace-scoped create-event (RBAC-protected).
CalendarAPI.workspaceCreateCalendarEvent(org: org, workspace: workspace, requestBody: requestBody) { (response, error) in
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
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceDeleteCalendarEvent**
```swift
    open class func workspaceDeleteCalendarEvent(org: String, workspace: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

CalendarAPI.workspaceDeleteCalendarEvent(org: org, workspace: workspace, id: id) { (response, error) in
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
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetCalendarEvent**
```swift
    open class func workspaceGetCalendarEvent(org: String, workspace: String, id: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 

CalendarAPI.workspaceGetCalendarEvent(org: org, workspace: workspace, id: id) { (response, error) in
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
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListCalendarEvents**
```swift
    open class func workspaceListCalendarEvents(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped list-events (RBAC-protected).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

// Workspace-scoped list-events (RBAC-protected).
CalendarAPI.workspaceListCalendarEvents(org: org, workspace: workspace) { (response, error) in
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
 **org** | **String** |  | 
 **workspace** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListCalendarProviders**
```swift
    open class func workspaceListCalendarProviders(org: String, workspace: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Workspace-scoped calendar providers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 

// Workspace-scoped calendar providers.
CalendarAPI.workspaceListCalendarProviders(org: org, workspace: workspace) { (response, error) in
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
 **org** | **String** |  | 
 **workspace** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUpdateCalendarEvent**
```swift
    open class func workspaceUpdateCalendarEvent(org: String, workspace: String, id: String, requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let org = "org_example" // String | 
let workspace = "workspace_example" // String | 
let id = "id_example" // String | 
let requestBody = "TODO" // [String: AnyCodable] | 

CalendarAPI.workspaceUpdateCalendarEvent(org: org, workspace: workspace, id: id, requestBody: requestBody) { (response, error) in
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
 **org** | **String** |  | 
 **workspace** | **String** |  | 
 **id** | **String** |  | 
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

