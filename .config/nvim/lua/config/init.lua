require("config.bootstrap")
require("config.options")
require("config.keymaps")


-- setup lazy
local lazy_spec = require("config.lazy-spec")
local lazy_opts = require("config.lazy-options")
require("lazy").setup(lazy_spec, lazy_opts)
