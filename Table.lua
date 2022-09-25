Table = Table or {};

Table.ShallowCopy = function(ref)
    local ret = {};
    for key, value in pairs(ref) do
        ret[key] = value;
    end
    return ret;
end

Table.DeepCopy = function(ref)
    local ret = {};
    for key, value in pairs(ref) do
        if type(value) ~= "table" then
            ret[key] = Table.DeepCopy(value);
        else
            ret[key] = value;
        end
    end
    return ret;
end