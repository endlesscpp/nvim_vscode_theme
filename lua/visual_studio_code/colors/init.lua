local M = {
    dark = require("visual_studio_code.colors.dark"),
    light = require("visual_studio_code.colors.light"),
}

function M.get_colors(mode)
    if not vim.tbl_contains(vim.tbl_keys(M), mode) then
        vim.api.nvim_echo({
            {
                ("colors mode: `%s` is not exists"):format(mode),
                "ErrorMsg",
            },
        }, true, {})
        -- default dark
        return M["dark"]
    end

    return M[mode]
end

return M
