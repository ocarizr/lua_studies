local rgba = { Red = 0, Green = 0, Blue = 0, Alpha = 0 };

ColorManager = {};

ColorManager.GetRGB = function()
    return { Red = rgba.Red, Green = rgba.Green, Blue = rgba.Blue };
end

ColorManager.GetRgbAsString = function()
    return "Red: " .. rgba.Red .. ", Green: " .. rgba.Green .. ", Blue: " .. rgba.Blue;
end

ColorManager.GetRGBA = function()
    return rgba;
end

ColorManager.GetRgbaAsString = function()
    return "Red: " .. rgba.Red .. ", Green: " .. rgba.Green .. ", Blue: " .. rgba.Blue .. ", Alpha: " .. rgba.Alpha;
end

ColorManager.SetRed = function(red)
    rgba.Red = red;
end

ColorManager.SetBlue = function(blue)
    rgba.Blue = blue;
end

ColorManager.SetGreen = function(green)
    rgba.Green = green;
end

ColorManager.SetAlpha = function(alpha)
    rgba.Alpha = alpha;
end

ColorManager.SetColor = function(red, blue, green, alpha)
    ColorManager.SetRed(red or 0);
    ColorManager.SetBlue(blue or 0);
    ColorManager.SetGreen(green or 0);
    ColorManager.SetAlpha(alpha or 255);
end