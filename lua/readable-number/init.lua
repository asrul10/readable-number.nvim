local test = 100000000

local function readableNumber()
	local curr = vim.fn.expand("<cword>")

	if tonumber(curr) then
		local formatted = ""
		local j = 0
		for i = #curr, 1, -1 do
			formatted = curr:sub(i, i) .. formatted
			j = j + 1
			if j % 3 == 0 and i - 1 ~= 0 then
				formatted = "_" .. formatted
				j = 0
			end
		end
		vim.api.nvim_set_current_line(vim.fn.substitute(vim.fn.getline("."), curr, formatted, ""))
	end
end

-- _G.readableNumber = readableNumber

vim.api.nvim_set_keymap("n", "<leader>ww", ":lua readableNumber()<CR>", { noremap = true, silent = true })

return {
  readableNumber = readableNumber,
}