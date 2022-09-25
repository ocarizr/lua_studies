Application = Application or {};

Application.ProcessInput = function(self, input)
    if input == nil then
        return;
    end
    
    assert(type(input) == "number", "input must be a number");

    if input == 1 then
        print("Front");
    elseif input == 2 then
        print("Left");
    elseif input == 3 then
        print("Back");
    elseif input == 4 then
        print("Right");
    end
end