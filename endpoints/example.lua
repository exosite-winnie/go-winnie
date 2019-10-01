--#ENDPOINT POST /call/{service}/{operation}
--#TAGS public
-- if request.headers["authorization"] == "1234567890" then
local fn = _G[request.parameters.service][request.parameters.operation]
response.message = fn(request.body)
-- else
--   response.code = 401
--   response.message = "invalid authorization"
-- end
