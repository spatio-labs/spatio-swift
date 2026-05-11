# SlidesAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPresentation**](SlidesAPI.md#createpresentation) | **POST** /v1/slides | Create a presentation.
[**createSlide**](SlidesAPI.md#createslide) | **POST** /v1/slides/{id}/slides | Insert a slide.
[**createSlideElement**](SlidesAPI.md#createslideelement) | **POST** /v1/slides/{id}/slides/{slideId}/elements | Add a canvas element (text/shape/image) to a slide.
[**deletePresentation**](SlidesAPI.md#deletepresentation) | **DELETE** /v1/slides/{id} | Delete a presentation.
[**deleteSlide**](SlidesAPI.md#deleteslide) | **DELETE** /v1/slides/{id}/slides/{slideId} | Delete a slide.
[**deleteSlideElement**](SlidesAPI.md#deleteslideelement) | **DELETE** /v1/slides/{id}/slides/{slideId}/elements/{elementId} | Delete a slide element.
[**disablePresentationShare**](SlidesAPI.md#disablepresentationshare) | **DELETE** /v1/slides/{id}/share | Disable public sharing.
[**enablePresentationShare**](SlidesAPI.md#enablepresentationshare) | **POST** /v1/slides/{id}/share | Enable (or update password on) public sharing.
[**exportPresentationPdf**](SlidesAPI.md#exportpresentationpdf) | **POST** /v1/slides/{id}/export/pdf | Render the presentation as a PDF.
[**exportPresentationPptx**](SlidesAPI.md#exportpresentationpptx) | **POST** /v1/slides/{id}/export/pptx | Render the presentation as a PowerPoint (.pptx) file.
[**getPresentation**](SlidesAPI.md#getpresentation) | **GET** /v1/slides/{id} | Fetch one presentation.
[**getPresentationShareSettings**](SlidesAPI.md#getpresentationsharesettings) | **GET** /v1/slides/{id}/share | Fetch share settings for a presentation.
[**getPublicPresentation**](SlidesAPI.md#getpublicpresentation) | **GET** /public/slides/{token} | Fetch a publicly shared presentation.
[**getSlide**](SlidesAPI.md#getslide) | **GET** /v1/slides/{id}/slides/{slideId} | Fetch one slide.
[**getSlideElement**](SlidesAPI.md#getslideelement) | **GET** /v1/slides/{id}/slides/{slideId}/elements/{elementId} | Fetch one slide element.
[**listPresentations**](SlidesAPI.md#listpresentations) | **GET** /v1/slides | List presentations across connected accounts.
[**listSlideElements**](SlidesAPI.md#listslideelements) | **GET** /v1/slides/{id}/slides/{slideId}/elements | List the canvas elements on a slide.
[**listSlidesInPresentation**](SlidesAPI.md#listslidesinpresentation) | **GET** /v1/slides/{id}/slides | List slides in a presentation.
[**rotatePresentationShareToken**](SlidesAPI.md#rotatepresentationsharetoken) | **POST** /v1/slides/{id}/share/rotate | Rotate the share token, invalidating outstanding URLs.
[**updatePresentation**](SlidesAPI.md#updatepresentation) | **PATCH** /v1/slides/{id} | Update presentation metadata (partial).
[**updateSlide**](SlidesAPI.md#updateslide) | **PATCH** /v1/slides/{id}/slides/{slideId} | Update a slide (partial).
[**updateSlideElement**](SlidesAPI.md#updateslideelement) | **PATCH** /v1/slides/{id}/slides/{slideId}/elements/{elementId} | Update a slide element (partial).


# **createPresentation**
```swift
    open class func createPresentation(createPresentationRequest: CreatePresentationRequest, accountId: String? = nil, provider: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Presentation?, _ error: Error?) -> Void)
```

Create a presentation.

Creates a new deck under the target account. Target resolution mirrors `POST /v1/notes` and `/v1/sheets`: body `accountId` → `?accountId=` → body `provider` → `?provider=` → caller's single connected account (errors with `ambiguous_account` otherwise). The new deck is auto-seeded with one blank slide so the renderer has something to display immediately. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createPresentationRequest = CreatePresentationRequest(title: "title_example", description: "description_example", theme: "theme_example", accountId: "accountId_example", provider: "provider_example") // CreatePresentationRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let provider = "provider_example" // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Create a presentation.
SlidesAPI.createPresentation(createPresentationRequest: createPresentationRequest, accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **createPresentationRequest** | [**CreatePresentationRequest**](CreatePresentationRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String** | Provider id (e.g. &#x60;native-notes&#x60;, &#x60;notion&#x60;). Selects every connected account for the provider. Mutually exclusive with &#x60;accountId&#x60;.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Presentation**](Presentation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSlide**
```swift
    open class func createSlide(id: String, createSlideRequest: CreateSlideRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Slide?, _ error: Error?) -> Void)
```

Insert a slide.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let createSlideRequest = CreateSlideRequest(presentationId: "presentationId_example", title: "title_example", notes: "notes_example", layout: "layout_example", backgroundColor: "backgroundColor_example", backgroundImageUrl: "backgroundImageUrl_example", textColor: "textColor_example", transition: "transition_example", position: 123) // CreateSlideRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Insert a slide.
SlidesAPI.createSlide(id: id, createSlideRequest: createSlideRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **createSlideRequest** | [**CreateSlideRequest**](CreateSlideRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Slide**](Slide.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSlideElement**
```swift
    open class func createSlideElement(id: String, slideId: String, createSlideElementRequest: CreateSlideElementRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SlideElement?, _ error: Error?) -> Void)
```

Add a canvas element (text/shape/image) to a slide.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let slideId = "slideId_example" // String | Slide id within the presentation.
let createSlideElementRequest = CreateSlideElementRequest(elementType: "elementType_example", content: "TODO", x: 123, y: 123, width: 123, height: 123, rotation: 123, zIndex: 123) // CreateSlideElementRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Add a canvas element (text/shape/image) to a slide.
SlidesAPI.createSlideElement(id: id, slideId: slideId, createSlideElementRequest: createSlideElementRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **slideId** | **String** | Slide id within the presentation. | 
 **createSlideElementRequest** | [**CreateSlideElementRequest**](CreateSlideElementRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SlideElement**](SlideElement.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePresentation**
```swift
    open class func deletePresentation(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Delete a presentation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Delete a presentation.
SlidesAPI.deletePresentation(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSlide**
```swift
    open class func deleteSlide(id: String, slideId: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Delete a slide.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let slideId = "slideId_example" // String | Slide id within the presentation.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Delete a slide.
SlidesAPI.deleteSlide(id: id, slideId: slideId, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **slideId** | **String** | Slide id within the presentation. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSlideElement**
```swift
    open class func deleteSlideElement(id: String, slideId: String, elementId: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SuccessFlag?, _ error: Error?) -> Void)
```

Delete a slide element.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let slideId = "slideId_example" // String | Slide id within the presentation.
let elementId = "elementId_example" // String | Slide-element id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Delete a slide element.
SlidesAPI.deleteSlideElement(id: id, slideId: slideId, elementId: elementId, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **slideId** | **String** | Slide id within the presentation. | 
 **elementId** | **String** | Slide-element id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disablePresentationShare**
```swift
    open class func disablePresentationShare(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Disable public sharing.

Owner-only. Subsequent public viewer requests 404.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Disable public sharing.
SlidesAPI.disablePresentationShare(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enablePresentationShare**
```swift
    open class func enablePresentationShare(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, enableShareRequest: EnableShareRequest? = nil, completion: @escaping (_ data: ShareSettings?, _ error: Error?) -> Void)
```

Enable (or update password on) public sharing.

Owner-only. With `setPassword: false` (or empty body), flips the deck public without changing the password. With `setPassword: true`, applies `password` (empty clears). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let enableShareRequest = EnableShareRequest(setPassword: false, password: "password_example") // EnableShareRequest |  (optional)

// Enable (or update password on) public sharing.
SlidesAPI.enablePresentationShare(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID, enableShareRequest: enableShareRequest) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **enableShareRequest** | [**EnableShareRequest**](EnableShareRequest.md) |  | [optional] 

### Return type

[**ShareSettings**](ShareSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportPresentationPdf**
```swift
    open class func exportPresentationPdf(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, storage: Storage_exportPresentationPdf? = nil, filename: String? = nil, exportPDFRequest: ExportPDFRequest? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Render the presentation as a PDF.

Proxies to the Spatio export sidecar (Playwright). Two response modes selected via `?storage=`:    - `stream` (default) — response body is the PDF binary     (`application/pdf`).   - `r2` — uploads the rendered PDF to R2 storage and returns     a JSON envelope with a 24-hour signed URL.  Returns `503 Service Unavailable` when the export sidecar is not configured (dev fallback to the client-side exporter). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let storage = "storage_example" // String |  (optional) (default to .stream)
let filename = "filename_example" // String | Sanitized base name for the downloaded PDF. (optional)
let exportPDFRequest = ExportPDFRequest(rasterizedSlides: [ExportPDFRequest_rasterizedSlides_inner(slideId: "slideId_example", png: "png_example")], theme: "TODO") // ExportPDFRequest |  (optional)

// Render the presentation as a PDF.
SlidesAPI.exportPresentationPdf(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID, storage: storage, filename: filename, exportPDFRequest: exportPDFRequest) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **storage** | **String** |  | [optional] [default to .stream]
 **filename** | **String** | Sanitized base name for the downloaded PDF. | [optional] 
 **exportPDFRequest** | [**ExportPDFRequest**](ExportPDFRequest.md) |  | [optional] 

### Return type

**URL**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportPresentationPptx**
```swift
    open class func exportPresentationPptx(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, storage: Storage_exportPresentationPptx? = nil, filename: String? = nil, exportPDFRequest: ExportPDFRequest? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Render the presentation as a PowerPoint (.pptx) file.

Proxies to the Spatio export sidecar (Playwright + pptxgenjs). Each slide is screenshotted at 2× device-pixel ratio and wrapped into a PowerPoint .pptx as a full-bleed image. Visual fidelity is preserved exactly — what renders in Spatio renders identically in PowerPoint, Keynote, Google Slides — at the cost of in-PowerPoint editability of slide content. Users edit slide content back in Spatio (the source of truth), not inside PowerPoint.  Two response modes selected via `?storage=`:    - `stream` (default) — response body is the PPTX binary     (`application/vnd.openxmlformats-officedocument.presentationml.presentation`).   - `r2` — uploads the rendered PPTX to R2 storage and returns     a JSON envelope with a 24-hour signed URL.  Returns `503 Service Unavailable` when the export sidecar is not configured. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let storage = "storage_example" // String |  (optional) (default to .stream)
let filename = "filename_example" // String | Sanitized base name for the downloaded PPTX. (optional)
let exportPDFRequest = ExportPDFRequest(rasterizedSlides: [ExportPDFRequest_rasterizedSlides_inner(slideId: "slideId_example", png: "png_example")], theme: "TODO") // ExportPDFRequest |  (optional)

// Render the presentation as a PowerPoint (.pptx) file.
SlidesAPI.exportPresentationPptx(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID, storage: storage, filename: filename, exportPDFRequest: exportPDFRequest) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **storage** | **String** |  | [optional] [default to .stream]
 **filename** | **String** | Sanitized base name for the downloaded PPTX. | [optional] 
 **exportPDFRequest** | [**ExportPDFRequest**](ExportPDFRequest.md) |  | [optional] 

### Return type

**URL**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.openxmlformats-officedocument.presentationml.presentation, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPresentation**
```swift
    open class func getPresentation(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Presentation?, _ error: Error?) -> Void)
```

Fetch one presentation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch one presentation.
SlidesAPI.getPresentation(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Presentation**](Presentation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPresentationShareSettings**
```swift
    open class func getPresentationShareSettings(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: ShareSettings?, _ error: Error?) -> Void)
```

Fetch share settings for a presentation.

Owner-only. Mirror of `GET /v1/notes/{id}/share` — same shape, same fields. Returns the current public-share configuration, including the share token and computed public viewer URL when the deck is currently public. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch share settings for a presentation.
SlidesAPI.getPresentationShareSettings(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**ShareSettings**](ShareSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicPresentation**
```swift
    open class func getPublicPresentation(token: String, password: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Fetch a publicly shared presentation.

Unauthenticated. Mirror of `GET /public/notes/{token}`. The share token is the credential. For password-protected decks the password is supplied via `?password=`; the response distinguishes \"no password supplied\" from \"wrong password\" so the viewer can render the right prompt. Unknown tokens and disabled-share decks both return `404` to prevent enumeration. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let token = "token_example" // String | Opaque public-share token.
let password = "password_example" // String | Optional viewer password. (optional)

// Fetch a publicly shared presentation.
SlidesAPI.getPublicPresentation(token: token, password: password) { (response, error) in
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
 **token** | **String** | Opaque public-share token. | 
 **password** | **String** | Optional viewer password. | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSlide**
```swift
    open class func getSlide(id: String, slideId: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Slide?, _ error: Error?) -> Void)
```

Fetch one slide.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let slideId = "slideId_example" // String | Slide id within the presentation.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch one slide.
SlidesAPI.getSlide(id: id, slideId: slideId, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **slideId** | **String** | Slide id within the presentation. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Slide**](Slide.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSlideElement**
```swift
    open class func getSlideElement(id: String, slideId: String, elementId: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SlideElement?, _ error: Error?) -> Void)
```

Fetch one slide element.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let slideId = "slideId_example" // String | Slide id within the presentation.
let elementId = "elementId_example" // String | Slide-element id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Fetch one slide element.
SlidesAPI.getSlideElement(id: id, slideId: slideId, elementId: elementId, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **slideId** | **String** | Slide id within the presentation. | 
 **elementId** | **String** | Slide-element id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SlideElement**](SlideElement.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPresentations**
```swift
    open class func listPresentations(accountId: String? = nil, provider: String? = nil, xWorkspaceID: String? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: PresentationListEnvelope?, _ error: Error?) -> Void)
```

List presentations across connected accounts.

Fan-out list. Returns every presentation visible to the caller across every connected slides provider. Pass `?accountId=` or `?provider=` to scope to a single source. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let provider = "provider_example" // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)
let limit = 987 // Int |  (optional) (default to 50)
let offset = 987 // Int |  (optional) (default to 0)

// List presentations across connected accounts.
SlidesAPI.listPresentations(accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID, limit: limit, offset: offset) { (response, error) in
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
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String** | Provider id (e.g. &#x60;native-notes&#x60;, &#x60;notion&#x60;). Selects every connected account for the provider. Mutually exclusive with &#x60;accountId&#x60;.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **limit** | **Int** |  | [optional] [default to 50]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**PresentationListEnvelope**](PresentationListEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSlideElements**
```swift
    open class func listSlideElements(id: String, slideId: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SlideElementList?, _ error: Error?) -> Void)
```

List the canvas elements on a slide.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let slideId = "slideId_example" // String | Slide id within the presentation.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// List the canvas elements on a slide.
SlidesAPI.listSlideElements(id: id, slideId: slideId, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **slideId** | **String** | Slide id within the presentation. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SlideElementList**](SlideElementList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSlidesInPresentation**
```swift
    open class func listSlidesInPresentation(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SlideList?, _ error: Error?) -> Void)
```

List slides in a presentation.

Single-account list. Returns slides in the order set by their `position` field. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// List slides in a presentation.
SlidesAPI.listSlidesInPresentation(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SlideList**](SlideList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotatePresentationShareToken**
```swift
    open class func rotatePresentationShareToken(id: String, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: ShareSettings?, _ error: Error?) -> Void)
```

Rotate the share token, invalidating outstanding URLs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Rotate the share token, invalidating outstanding URLs.
SlidesAPI.rotatePresentationShareToken(id: id, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**ShareSettings**](ShareSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePresentation**
```swift
    open class func updatePresentation(id: String, updatePresentationRequest: UpdatePresentationRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Presentation?, _ error: Error?) -> Void)
```

Update presentation metadata (partial).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let updatePresentationRequest = UpdatePresentationRequest(title: "title_example", description: "description_example", theme: "theme_example") // UpdatePresentationRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Update presentation metadata (partial).
SlidesAPI.updatePresentation(id: id, updatePresentationRequest: updatePresentationRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **updatePresentationRequest** | [**UpdatePresentationRequest**](UpdatePresentationRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Presentation**](Presentation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSlide**
```swift
    open class func updateSlide(id: String, slideId: String, updateSlideRequest: UpdateSlideRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: Slide?, _ error: Error?) -> Void)
```

Update a slide (partial).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let slideId = "slideId_example" // String | Slide id within the presentation.
let updateSlideRequest = UpdateSlideRequest(title: "title_example", notes: "notes_example", layout: "layout_example", backgroundColor: "backgroundColor_example", backgroundImageUrl: "backgroundImageUrl_example", textColor: "textColor_example", transition: "transition_example", position: 123) // UpdateSlideRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Update a slide (partial).
SlidesAPI.updateSlide(id: id, slideId: slideId, updateSlideRequest: updateSlideRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **slideId** | **String** | Slide id within the presentation. | 
 **updateSlideRequest** | [**UpdateSlideRequest**](UpdateSlideRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Slide**](Slide.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSlideElement**
```swift
    open class func updateSlideElement(id: String, slideId: String, elementId: String, updateSlideElementRequest: UpdateSlideElementRequest, accountId: String? = nil, xWorkspaceID: String? = nil, completion: @escaping (_ data: SlideElement?, _ error: Error?) -> Void)
```

Update a slide element (partial).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | Presentation id.
let slideId = "slideId_example" // String | Slide id within the presentation.
let elementId = "elementId_example" // String | Slide-element id.
let updateSlideElementRequest = UpdateSlideElementRequest(elementType: "elementType_example", content: "TODO", x: 123, y: 123, width: 123, height: 123, rotation: 123, zIndex: 123) // UpdateSlideElementRequest | 
let accountId = "accountId_example" // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  (optional)
let xWorkspaceID = "xWorkspaceID_example" // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  (optional)

// Update a slide element (partial).
SlidesAPI.updateSlideElement(id: id, slideId: slideId, elementId: elementId, updateSlideElementRequest: updateSlideElementRequest, accountId: accountId, xWorkspaceID: xWorkspaceID) { (response, error) in
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
 **id** | **String** | Presentation id. | 
 **slideId** | **String** | Slide id within the presentation. | 
 **elementId** | **String** | Slide-element id. | 
 **updateSlideElementRequest** | [**UpdateSlideElementRequest**](UpdateSlideElementRequest.md) |  | 
 **accountId** | **String** | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with &#x60;provider&#x60;. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String** | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SlideElement**](SlideElement.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

