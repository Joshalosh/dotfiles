function! RemedyBGOpenFile()
    execute("!start remedybg open-file " . expand("%:p") . " " . line("."))
    execute("!powershell -Command Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::AppActivate(' - RemedyBG')")
endfunction
command RemedyBGOpenFile call RemedyBGOpenFile()

function! RemedyBGStartDebugging()
    execute("!start remedybg start-debugging " . expand("%:p") . " " . line("."))
endfunction
command RemedyBGStartDebugging call RemedyBGStartDebugging()

function! RemedyBGStopDebugging()
    execute("!start remedybg stop-debugging " . expand("%:p") . " " . line("."))
endfunction
command RemedyBGStopDebugging call RemedyBGStopDebugging()

function! RemedyBGRunToCursor()
    execute("!start remedybg open-file " . expand("%:p") . " " . line("."))
    execute("!start remedybg run-to-cursor " . expand("%:p") . " " . line("."))
    execute("!powershell -Command Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::AppActivate(' - RemedyBG')")
endfunction
command RemedyBGRunToCursor call RemedyBGRunToCursor()

function! RemedyBGAddBreakpointAtFile()
    execute("!start remedybg open-file " . expand("%:p") . " " . line("."))
    execute("!start remedybg add-breakpoint-at-file " . expand("%:p") . " " . line("."))
    execute("!powershell -Command Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::AppActivate(' - RemedyBG')")
endfunction
command RemedyBGAddBreakpointAtFile call RemedyBGAddBreakpointAtFile()

nnoremap <silent> <F6> <cmd>RemedyBGOpenFile<cr><cr>
nnoremap <silent> <F5> <cmd>RemedyBGStartDebugging<cr><cr>
nnoremap <silent> <S-F5> <cmd>RemedyBGStopDebugging<cr><cr>
nnoremap <silent> <F9> <cmd>RemedyBGAddBreakpointAtFile<cr><cr>
nnoremap <silent> <C-F10> <cmd>RemedyBGRunToCursor<cr><cr>
