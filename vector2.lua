require("new");
require("Table");

Vector2 = Vector2 or {};

Vector2.BuildTag = "Vector2";

Vector2._x = 0;
Vector2._y = 0;

Vector2.Distance = function(self, other)
    local deltaY = other._y - self._y;
    local deltaX = other._x - self._x;
    return math.sqrt(math.pow(deltaY, 2) + math.pow(deltaX, 2));
end

Vector2.Magnitude = function(self)
    return math.sqrt((self._y ^ 2) + (self._x ^ 2));
end

Vector2.Normalized = function(self)
    local ret = MemoryManager.Build(Vector2);

    local length = self:Magnitude();
    if length == 0 then
        return ret;
    end

    ret._x = self._x / length;
    ret._y = self._y / length;

    return ret;
end

Vector2.Normalize = function(self)
    local length = self.Magnitude();

    if length ~= 0 then
        self._x = self._x / length;
        self._y = self._y / length;
    end
end

MemoryManager.RegisterConstructor(Vector2.BuildTag, function()
    local ret = Table.ShallowCopy(Vector2);
    ret._x = 0;
    ret._y = 0;

    return ret;
end );
