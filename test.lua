local number = 10;
local cache = {10};

local cacheNumber = function( n )
  number = n;
  table.insert(cache, n);
end

Test = Test or {};

Test.getLatest = function()
  return number;
end

Test.insertNew = function(n)
  cacheNumber(n);
end

Test.getCache = function()
    return cache;
end