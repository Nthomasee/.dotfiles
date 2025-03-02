return {
    enabled = true,
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("onedark").setup { style = "cool" }
        require("onedark").load()
    end,
}
