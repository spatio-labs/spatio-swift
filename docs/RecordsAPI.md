# RecordsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRecord**](RecordsAPI.md#createrecord) | **POST** /v1/records | Create a record.
[**createRecordType**](RecordsAPI.md#createrecordtype) | **POST** /v1/records/types | Create a record type (org-scoped).
[**deleteRecord**](RecordsAPI.md#deleterecord) | **DELETE** /v1/records/{id} | Delete a record.
[**getRecord**](RecordsAPI.md#getrecord) | **GET** /v1/records/{id} | Fetch a record.
[**listRecordTypes**](RecordsAPI.md#listrecordtypes) | **GET** /v1/records/types | List record types for an organization.
[**listRecords**](RecordsAPI.md#listrecords) | **GET** /v1/records | List records for an organization. &#x60;organization_id&#x60; query param is required (handler returns 400 otherwise). 
[**updateRecord**](RecordsAPI.md#updaterecord) | **PATCH** /v1/records/{id} | Update a record.
[**updateRecordType**](RecordsAPI.md#updaterecordtype) | **PATCH** /v1/records/types/{id} | Update a record type.


# **createRecord**
```swift
    open class func createRecord(createRecordRequest: CreateRecordRequest, completion: @escaping (_ data: Record?, _ error: Error?) -> Void)
```

Create a record.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createRecordRequest = CreateRecordRequest(organizationId: "organizationId_example", recordTypeId: "recordTypeId_example", name: "name_example", attributes: "TODO", metadata: "TODO") // CreateRecordRequest | 

// Create a record.
RecordsAPI.createRecord(createRecordRequest: createRecordRequest) { (response, error) in
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
 **createRecordRequest** | [**CreateRecordRequest**](CreateRecordRequest.md) |  | 

### Return type

[**Record**](Record.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecordType**
```swift
    open class func createRecordType(createRecordTypeRequest: CreateRecordTypeRequest, completion: @escaping (_ data: RecordType?, _ error: Error?) -> Void)
```

Create a record type (org-scoped).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createRecordTypeRequest = CreateRecordTypeRequest(organizationId: "organizationId_example", slug: "slug_example", name: "name_example", namePlural: "namePlural_example", icon: "icon_example", attributeSchema: ["TODO"]) // CreateRecordTypeRequest | 

// Create a record type (org-scoped).
RecordsAPI.createRecordType(createRecordTypeRequest: createRecordTypeRequest) { (response, error) in
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
 **createRecordTypeRequest** | [**CreateRecordTypeRequest**](CreateRecordTypeRequest.md) |  | 

### Return type

[**RecordType**](RecordType.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRecord**
```swift
    open class func deleteRecord(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a record.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Delete a record.
RecordsAPI.deleteRecord(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecord**
```swift
    open class func getRecord(id: String, completion: @escaping (_ data: Record?, _ error: Error?) -> Void)
```

Fetch a record.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch a record.
RecordsAPI.getRecord(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**Record**](Record.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecordTypes**
```swift
    open class func listRecordTypes(organizationId: String, completion: @escaping (_ data: RecordTypeListResponse?, _ error: Error?) -> Void)
```

List record types for an organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let organizationId = "organizationId_example" // String | 

// List record types for an organization.
RecordsAPI.listRecordTypes(organizationId: organizationId) { (response, error) in
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
 **organizationId** | **String** |  | 

### Return type

[**RecordTypeListResponse**](RecordTypeListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecords**
```swift
    open class func listRecords(organizationId: String, recordTypeId: String? = nil, limit: Int? = nil, completion: @escaping (_ data: RecordListResponse?, _ error: Error?) -> Void)
```

List records for an organization. `organization_id` query param is required (handler returns 400 otherwise). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let organizationId = "organizationId_example" // String | 
let recordTypeId = "recordTypeId_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// List records for an organization. `organization_id` query param is required (handler returns 400 otherwise). 
RecordsAPI.listRecords(organizationId: organizationId, recordTypeId: recordTypeId, limit: limit) { (response, error) in
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
 **organizationId** | **String** |  | 
 **recordTypeId** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

[**RecordListResponse**](RecordListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecord**
```swift
    open class func updateRecord(id: String, updateRecordRequest: UpdateRecordRequest, completion: @escaping (_ data: Record?, _ error: Error?) -> Void)
```

Update a record.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateRecordRequest = UpdateRecordRequest(name: "name_example", attributes: "TODO", metadata: "TODO") // UpdateRecordRequest | 

// Update a record.
RecordsAPI.updateRecord(id: id, updateRecordRequest: updateRecordRequest) { (response, error) in
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
 **id** | **String** |  | 
 **updateRecordRequest** | [**UpdateRecordRequest**](UpdateRecordRequest.md) |  | 

### Return type

[**Record**](Record.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecordType**
```swift
    open class func updateRecordType(id: String, updateRecordTypeRequest: UpdateRecordTypeRequest, completion: @escaping (_ data: RecordType?, _ error: Error?) -> Void)
```

Update a record type.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateRecordTypeRequest = UpdateRecordTypeRequest(slug: "slug_example", name: "name_example", namePlural: "namePlural_example", icon: "icon_example", attributeSchema: ["TODO"]) // UpdateRecordTypeRequest | 

// Update a record type.
RecordsAPI.updateRecordType(id: id, updateRecordTypeRequest: updateRecordTypeRequest) { (response, error) in
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
 **id** | **String** |  | 
 **updateRecordTypeRequest** | [**UpdateRecordTypeRequest**](UpdateRecordTypeRequest.md) |  | 

### Return type

[**RecordType**](RecordType.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

