Vector2 = Vector2 or {};

local tag = "vector2";

Vector2._x = 0;
Vector2._y = 0;

Vector2.Distance = function(self, other)
    local deltaY = other._y - self._y;
    local deltaX = other._x - self._x;
    return math.sqrt(math.pow(deltaY, 2) + math.pow(deltaX, 2));
end

Vector2.Magnitude = function(self)
    return math.sqrt(math.pow(self._y, 2) + math.pow(self._x, 2));
end

Vector2.Normalized = function(self)
    local newVector = {};

    for key, value in pairs(self) do
        newVector[key] = value;
    end

    local length = newVector.Magnitude();
    newVector._x = newVector._x / length;
    newVector._y = newVector._y / length;

    return newVector;
end

Vector2.Normalize = function(self)
    local length = self.Magnitude();
    self._x = self._x / length;
    self._y = self._y / length;
end

require("new");

RegisterConstructors(tag, function()
    local ret = {};
    ret._x = 0;
    ret._y = 0;

    ret.Distance = Vector2.Distance;
    ret.Magnitude = Vector2.Magnitude;
    ret.Normalized = Vector2.Normalized;
    ret.Normalize = Vector2.Normalize;

    return ret;
end