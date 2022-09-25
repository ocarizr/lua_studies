require("Game");

local user_input = Game.Init();

while user_input ~= 0 do
    user_input = Game.Run();
end

Game.Close();
