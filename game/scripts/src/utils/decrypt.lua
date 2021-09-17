-- 解码函数，这个函数根据我自己的需求，只在server中使用
-- 如果你有在client使用的需求，请自行在其他脚本中处理
_G.decrypt = function(code, ...)
    local text = string.fromhex(code)
    local plain = aeslua.decrypt(key, text, aeslua.AES128, aeslua.CBCMODE)
    return loadstring(plain)(...)
end