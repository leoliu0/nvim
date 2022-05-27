vim.cmd [[
let &rtp = '~/.local/plugged/vimtex,' . &rtp
let &rtp .= ',~/.local/plugged/vimtex/after'
filetype plugin indent on
syntax enable
let g:vimtex_compiler_latexmk = {
        \ 'build_dir' : '',
        \ 'callback' : 1,
        \ 'continuous' : 1,
        \ 'executable' : 'latexmk',
        \ 'hooks' : [],
        \ 'options' : [
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}

let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_ignore_filters = [
			\ 'overfull',
			\ 'underfull', ]

let g:vimtex_quickfix_autoclose_after_keystrokes=2
let g:vimtex_quickfix_ignore_filters = [
			\ '.*warning.*',
			\ '.*Warning.*',
			\ '.*hbox.*',
			\]
" let g:vimtex_compiler_method='tectonic'

nnoremap <Space>fi i\begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
nnoremap <Space>fg i\begin{figure}<Enter>\caption{<++>}<Enter>\includegraphics[scale=0.<++>]{<++>.png}\\<Enter>\end{figure}<Esc>4k
nnoremap <Space>pb o\parbox{\textwidth}{}<Esc>i
nnoremap ,exe i\begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
nnoremap ,em i\emph{}<++><Esc>T{i
nnoremap <Space>bf i\textbf{}<Esc>T{i
nnoremap <Space>df i\dfrac{}{<++>}<++><Esc>T{hhi
nnoremap <Space>sm i\sum_{}^{<++>}<++><Esc>T{hhhi
nnoremap <Space>it i\textit{}<++><Esc>T{i
nnoremap <Space>fn i\footnote{}<++><Esc>T{i
nnoremap <Space>lb A<Left>\label{}<Left>
nnoremap <Space>ct bf<Space>a\cite{} <++><Esc>T{i
nnoremap <Space>cp bf<Space>a\citep{} <++><Esc>T{i
nnoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
nnoremap <Space>ol o\begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
nnoremap ,ee I\[<Esc>A\]<Esc>
nnoremap <Space>eq o\begin{equation}<Enter>\end{equation}<Enter><++><Esc>2kA<ENTER>
nnoremap <Space>al o\begin{align*}<Enter>\end{align*}<Enter><++><Esc>2kA<ENTER>
nnoremap <Space>ul o\begin{itemize}<Enter><Enter>\end{itemize}<Esc>1kA\item<Space>
nnoremap <Space>ii o\item<Space>
nnoremap <Space>h o\hline<Esc>j
nnoremap <Space>rf i\ref{<Esc>f i}<Esc>
nnoremap <Space>tb o\begin{table}<Enter>\footnotesize<Enter>\caption{}<Enter>\end{table}<Enter><Enter><Esc>3kf{a
nnoremap <Space>ta i\begin{tabularx}{}<Enter><++><Enter>\end{tabularx}<Enter><Enter><++><Esc>4kA{}<Esc>hhi\textwidth<Esc>3li
nnoremap <Space>sc i\textsc{}<Space><++><Esc>T{i
nnoremap <Space>sec o\section{}<Enter><++><Esc>1kf}i
nnoremap <Space>ssec o\subsection{}<Esc>i
nnoremap <Space>sssec o\subsubsection{}<Esc>i
nnoremap ,st <Esc>F{i*<Esc>f}i
nnoremap ,beg i\begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
nnoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
" nnoremap tt :w<ENTER>:!pdf main.tex<ENTER><ENTER>
nnoremap <Space>tt a\texttt{}<Space><++><Esc>T{i
nnoremap ,col i\begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
nnoremap ,rn i(\ref{})<++><Esc>F}i
nnoremap <Space>ig i\includegraphics[scale=0.<++>]{<++>.png}\\<Esc>0
nnoremap <Space>mm a\multicolumn{}{c}{<++>}<ESC>9hi
nnoremap <Space>4 s$$<ESC>Pe
vnoremap <Space>4 s$$<ESC>Pe
nnoremap <Space>9 xi()<ESC>Pe
vnoremap <Space>9 di()<ESC>Pe
nnoremap <Space>' xi''<ESC>Pe
vnoremap <Space>' di''<ESC>Pe
nnoremap <Space>" xi""<ESC>Pe
vnoremap <Space>" di""<ESC>Pe
nnoremap <Space>[ s{}<ESC>Pe
vnoremap <Space>[ s{}<ESC>Pe
nnoremap <Space>r :&&<Enter>
nnoremap <Space>g :RG<Enter>
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('fd')
vnoremap <Space>i s\textit{}<ESC>hp<ESC>

]]
