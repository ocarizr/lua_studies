Controller = Controller or {};

Controller.InputCodes = {
    ["w"] = 1,
    ["a"] = 2,
    ["s"] = 3,
    ["d"] = 4,
    ["n"] = 5,
    ["p"] = 6,
    ["q"] = 0,
};

Controller.GetInput = function(self)
    local input = io.read(1);
    return self.InputCodes[input];
end