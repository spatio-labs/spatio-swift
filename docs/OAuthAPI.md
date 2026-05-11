# OAuthAPI

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJWKS**](OAuthAPI.md#getjwks) | **GET** /.well-known/jwks.json | JSON Web Key Set for id_token verification (RFC 7517).
[**getOAuthDiscovery**](OAuthAPI.md#getoauthdiscovery) | **GET** /.well-known/oauth-authorization-server | OAuth 2.1 authorization server metadata (RFC 8414).
[**getOpenIDConfiguration**](OAuthAPI.md#getopenidconfiguration) | **GET** /.well-known/openid-configuration | OpenID Connect Discovery 1.0 metadata.
[**getUserInfo**](OAuthAPI.md#getuserinfo) | **GET** /oauth2/userinfo | OIDC UserInfo (OpenID Connect Core 1.0 §5.3).
[**oauthAuthorize**](OAuthAPI.md#oauthauthorize) | **GET** /oauth2/authorize | OAuth 2.1 authorization endpoint (RFC 6749 + 7636 PKCE).
[**oauthIntrospect**](OAuthAPI.md#oauthintrospect) | **POST** /oauth2/introspect | RFC 7662 token introspection. Accepts both OAuth access tokens and PATs.
[**oauthRevoke**](OAuthAPI.md#oauthrevoke) | **POST** /oauth2/revoke | RFC 7009 token revocation. Idempotent.
[**oauthToken**](OAuthAPI.md#oauthtoken) | **POST** /oauth2/token | Exchange authorization code or refresh token for an access token (+ id_token if &#x60;openid&#x60; scope).
[**postUserInfo**](OAuthAPI.md#postuserinfo) | **POST** /oauth2/userinfo | Same as GET /oauth2/userinfo. Provided for clients that send the bearer in the body.
[**registerOAuthClient**](OAuthAPI.md#registeroauthclient) | **POST** /oauth2/register | Register a new OAuth 2.1 client (RFC 7591 dynamic client registration).


# **getJWKS**
```swift
    open class func getJWKS(completion: @escaping (_ data: JWKS?, _ error: Error?) -> Void)
```

JSON Web Key Set for id_token verification (RFC 7517).

The set of public keys RPs use to verify Spatio-issued id_tokens. Cached for 5 minutes at the edge. Always includes the currently-active signing key plus any retired keys that may still be in circulation (id_token TTL is 1 hour + slack). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// JSON Web Key Set for id_token verification (RFC 7517).
OAuthAPI.getJWKS() { (response, error) in
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

[**JWKS**](JWKS.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuthDiscovery**
```swift
    open class func getOAuthDiscovery(completion: @escaping (_ data: DiscoveryDocument?, _ error: Error?) -> Void)
```

OAuth 2.1 authorization server metadata (RFC 8414).

Returns the canonical metadata for the Spatio OAuth 2.1 + OpenID Connect server. Third-party RPs use this to auto-discover endpoint URLs, supported scopes, and signing algorithms.  Identical payload to `/.well-known/openid-configuration` — either path is acceptable; OIDC clients prefer the openid-configuration alias. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// OAuth 2.1 authorization server metadata (RFC 8414).
OAuthAPI.getOAuthDiscovery() { (response, error) in
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

[**DiscoveryDocument**](DiscoveryDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOpenIDConfiguration**
```swift
    open class func getOpenIDConfiguration(completion: @escaping (_ data: DiscoveryDocument?, _ error: Error?) -> Void)
```

OpenID Connect Discovery 1.0 metadata.

Alias of `/.well-known/oauth-authorization-server`. Provided so OIDC client libraries (NextAuth, Auth.js, oidc-client-ts, passport-openidconnect) auto-detect Spatio as an OIDC provider via their `wellKnown` / `discoveryUrl` config field. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// OpenID Connect Discovery 1.0 metadata.
OAuthAPI.getOpenIDConfiguration() { (response, error) in
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

[**DiscoveryDocument**](DiscoveryDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInfo**
```swift
    open class func getUserInfo(completion: @escaping (_ data: UserInfoResponse?, _ error: Error?) -> Void)
```

OIDC UserInfo (OpenID Connect Core 1.0 §5.3).

Returns user claims gated by the scopes on the presenting access token. `sub` is always returned; `email`, `name`, etc. require their respective scopes. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// OIDC UserInfo (OpenID Connect Core 1.0 §5.3).
OAuthAPI.getUserInfo() { (response, error) in
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

[**UserInfoResponse**](UserInfoResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorize**
```swift
    open class func oauthAuthorize(clientId: String, redirectUri: String, responseType: ResponseType_oauthAuthorize, codeChallenge: String, codeChallengeMethod: CodeChallengeMethod_oauthAuthorize, scope: String? = nil, state: String? = nil, nonce: String? = nil, prompt: Prompt_oauthAuthorize? = nil, maxAge: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

OAuth 2.1 authorization endpoint (RFC 6749 + 7636 PKCE).

Browser-redirect endpoint. Validates the client + redirect_uri, packs the request into a signed JWT, and 302s the user's browser to the consent UI. The consent UI then POSTs to `/oauth2/authorize/confirm` with the user's decision.  OIDC additions: `scope=openid+profile+email`, `nonce`, `prompt` (none|login|consent), `max_age`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let clientId = "clientId_example" // String | 
let redirectUri = "redirectUri_example" // String | 
let responseType = "responseType_example" // String | 
let codeChallenge = "codeChallenge_example" // String | 
let codeChallengeMethod = "codeChallengeMethod_example" // String | 
let scope = "scope_example" // String |  (optional)
let state = "state_example" // String |  (optional)
let nonce = "nonce_example" // String |  (optional)
let prompt = "prompt_example" // String |  (optional)
let maxAge = 987 // Int |  (optional)

// OAuth 2.1 authorization endpoint (RFC 6749 + 7636 PKCE).
OAuthAPI.oauthAuthorize(clientId: clientId, redirectUri: redirectUri, responseType: responseType, codeChallenge: codeChallenge, codeChallengeMethod: codeChallengeMethod, scope: scope, state: state, nonce: nonce, prompt: prompt, maxAge: maxAge) { (response, error) in
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
 **clientId** | **String** |  | 
 **redirectUri** | **String** |  | 
 **responseType** | **String** |  | 
 **codeChallenge** | **String** |  | 
 **codeChallengeMethod** | **String** |  | 
 **scope** | **String** |  | [optional] 
 **state** | **String** |  | [optional] 
 **nonce** | **String** |  | [optional] 
 **prompt** | **String** |  | [optional] 
 **maxAge** | **Int** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthIntrospect**
```swift
    open class func oauthIntrospect(token: String, completion: @escaping (_ data: IntrospectionResponse?, _ error: Error?) -> Void)
```

RFC 7662 token introspection. Accepts both OAuth access tokens and PATs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let token = "token_example" // String | 

// RFC 7662 token introspection. Accepts both OAuth access tokens and PATs.
OAuthAPI.oauthIntrospect(token: token) { (response, error) in
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
 **token** | **String** |  | 

### Return type

[**IntrospectionResponse**](IntrospectionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthRevoke**
```swift
    open class func oauthRevoke(token: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

RFC 7009 token revocation. Idempotent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let token = "token_example" // String | 

// RFC 7009 token revocation. Idempotent.
OAuthAPI.oauthRevoke(token: token) { (response, error) in
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
 **token** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthToken**
```swift
    open class func oauthToken(grantType: GrantType_oauthToken, code: String? = nil, codeVerifier: String? = nil, redirectUri: String? = nil, refreshToken: String? = nil, clientId: String? = nil, clientSecret: String? = nil, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```

Exchange authorization code or refresh token for an access token (+ id_token if `openid` scope).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let grantType = "grantType_example" // String | 
let code = "code_example" // String | Required for authorization_code grant. (optional)
let codeVerifier = "codeVerifier_example" // String | PKCE verifier — required for authorization_code grant. (optional)
let redirectUri = "redirectUri_example" // String |  (optional)
let refreshToken = "refreshToken_example" // String | Required for refresh_token grant. (optional)
let clientId = "clientId_example" // String |  (optional)
let clientSecret = "clientSecret_example" // String |  (optional)

// Exchange authorization code or refresh token for an access token (+ id_token if `openid` scope).
OAuthAPI.oauthToken(grantType: grantType, code: code, codeVerifier: codeVerifier, redirectUri: redirectUri, refreshToken: refreshToken, clientId: clientId, clientSecret: clientSecret) { (response, error) in
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
 **grantType** | **String** |  | 
 **code** | **String** | Required for authorization_code grant. | [optional] 
 **codeVerifier** | **String** | PKCE verifier — required for authorization_code grant. | [optional] 
 **redirectUri** | **String** |  | [optional] 
 **refreshToken** | **String** | Required for refresh_token grant. | [optional] 
 **clientId** | **String** |  | [optional] 
 **clientSecret** | **String** |  | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUserInfo**
```swift
    open class func postUserInfo(completion: @escaping (_ data: UserInfoResponse?, _ error: Error?) -> Void)
```

Same as GET /oauth2/userinfo. Provided for clients that send the bearer in the body.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio


// Same as GET /oauth2/userinfo. Provided for clients that send the bearer in the body.
OAuthAPI.postUserInfo() { (response, error) in
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

[**UserInfoResponse**](UserInfoResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerOAuthClient**
```swift
    open class func registerOAuthClient(clientRegistrationRequest: ClientRegistrationRequest, completion: @escaping (_ data: ClientRegistrationResponse?, _ error: Error?) -> Void)
```

Register a new OAuth 2.1 client (RFC 7591 dynamic client registration).

Returns a fresh `client_id` (and, for confidential clients, `client_secret`) plus a one-time `registration_access_token` the client can use later to update its registration. Public clients (mobile, SPA) MUST use `token_endpoint_auth_method: none` and PKCE.  Rate-limited to 10 registrations per hour per source IP. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spatio

let clientRegistrationRequest = ClientRegistrationRequest(clientName: "clientName_example", redirectUris: ["redirectUris_example"], grantTypes: ["grantTypes_example"], responseTypes: ["responseTypes_example"], scope: "scope_example", tokenEndpointAuthMethod: "tokenEndpointAuthMethod_example", clientUri: "clientUri_example", logoUri: "logoUri_example", policyUri: "policyUri_example", tosUri: "tosUri_example") // ClientRegistrationRequest | 

// Register a new OAuth 2.1 client (RFC 7591 dynamic client registration).
OAuthAPI.registerOAuthClient(clientRegistrationRequest: clientRegistrationRequest) { (response, error) in
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
 **clientRegistrationRequest** | [**ClientRegistrationRequest**](ClientRegistrationRequest.md) |  | 

### Return type

[**ClientRegistrationResponse**](ClientRegistrationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

