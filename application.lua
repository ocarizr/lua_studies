require("Vector2");

local inputFunc = {
    [1] = function(self)
        self.PlayerPosition._y = self.PlayerPosition._y + 1;
    end,

    [2] = function(self)
        self.PlayerPosition._x = self.PlayerPosition._x - 1;
    end,

    [3] = function(self)
        self.PlayerPosition._y = self.PlayerPosition._y - 1;
    end,

    [4] = function(self)
        self.PlayerPosition._x = self.PlayerPosition._x + 1;
    end,

    [5] = function(self)
        local vec = self.PlayerPosition:Normalized();
        print("Normalized direction: ["..vec._x..", "..vec._y.."]");
    end,

    [6] = function(self)
        print("Position: ["..self.PlayerPosition._x..", "..self.PlayerPosition._y.."]");
    end,
};

Application = Application or {};

Application.PlayerPosition = MemoryManager.Build(Vector2);

Application.ProcessInput = function(self, input)
    if input == nil then
        return;
    end
    
    assert(type(input) == "number", "input must be a number");

    if inputFunc[input] then
        inputFunc[input](self);
    end
end