--------------------------------
-- Define the class attributes
--------------------------------
Fighter = {
  name = "",
  country_of_origin = "",
  special_attack_name = "",
  difficulty_level = 0
}

--------------------------------
-- Define the class methods
--------------------------------
function Fighter:light_punch()
  print("Fighter "..self.name.." performed a light punch")
end
function Fighter:strong_punch()
  print("Fighter "..self.name.." performed a strong punch")
end
function Fighter:light_kick()
  print("Fighter "..self.name.." performed a light kick")
end
function Fighter:strong_kick()
  print("Fighter "..self.name.." performed a strong kick")
end
function Fighter:attack_move()
  print("Fighter "..self.name.." performed a "..self.special_attack_name)
end

--------------------------------
-- Define the class constructor
--------------------------------
function Fighter:new(t)
  t = t or {}
  setmetatable(t, self)
  self.__index = self
  return t
end

--------------------------------
-- Create two fighter objects
--------------------------------
blanka = Fighter:new({
  name = "Blanka",
  country_of_origin = "Brazil",
  special_attack_name = "Electric shock",
  difficulty_level = 3
})
print("Object "..blanka.name.." was created.")

chun_li = Fighter:new({
  name = "Chun Li",
  country_of_origin = "China",
  special_attack_name = "Lightning kick",
  difficulty_level = 5
})
print("Object "..chun_li.name.." was created.")

--------------------------------
-- Call object methods
--------------------------------
blanka:light_punch()
blanka:strong_kick()
blanka:attack_move()

chun_li:light_punch()
chun_li:strong_kick()
chun_li:attack_move()
