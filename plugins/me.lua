do 
function beko(msg, matches) 
local reply_id = msg['id'] 
if is_sudo(msg) then 
    reply_msg(get_receiver(msg), "./files/me/sudo.webp", ok_cb, false) 
      local info = '🎈- انـــت #مــطـورـ🕵🏻الــبـوت🤖⚙' 
 reply_msg(reply_id, info, ok_cb, false) 
elseif is_admin1(msg) then 
    reply_msg(get_receiver(msg), "./files/me/admin.webp", ok_cb, false) 
    local info = '🎈-انــت #مــساعد👮🏾المــطـور🕵🏻' 
 reply_msg(reply_id, info, ok_cb, false) 
elseif is_owner(msg) then 
    reply_msg(get_receiver(msg), "./files/me/leader.webp", ok_cb, false) 
    local info = '🎈- انــت #مــشرف👨‍🏭فــي الـمـجموعـه 🎪🎗' 
 reply_msg(reply_id, info, ok_cb, false) 
elseif is_momod(msg) then 
    reply_msg(get_receiver(msg), "./files/me/moderator.webp", ok_cb, false) 
    local info = '🎈- انــت #ادمــن👨‍💼 فـي الــمجموعه🎪🎗' 
 reply_msg(reply_id, info, ok_cb, false) 
 else 
    reply_msg(get_receiver(msg), "./files/me/member.webp", ok_cb, false) 
      local info = '🎈- انــت #عضــو🤦‍♂ فخامة الاســم تكـفـي ✨😹' 
      reply_msg(reply_id, info, ok_cb, false) 
 end 
end 
return { 
    patterns ={ 
    "^([mM][Ee])$" 
}, 
run = beko 
} 
end 

