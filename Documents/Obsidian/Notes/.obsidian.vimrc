""""""""""""""""""""""
" Clipboard
""""""""""""""""""""""
" unmap <TAB>

" yank to system clipboard
set clipboard=unnamed

" Y consistent with D and C to the end of line
nnoremap Y y$

" don't pollute the register (HACK since we can't map to `"_x` or `"_C`)
nnoremap C "_c$
nnoremap x "_dl

" :bnext/bprev
exmap goBack obcommand app:go-back
exmap goForward obcommand app:go-forward
nnoremap <BS> :goBack
nnoremap <S-BS> :goForward

" navigate visual lines rather than logical ones
nnoremap j gj
nnoremap k gk
nnoremap I g0i
nnoremap A g$a

" next diagnostic
exmap nextSuggestion obcommand obsidian-languagetool-plugin:ltjump-to-next-suggestion
nnoremap gn :nextSuggestion
vnoremap gn :nextSuggestion

" INFO doesn't work in reading mode: https://github.com/timhor/obsidian-editor-shortcuts/issues/20
exmap nextHeading obcommand obsidian-editor-shortcuts:goToNextHeading
exmap prevHeading obcommand obsidian-editor-shortcuts:goToPrevHeading
nnoremap <C-j> :nextHeading
nnoremap <C-k> :prevHeading

" [g]oto [o]pen file (= Quick Switcher)
exmap quickSwitcher obcommand obsidian-another-quick-switcher:search-command_recent-search
nnoremap go :quickSwitcher
nnoremap gr :quickSwitcher

" <Esc> clears highlights
nnoremap <C-l> :nohl

""""""""""""""""""""""
" Comments
""""""""""""""""""""""
" basically ts-comment-string, i.e. using the appropriate comment syntax when in
" a code block
exmap contextualComment obcommand contextual-comments:advanced-comments
nnoremap gcc :contextualComment
vnoremap gc :contextualComment

" Tabs
exmap nextTab obcommand workspace:next-tab
exmap prevTab obcommand workspace:previous-tab
nnoremap gt :nextTab
nnoremap gT :prevTab

" Split Switching
exmap nextSplit obcommand cycle-through-panes:cycle-through-panes
nnoremap <C-CR> :nextSplit

" Extra
imap jk <Esc>

" Close
exmap closeWindow obcommand workspace:close-window
nnoremap ZZ :closeWindow

