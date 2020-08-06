

# a lua client for maxmind db

to get ip location with ip database offerd by maxmind

 
# Installation

1. install libmaxminddb from this [repo](https://github.com/maxmind/libmaxminddb)
2. download ip database from [maxmind](https://www.maxmind.com/en/geoip2-databases)

# demo code:

```lua
local maxminddb 	=	require("resty.maxminddb")
local geo_file 		=	'/home/lua/common_data/GeoIP2-Country-20161004.mmdb'
local ipDB			=	maxminddb.new(geo_file) 

local ip 	=	ngx.req.get_uri_args()['ip']
local out 	=	{}
if not ip then
	return nil
end
local res,err 		=	ipDB:get_area_code(ip)
ngx.print( res )
  
```
  

# Bug Reports

Please report bugs by filing an issue with our GitHub issue tracker at
https://github.com/lilien1010/libmaxminddb/issues
or if the bug is casued by libmaxminddb  tracker at
https://github.com/maxmind/libmaxminddb/issues

# Copyright and License

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
