vim.cmd [[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR> 
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200}) 
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted
  augroup end

  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd = 
  augroup end

  augroup _alpha
    autocmd!
    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  augroup end

autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
autocmd VimLeave config.h !sudo make clean install
autocmd VimLeave *.tex !just todo
autocmd BufWritePre *.tex,*.txt silent! s/\s\./\./g

autocmd FileType py map ,, <leader>r
autocmd FileType tex nmap ,, <plug>(vimtex-compile)
autocmd FileType tex nmap ` <plug>(vimtex-view)
autocmd FileType html,css nmap ,, <C-y>,
"autocmd FileType ms nmap ,, !pdf %
autocmd BufNewFile,BufRead *.ms nmap ,, m:!pdf %<ENTER><ENTER>
autocmd BufNewFile,BufRead *.md nmap ,, m:!pdf %<ENTER><ENTER>

]]
