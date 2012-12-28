
-- Count the number of times a value occurs in a table
        function table_count(tt, item)
          local count
          count = 0
          for ii,xx in pairs(tt) do
            if item == xx then count = count + 1 end
          end
          return count
        end
--spawning
--[[]]--
local count = 0
		for _,obj in pairs(minetest.env:get_objects_inside_radius(pos, 30)) do
			if obj:is_player() then
				return
			elseif obj:get_luaentity() and obj:get_luaentity().name == name then
				count = count+1
			end
		end
		if count > mobs_per_30_block_radius then
			return
		end
