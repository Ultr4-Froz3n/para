do
    
function run(msg, matches)
  if matches[1] == "reboot" and is_sudo(msg) then
        return 'This plugin is disable'  -- Dont enable it,if you use Free online servers!
  elseif matches[1] == "paradox" and is_sudo(msg) then
                      -- change this location if you use another source/location !
     local f = io.popen("sh /root/ParadoxBot/data/server/serverinfo.sh") 
     return ( f:read("*a") ) --read all of the results and return it !
  end
end
return {
  patterns = {
    "^[#/!](reboot)",
    "^[#/!]([Pp]aradox)",
  },
  run = run
}
end
