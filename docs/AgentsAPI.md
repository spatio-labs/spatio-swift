# AgentsAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAgent**](AgentsAPI.md#createagent) | **POST** /v1/agents | Create a new agent configuration.
[**createAgentConversation**](AgentsAPI.md#createagentconversation) | **POST** /v1/agent/conversations | Create a new agent-platform conversation.
[**createAgentMessage**](AgentsAPI.md#createagentmessage) | **POST** /v1/agent/conversations/{id}/messages | Append a message to an agent conversation.
[**deleteAgent**](AgentsAPI.md#deleteagent) | **DELETE** /v1/agents/{id} | Delete an agent configuration.
[**executeAgentAction**](AgentsAPI.md#executeagentaction) | **POST** /v1/agent/actions/execute | Execute an action through the agent platform.
[**getAgent**](AgentsAPI.md#getagent) | **GET** /v1/agents/{id} | Fetch one agent configuration.
[**getAgentConversation**](AgentsAPI.md#getagentconversation) | **GET** /v1/agent/conversations/{id} | Fetch one agent conversation.
[**getAgentSessionContext**](AgentsAPI.md#getagentsessioncontext) | **GET** /v1/agent/session-context | Identity bundle for the SessionStart hook (user + org + workspace + connected accounts) so the agent doesn&#39;t fish on its first turn. 
[**listAgentConversationMessages**](AgentsAPI.md#listagentconversationmessages) | **GET** /v1/agent/conversations/{id}/messages | List messages on an agent conversation.
[**listAgentConversations**](AgentsAPI.md#listagentconversations) | **GET** /v1/agent/conversations | List the caller&#39;s agent-platform conversations. Distinct from &#x60;/v1/conversations&#x60; (renderer-driven sidebar persistence). 
[**listAgents**](AgentsAPI.md#listagents) | **GET** /v1/agents | List the caller&#39;s agent configurations.
[**listPreconfiguredAgents**](AgentsAPI.md#listpreconfiguredagents) | **GET** /v1/agents/preconfigured | Curated featured agents (e.g. \&quot;Claude Code\&quot;, \&quot;Research Assistant\&quot;). Read-only — these are surfaced by the renderer&#39;s preconfigured-picker UI. 
[**updateAgent**](AgentsAPI.md#updateagent) | **PATCH** /v1/agents/{id} | Update an agent configuration.


# **createAgent**
```swift
    open class func createAgent(createAgentRequest: CreateAgentRequest, completion: @escaping (_ data: Agent?, _ error: Error?) -> Void)
```

Create a new agent configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createAgentRequest = CreateAgentRequest(name: "name_example", description: "description_example", systemPrompt: "systemPrompt_example", tools: ["tools_example"], icon: "icon_example", color: "color_example", metadata: "TODO") // CreateAgentRequest | 

// Create a new agent configuration.
AgentsAPI.createAgent(createAgentRequest: createAgentRequest) { (response, error) in
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
 **createAgentRequest** | [**CreateAgentRequest**](CreateAgentRequest.md) |  | 

### Return type

[**Agent**](Agent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAgentConversation**
```swift
    open class func createAgentConversation(createAgentConversationRequest: CreateAgentConversationRequest? = nil, completion: @escaping (_ data: AgentConversation?, _ error: Error?) -> Void)
```

Create a new agent-platform conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let createAgentConversationRequest = CreateAgentConversationRequest(agentId: "agentId_example", title: "title_example", metadata: "TODO") // CreateAgentConversationRequest |  (optional)

// Create a new agent-platform conversation.
AgentsAPI.createAgentConversation(createAgentConversationRequest: createAgentConversationRequest) { (response, error) in
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
 **createAgentConversationRequest** | [**CreateAgentConversationRequest**](CreateAgentConversationRequest.md) |  | [optional] 

### Return type

[**AgentConversation**](AgentConversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAgentMessage**
```swift
    open class func createAgentMessage(id: String, createAgentMessageRequest: CreateAgentMessageRequest, completion: @escaping (_ data: AgentMessage?, _ error: Error?) -> Void)
```

Append a message to an agent conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let createAgentMessageRequest = CreateAgentMessageRequest(role: "role_example", content: "content_example", metadata: "TODO") // CreateAgentMessageRequest | 

// Append a message to an agent conversation.
AgentsAPI.createAgentMessage(id: id, createAgentMessageRequest: createAgentMessageRequest) { (response, error) in
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
 **createAgentMessageRequest** | [**CreateAgentMessageRequest**](CreateAgentMessageRequest.md) |  | 

### Return type

[**AgentMessage**](AgentMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAgent**
```swift
    open class func deleteAgent(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an agent configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Delete an agent configuration.
AgentsAPI.deleteAgent(id: id) { (response, error) in
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

# **executeAgentAction**
```swift
    open class func executeAgentAction(executeActionRequest: ExecuteActionRequest, completion: @escaping (_ data: ExecuteActionResponse?, _ error: Error?) -> Void)
```

Execute an action through the agent platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let executeActionRequest = ExecuteActionRequest(actionId: "actionId_example", params: "TODO", accountId: "accountId_example") // ExecuteActionRequest | 

// Execute an action through the agent platform.
AgentsAPI.executeAgentAction(executeActionRequest: executeActionRequest) { (response, error) in
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
 **executeActionRequest** | [**ExecuteActionRequest**](ExecuteActionRequest.md) |  | 

### Return type

[**ExecuteActionResponse**](ExecuteActionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgent**
```swift
    open class func getAgent(id: String, completion: @escaping (_ data: Agent?, _ error: Error?) -> Void)
```

Fetch one agent configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch one agent configuration.
AgentsAPI.getAgent(id: id) { (response, error) in
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

[**Agent**](Agent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentConversation**
```swift
    open class func getAgentConversation(id: String, completion: @escaping (_ data: AgentConversation?, _ error: Error?) -> Void)
```

Fetch one agent conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// Fetch one agent conversation.
AgentsAPI.getAgentConversation(id: id) { (response, error) in
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

[**AgentConversation**](AgentConversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentSessionContext**
```swift
    open class func getAgentSessionContext(completion: @escaping (_ data: AgentSessionContext?, _ error: Error?) -> Void)
```

Identity bundle for the SessionStart hook (user + org + workspace + connected accounts) so the agent doesn't fish on its first turn. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Identity bundle for the SessionStart hook (user + org + workspace + connected accounts) so the agent doesn't fish on its first turn. 
AgentsAPI.getAgentSessionContext() { (response, error) in
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

[**AgentSessionContext**](AgentSessionContext.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAgentConversationMessages**
```swift
    open class func listAgentConversationMessages(id: String, completion: @escaping (_ data: AgentMessageListResponse?, _ error: Error?) -> Void)
```

List messages on an agent conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 

// List messages on an agent conversation.
AgentsAPI.listAgentConversationMessages(id: id) { (response, error) in
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

[**AgentMessageListResponse**](AgentMessageListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAgentConversations**
```swift
    open class func listAgentConversations(completion: @escaping (_ data: AgentConversationListResponse?, _ error: Error?) -> Void)
```

List the caller's agent-platform conversations. Distinct from `/v1/conversations` (renderer-driven sidebar persistence). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the caller's agent-platform conversations. Distinct from `/v1/conversations` (renderer-driven sidebar persistence). 
AgentsAPI.listAgentConversations() { (response, error) in
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

[**AgentConversationListResponse**](AgentConversationListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAgents**
```swift
    open class func listAgents(completion: @escaping (_ data: AgentListResponse?, _ error: Error?) -> Void)
```

List the caller's agent configurations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// List the caller's agent configurations.
AgentsAPI.listAgents() { (response, error) in
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

[**AgentListResponse**](AgentListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPreconfiguredAgents**
```swift
    open class func listPreconfiguredAgents(completion: @escaping (_ data: [PreconfiguredAgent]?, _ error: Error?) -> Void)
```

Curated featured agents (e.g. \"Claude Code\", \"Research Assistant\"). Read-only — these are surfaced by the renderer's preconfigured-picker UI. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Curated featured agents (e.g. \"Claude Code\", \"Research Assistant\"). Read-only — these are surfaced by the renderer's preconfigured-picker UI. 
AgentsAPI.listPreconfiguredAgents() { (response, error) in
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

[**[PreconfiguredAgent]**](PreconfiguredAgent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAgent**
```swift
    open class func updateAgent(id: String, updateAgentRequest: UpdateAgentRequest, completion: @escaping (_ data: Agent?, _ error: Error?) -> Void)
```

Update an agent configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let id = "id_example" // String | 
let updateAgentRequest = UpdateAgentRequest(name: "name_example", description: "description_example", systemPrompt: "systemPrompt_example", tools: ["tools_example"], icon: "icon_example", color: "color_example", metadata: "TODO") // UpdateAgentRequest | 

// Update an agent configuration.
AgentsAPI.updateAgent(id: id, updateAgentRequest: updateAgentRequest) { (response, error) in
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
 **updateAgentRequest** | [**UpdateAgentRequest**](UpdateAgentRequest.md) |  | 

### Return type

[**Agent**](Agent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

