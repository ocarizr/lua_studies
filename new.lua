local constructors = {};

new = function(tag)
    assert(constructors[tag] ~= nil, "object constructor not registered");

    return constructors[tag]();
end

RegisterConstructor = function(tag, ctor)
    assert(tag ~= nil or tag == "", "tab cannot be nil or empty");
    assert(ctor ~= nil, "ctor cannot be nil");
    assert(type(tag) == "string", "tag can only be a string");
    assert(type(ctor) == "function", "ctor can only be a function");
    assert(constructors[tag] == nil, "Cannot override a ctor funtion for a already registered type");
    
    constructors[tag] = ctor;
end