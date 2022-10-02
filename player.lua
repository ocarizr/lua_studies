require("vector2");

local move = function(self, direction)
    self._position = self._position + direction;
end

Player = Player or {};

Player.BuildTag = "Player";

Player._position = {};

Player.MoveForward = function(self)
    move(self, {_x = 0, _y = 1});
end

Player.MoveBackward = function(self)
    move(self, {_x = 0, _y = -1});
end

Player.MoveLeft = function(self)
    move(self, {_x = -1, _y = 0});
end

Player.MoveRight = function(self)
    move(self, {_x = 1, _y = 0});
end

MemoryManager.RegisterConstructor(Player.BuildTag, function()
    local ret = Table.ShallowCopy(Player);
    ret._position = MemoryManager.Build(Vector2);
    return ret;
end );
