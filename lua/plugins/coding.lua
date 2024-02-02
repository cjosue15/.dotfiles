return {
  -- Autotag
  {
    "windwp/nvim-ts-autotag",
  },
  -- Incremental rename
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },
  -- git signs
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
    },
  },
}
