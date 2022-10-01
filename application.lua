require("Vector2");

Application = Application or {};

Application.PlayerPosition = MemoryManager.Build(Vector2);

Application.ProcessInput = function(self, input)
    if input == nil then
        return;
    end
    
    assert(type(input) == "number", "input must be a number");

    if input == 1 then
        self.PlayerPosition._y = self.PlayerPosition._y + 1;
    elseif input == 2 then
        self.PlayerPosition._x = self.PlayerPosition._x - 1;
    elseif input == 3 then
        self.PlayerPosition._y = self.PlayerPosition._y - 1;
    elseif input == 4 then
        self.PlayerPosition._x = self.PlayerPosition._x + 1;
    elseif input == 5 then
        local vec = self.PlayerPosition:Normalized();
        print("Normalized direction: ["..vec._x..", "..vec._y.."]");
    elseif input == 6 then
        print("Position: ["..self.PlayerPosition._x..", "..self.PlayerPosition._y.."]");
    end
end