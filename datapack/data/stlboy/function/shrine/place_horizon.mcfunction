function stlboy:shrine/base
summon minecraft:interaction ~ ~ ~ {width:1.6f,height:2.6f,response:1b,Tags:["stlboy_shrine","stlboy_shr_horizon","stlboy_shr_new"]}
summon minecraft:item_display ~ ~1.7 ~ {billboard:"center",item:{id:"minecraft:ender_eye",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},Tags:["stlboy_shrine","stlboy_shr_horizon","stlboy_shr_new"]}
summon minecraft:text_display ~ ~2.9 ~ {billboard:"center",background:0,text:{translate:"stlboy.shrine.horizon",fallback:"Shrine of the Event Horizon",color:"dark_purple"},Tags:["stlboy_shrine","stlboy_shr_horizon","stlboy_shr_new"]}
function stlboy:shrine/announce
