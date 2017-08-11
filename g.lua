--
-- g.lua helps you organize your globals, use like so:
--
-- g.set("PI", 3.14)
-- g.set("PI", 3.1415) -- writes over the previous entry
-- g.get("PI")         -- returns 3.14
-- g.remove("PI")      -- removes the entry denoted by the key "PI"
-- g.clear()           -- removes all entries
--

local g = {vals = {}}
local vals = g.vals

g.set = function(k, v)
  vals[k] = v
  return true
end

g.get = function(k)
  return vals[k]
end

g.remove = function(k)
  if vals[k] ~= nil then
    vals[k] = nil
    return true
  end
  return false
end

g.clear = function()
  vals = nil
  vals = {}
  return true
end

return g
