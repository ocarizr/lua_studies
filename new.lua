local constructors = {};
local destructors = {};

MemoryManager = MemoryManager or {};

MemoryManager.Build = function(type)
    assert(type ~= nil, "type should not be nil");
    assert(type.BuildTag ~= nil or type.BuildTag == "", "BuildTag cannot be nil or empty");
    assert(constructors[type.BuildTag] ~= nil, "object constructor not registered");
    return constructors[type.BuildTag]();
end

MemoryManager.Destroy = function(type, object)
    assert(type ~= nil, "type should not be nil");
    assert(type.BuildTag ~= nil or type.BuildTag == "", "BuildTag cannot be nil or empty");
    if destructors[type.BuildTag] then
        destructors[type.BuildTag]();
    end
end

MemoryManager.RegisterConstructor = function(tag, ctor)
    assert(tag ~= nil or tag == "", "BuildTag cannot be nil or empty");
    assert(ctor ~= nil, "ctor cannot be nil");
    assert(type(tag) == "string", "tag can only be a string");
    assert(type(ctor) == "function", "ctor can only be a function");

    if constructors[tag] ~= nil then
        print("Cannot override a ctor funtion for a already registered type");
        return;
    end
    
    constructors[tag] = ctor;
end

MemoryManager.RegisterDestructor = function(tag, dtor)
    assert(tag ~= nil or tag == "", "BuildTag cannot be nil or empty");
    assert(dtor ~= nil, "ctor cannot be nil");
    assert(type(tag) == "string", "tag can only be a string");
    assert(type(dtor) == "function", "ctor can only be a function");

    if destructors[tag] ~= nil then
        print("Cannot override a ctor funtion for a already registered type");
        return;
    end
    
    destructors[tag] = ctor;
end
