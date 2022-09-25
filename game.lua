require("Controller");
require("Application");

Game = Game or {};

Game.Init = function()
    math.randomseed(os.time());
    return 1;
end

Game.Run = function()
    local input = Controller:GetInput();
    Application:ProcessInput(input);

    return input == 0 and 0 or 1;
end

Game.Close = function()
    print("closing game");
end
