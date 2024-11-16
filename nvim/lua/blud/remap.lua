vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ec",":Explore C:/ <cr>")
vim.keymap.set("n", "<leader>ed",":Explore D:/ <cr>")
vim.keymap.set("n", "<leader>ee",vim.cmd.Ex)
vim.keymap.set("n","<F5>",
function()
    local path = vim.fs.dirname(vim.api.nvim_buf_get_name(0))
    local file = vim.fs.joinpath(path,'run.bat')
    if (vim.fn.filereadable(file)>0) then
	vim.notify('running ' .. file)    
        vim.fn.system('start ' .. '\"' .. file .. '\"')
        vim.notify('started ' .. 'start ' .. '\"' .. file .. '\"')
    else
        vim.notify("There is no run.bat")
    end
end)
