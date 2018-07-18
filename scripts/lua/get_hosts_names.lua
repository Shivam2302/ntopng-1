local dirs = ntop.getDirs()
package.path = dirs.installdir .. "/scripts/lua/modules/?.lua;" .. package.path

require "lua_utils"

sendHTTPContentTypeHeader('text/html')

prefs = ntop.getPrefs()

local iface_hosts = interface.getHostsInfo()

for key, value in pairs(iface_hosts) do 

       if key == "hosts" then
       for key1, value1 in pairs(iface_hosts["hosts"]) do
          print(key1.." ")
       end 
    end	
end
