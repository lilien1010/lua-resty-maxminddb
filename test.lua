 

local   json_encode		=		json.encode
local   json_decode		=		json.decode
local   ngx_log         =		ngx.log
local   ngx_say         =		ngx.say
local   ngx_exit		=		ngx.exit
local   ngx_ERR         =		ngx.ERR
local   ngx_CRIT        =		ngx.CRIT
local   ngx_INFO        =		ngx.INFO
local ngx_now			=		ngx.now
local ngx_time			=		ngx.time

local 	string_len		=	string.len

local string_sub 		=	string.sub;
local string_len 		=	string.len;
local tonumber			=	tonumber;

local 	ngx_find		=	ngx.re.find
local 	ngx_sub			=	ngx.re.sub

local string_match 	=	string.match
local ngx_match 	=	ngx.re.match
 

local maxminddb 	=	require("resty.maxminddb")
local geo_file 		=	'/home/lua/common_data/GeoIP2-Country-20161004.mmdb'
local ipDB			=	maxminddb.new(geo_file)
function _M:iplocation5(args)

	local ip 	=	ngx.req.get_uri_args()['ip']
	local out 	=	{}
	if not ip then
		return nil
	end
	local res,err 		=	ipDB:get_area_code(ip)
	ngx.print( json_encode({res}) )
end 

return _M
