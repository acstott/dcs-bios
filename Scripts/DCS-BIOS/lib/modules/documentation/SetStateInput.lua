module("SetStateInput", package.seeall)

local InputType = require("InputType")

--- @class SetStateInput: Input
--- @field max_value integer
local SetStateInput = {}

--- TODO
--- @param maxValue integer
--- @param description string
--- @return SetStateInput
function SetStateInput:new(maxValue, description)
	--- @type SetStateInput
	local o = {
		interface = InputType.set_state,
		max_value = maxValue,
		description = description,
	}

	setmetatable(o, self)
	self.__index = self
	return o
end

return SetStateInput