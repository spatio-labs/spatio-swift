# TokenResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessToken** | **String** | Opaque bearer token. Format &#x60;tok_&lt;32 random base64url&gt;&#x60;. | 
**tokenType** | **String** |  | 
**expiresIn** | **Int** | Seconds until access_token expires. | 
**refreshToken** | **String** |  | [optional] 
**scope** | **String** |  | [optional] 
**idToken** | **String** | Only present when &#x60;openid&#x60; scope was granted. RS256-signed JWT — verify against the JWKS. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


