"determining root folder"
let g:ctrlp_working_path_mode = "ra"
let g:ctrlp_root_markers = ['package.json']
let g:ctrlp_show_hidden = 1

"ignoring files:"

set wildignore+=*/tmp/*,\\tmp\\*,*/node_modules/*,\\node_modules,\\\.git,*/\.git/*,.exe,.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*gif,*.svg

let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/(.(git|hg|svn)|bin|node_modules)',
  \ 'file': '\v\.(exe|so|dll)'
  \ }
