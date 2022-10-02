require("vector2");

local move = function(self, direction)
    self._position._x = self._position._x + direction.x;
    self._position._y = self._position._y + direction.y;
end

Player = Player or {};

Player.BuildTag = "Player";

Player._position = MemoryManager.Build(Vector2);

Player.MoveForward = function(self)
    move(self, {x = 0, y = 1});
end

Player.MoveBackward = function(self)
    move(self, {x = 0, y = -1});
end

Player.MoveLeft = function(self)
    move(self, {x = -1, y = 0});
end

Player.MoveRight = function(self)
    move(self, {x = 1, y = 0});
end

MemoryManager.RegisterConstructor(Player.BuildTag, function()
    local ret = Table.DeepCopy(Player);
    return ret;
end );
