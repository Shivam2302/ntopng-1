local dirs = ntop.getDirs()
package.path = dirs.installdir .. "/scripts/lua/modules/?.lua;" .. package.path

require "lua_utils"

sendHTTPContentTypeHeader('text/html')

prefs = ntop.getPrefs()

local iface_names = interface.getIfNames()

for key, value in pairs(iface_names) do 
   print(key..","..value.."\n")
end

