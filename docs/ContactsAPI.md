# ContactsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignContactCategory**](ContactsAPI.md#assigncontactcategory) | **POST** /v1/contacts/{id}/categories | Assign a category to a contact.
[**createContact**](ContactsAPI.md#createcontact) | **POST** /v1/contacts | Create a contact.
[**createContactCategory**](ContactsAPI.md#createcontactcategory) | **POST** /v1/contacts/categories | Create a contact category.
[**deleteContact**](ContactsAPI.md#deletecontact) | **DELETE** /v1/contacts/{id} | Delete a contact.
[**deleteContactCategory**](ContactsAPI.md#deletecontactcategory) | **DELETE** /v1/contacts/categories/{id} | Delete a category.
[**getContact**](ContactsAPI.md#getcontact) | **GET** /v1/contacts/{id} | Fetch a contact.
[**listContactCategories**](ContactsAPI.md#listcontactcategories) | **GET** /v1/contacts/categories | List contact categories. Requires &#x60;organization_id&#x60; query param.
[**listContactProviders**](ContactsAPI.md#listcontactproviders) | **GET** /v1/contacts/providers | List supported contact providers (native + OAuth-connected).
[**listContacts**](ContactsAPI.md#listcontacts) | **GET** /v1/contacts | List the caller&#39;s contacts (across providers).
[**unassignContactCategory**](ContactsAPI.md#unassigncontactcategory) | **DELETE** /v1/contacts/{id}/categories/{categoryId} | Remove a category from a contact.
[**updateContact**](ContactsAPI.md#updatecontact) | **PATCH** /v1/contacts/{id} | Update a contact.
[**updateContactCategory**](ContactsAPI.md#updatecontactcategory) | **PATCH** /v1/contacts/categories/{id} | Update a category.


# **assignContactCategory**
```swift
    open class func assignContactCategory(id: String, assignContactCategoryRequest: AssignContactCategoryRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Assign a category to a contact.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let assignContactCategoryRequest = assignContactCategory_request(categoryId: "categoryId_example") // AssignContactCategoryRequest | 

// Assign a category to a contact.
ContactsAPI.assignContactCategory(id: id, assignContactCategoryRequest: assignContactCategoryRequest) { (response, error) in
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
 **assignContactCategoryRequest** | [**AssignContactCategoryRequest**](AssignContactCategoryRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createContact**
```swift
    open class func createContact(createContactRequest: CreateContactRequest, completion: @escaping (_ data: Contact?, _ error: Error?) -> Void)
```

Create a contact.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createContactRequest = CreateContactRequest(firstName: "firstName_example", lastName: "lastName_example", email: "email_example", phone: "phone_example", company: "company_example", title: "title_example", notes: "notes_example", metadata: "TODO") // CreateContactRequest | 

// Create a contact.
ContactsAPI.createContact(createContactRequest: createContactRequest) { (response, error) in
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
 **createContactRequest** | [**CreateContactRequest**](CreateContactRequest.md) |  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createContactCategory**
```swift
    open class func createContactCategory(createContactCategoryRequest: CreateContactCategoryRequest, completion: @escaping (_ data: ContactCategory?, _ error: Error?) -> Void)
```

Create a contact category.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createContactCategoryRequest = CreateContactCategoryRequest(name: "name_example", color: "color_example", description: "description_example") // CreateContactCategoryRequest | 

// Create a contact category.
ContactsAPI.createContactCategory(createContactCategoryRequest: createContactCategoryRequest) { (response, error) in
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
 **createContactCategoryRequest** | [**CreateContactCategoryRequest**](CreateContactCategoryRequest.md) |  | 

### Return type

[**ContactCategory**](ContactCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContact**
```swift
    open class func deleteContact(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a contact.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Delete a contact.
ContactsAPI.deleteContact(id: id) { (response, error) in
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

# **deleteContactCategory**
```swift
    open class func deleteContactCategory(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a category.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Delete a category.
ContactsAPI.deleteContactCategory(id: id) { (response, error) in
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

# **getContact**
```swift
    open class func getContact(id: String, completion: @escaping (_ data: Contact?, _ error: Error?) -> Void)
```

Fetch a contact.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch a contact.
ContactsAPI.getContact(id: id) { (response, error) in
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

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactCategories**
```swift
    open class func listContactCategories(organizationId: String, completion: @escaping (_ data: ContactCategoryListResponse?, _ error: Error?) -> Void)
```

List contact categories. Requires `organization_id` query param.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let organizationId = "organizationId_example" // String | 

// List contact categories. Requires `organization_id` query param.
ContactsAPI.listContactCategories(organizationId: organizationId) { (response, error) in
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

[**ContactCategoryListResponse**](ContactCategoryListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactProviders**
```swift
    open class func listContactProviders(completion: @escaping (_ data: ContactProviderListResponse?, _ error: Error?) -> Void)
```

List supported contact providers (native + OAuth-connected).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List supported contact providers (native + OAuth-connected).
ContactsAPI.listContactProviders() { (response, error) in
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

[**ContactProviderListResponse**](ContactProviderListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContacts**
```swift
    open class func listContacts(limit: Int? = nil, provider: String? = nil, search: String? = nil, completion: @escaping (_ data: ContactListResponse?, _ error: Error?) -> Void)
```

List the caller's contacts (across providers).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let limit = 987 // Int |  (optional)
let provider = "provider_example" // String |  (optional)
let search = "search_example" // String |  (optional)

// List the caller's contacts (across providers).
ContactsAPI.listContacts(limit: limit, provider: provider, search: search) { (response, error) in
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
 **limit** | **Int** |  | [optional] 
 **provider** | **String** |  | [optional] 
 **search** | **String** |  | [optional] 

### Return type

[**ContactListResponse**](ContactListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unassignContactCategory**
```swift
    open class func unassignContactCategory(id: String, categoryId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove a category from a contact.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let categoryId = "categoryId_example" // String | 

// Remove a category from a contact.
ContactsAPI.unassignContactCategory(id: id, categoryId: categoryId) { (response, error) in
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
 **categoryId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateContact**
```swift
    open class func updateContact(id: String, updateContactRequest: UpdateContactRequest, completion: @escaping (_ data: Contact?, _ error: Error?) -> Void)
```

Update a contact.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateContactRequest = UpdateContactRequest(firstName: "firstName_example", lastName: "lastName_example", email: "email_example", phone: "phone_example", company: "company_example", title: "title_example", notes: "notes_example", metadata: "TODO") // UpdateContactRequest | 

// Update a contact.
ContactsAPI.updateContact(id: id, updateContactRequest: updateContactRequest) { (response, error) in
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
 **updateContactRequest** | [**UpdateContactRequest**](UpdateContactRequest.md) |  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateContactCategory**
```swift
    open class func updateContactCategory(id: String, updateContactCategoryRequest: UpdateContactCategoryRequest, completion: @escaping (_ data: ContactCategory?, _ error: Error?) -> Void)
```

Update a category.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateContactCategoryRequest = UpdateContactCategoryRequest(name: "name_example", color: "color_example", description: "description_example") // UpdateContactCategoryRequest | 

// Update a category.
ContactsAPI.updateContactCategory(id: id, updateContactCategoryRequest: updateContactCategoryRequest) { (response, error) in
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
 **updateContactCategoryRequest** | [**UpdateContactCategoryRequest**](UpdateContactCategoryRequest.md) |  | 

### Return type

[**ContactCategory**](ContactCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

