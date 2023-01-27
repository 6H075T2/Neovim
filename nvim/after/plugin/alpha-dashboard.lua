local present, alpha = pcall(require, "alpha")

local header = {
    type = "text",
    val = 
{
[[             ,----------------,              ,---------,]],
[[        ,-----------------------,          ,"        ,"|]],
[[      ,"                      ,"|        ,"        ,"  |]],
[[     +-----------------------+  |      ,"        ,"    |]],
[[     |  .-----------------.  |  |     +---------+      |]],
[[     |  |    I L O V E    |  |  |     | -==----'|      |]],
[[     |  | T E R M I N A L |  |  |     |         |      |]],
[[     |  |       <3        |  |  |/----|`---=    |      |]],
[[     |  |   N E O V I M   |  |  |   ,/|==== ooo |      ;]],
[[     |  |  C:\>_          |  |  |  // |(((( [33]|    ,"]],
[[     |  `-----------------'  |," .;'| |((((     |  ,"]],
[[     +-----------------------+  ;;  | |         |,"]],
[[        /_)______________(_/  //'   | +---------+]],
[[   ___________________________/___  `,]],
[[  /  oooooooooooooooo  .o.  oooo /,   \,"-----------]],
[[ / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"]],
[[/_==__==========__==_ooo__ooo=_/'   /___________,"]],
[[`-----------------------------']],
},
    opts = 
    {
        position = "center"
    },
}

local function button(sc, txt, keybind)
local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

local opts = 
{
    position = "center",
    text = txt,
    shortcut = sc,
    cursor = 6,
    width = 39,
    align_shortcut = "right",
    hl_shortcut = "Number",
    hl = "Function",
 }

if keybind then
    opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
end

  return
  {
    type = "button",
    val = txt,
    on_press = function()
    local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
    vim.api.nvim_feedkeys(key, "normal", false)
    end,
    opts = opts,
  }
end

local buttons = 
{
  type = "group",
  val = 
  {
    { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center"}},
    { type = "padding", val = 1  },
    button("e", "   > Create", ":ene <BAR> startinsert<CR>"),
    button("r", "   > Recents", ":Telescope oldfiles<CR>"),
    button("p", "   > Projects", ":Telescope projects<CR>"),
    button("ff", "   > Search", ":Telescope find_files<CR>"),
    button("u", "   > Update", ":PackerSync<CR>"),
    button("q", "   > Quit", ":qa!<CR>"),
  },
  
  opts = 
  {
    spacing = 0,
  },
}

local footer = 
{
    type = "text",
    val = 
    {
[[6H075T2]],

    },

    opts =
    {
        position = "center",
    },
}




local datetime = os.date " %H:%M"

--   Today is 

local hi_top_section = {
  type = "text",
  val =  "┌─────────────────── " .. "6H075T2" .. " ────────────────────┐",
  opts = {
    position = "center",
    hl = ""
  }
}

local hi_middle_section = {
  type = "text",
  val = "│                                                │",
  opts = {
    position = "center",
    hl = ""
  }
}

local hi_bottom_section = {
  type = "text",
  val = "└───══───══───══───  " .. datetime .. "  ───══───══───══────┘",
  opts = {
    position = "center",
    hl = ""
  }
}

local section = 
{
  header = header,
  buttons = buttons,
--  footer = footer,
  hi_top_section = hi_top_section,
  hi_middle_section = hi_middle_section,
  hi_bottom_section = hi_bottom_section,
  
}

local opts = 
{
  layout = 
  {
    { type = "padding", val = 1 },
    section.header,
    
    { type = "padding", val = 1 },
    section.buttons,
    
--    { type = "padding", val = 1 },
--    section.footer,

    {type = "padding", val = 1},
    section.hi_top_section,
    section.hi_middle_section,
    section.hi_bottom_section,
    
  },
}

alpha.setup(opts)
