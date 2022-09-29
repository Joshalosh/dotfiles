-- :help options

local o = vim.opt

o.backup         = false			   	     -- Creates a backup file.
o.clipboard      = "unnamedplus"	         -- Allows neovim to access the system clipboard.
o.cmdheight      = 1			   	         -- More space in the neovim command line for displaying messages.
o.completeopt    = { "menuone", "noselect" } -- Mostly just for cmp.
o.conceallevel   = 0			             -- So that `` is visible in markdown files.
o.fileencoding   = "utf-8"			         -- The encoding written to a file.
o.hlsearch       = true				         -- Highlight all matches on previous search pattern.
o.ignorecase     = true			             -- Ignores case in search pattern.
o.mouse          = "a"				         -- Allows for mouse usage in neovim.
o.pumheight      = 10				         -- Pop up menu height.
o.showmode       = false			         -- Gets rid of things like -- INSERT --.
o.showtabline    = 2				         -- Always show other tab pages in the tabline.
o.smartcase      = true			             -- Override the 'ignorecase' options if the search pattern contains upper case characters.
o.smartindent    = true			             -- Make indenting smarter again ('cindent' might work better).
o.splitbelow     = true			             -- Force all horizontal splits to go below the current window.
o.splitright     = true			             -- Force all vertical splits to go to the right of the current window.
o.swapfile       = false			         -- Don't create a swap file.
o.termguicolors  = true			             -- Set term gui colours (most terminals support this).
o.timeoutlen     = 1000			             -- Time to wait for a mapped sequence to complete (in milliseconds).
o.undofile       = true				         -- Creates an undo file for persistant undo action baby.
o.updatetime     = 300			             -- Faster completion (4000ms default).
o.writebackup    = false			         -- Makes a backup before overwriting a file (I might want this turned on). 
o.expandtab      = true			             -- Convert all tabs to spaces.
o.shiftwidth     = 4				         -- The number of spaces inserted for each indentation.
o.tabstop        = 4				         -- Set the number of spaces required for a tab (might be unecessary with 'expandtab' enabled).
o.softtabstop    = 4				         -- Set the number of spaces inserted with 'tab' key and deleted with 'backspace' key.
o.cursorline     = true			             -- Highlights the current line.
o.number         = true				         -- Set numbered lines.
o.relativenumber = true			             -- Set relative numbered lines.
o.numberwidth    = 4				         -- Set number column width (default 4).
o.signcolumn     = "yes"			         -- Always show the sign column, otherwise it would shift the text each time.
o.wrap           = false				     -- Display lines as one long line.
o.scrolloff      = 8				         -- Set how many screen lines to be above and below the cursor.
o.sidescrolloff  = 8			             -- Same as 'scrolloff' but works horizontally.
o.guifont        = "Consolas:h10"		     -- The font used in graphical neovimapplications.

o.shortmess:append "c"			-- This option helps to avoid all the hit-enter propmts caused by file messages. 

vim.cmd "set whichwrap+=<,>[,],h,l"
--vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO this doesn't seem to work.
