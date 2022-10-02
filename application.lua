require("Player");

local inputFunc = {
    [1] = function(self)
        self.Player:MoveForward();
    end,

    [2] = function(self)
        self.Player:MoveLeft();
    end,

    [3] = function(self)
        self.Player:MoveBackward();
    end,

    [4] = function(self)
        self.Player:MoveRight();
    end,

    [5] = function(self)
        local vec = self.Player._position:Normalized();
        print("Normalized direction: "..vec);
    end,

    [6] = function(self)
        print("Position: "..self.Player._position);
    end,
};

Application = Application or {};

Application.Player = MemoryManager.Build(Player);

Application.ProcessInput = function(self, input)
    if input == nil then
        return;
    end
    
    assert(type(input) == "number", "input must be a number");

    if inputFunc[input] then
        inputFunc[input](self);
    end
end