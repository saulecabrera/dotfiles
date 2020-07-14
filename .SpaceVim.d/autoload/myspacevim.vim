function! myspacevim#after() abort
  set clipboard=unnamedplus
  let wiki = {}
  let wiki.path = '~/vimwiki/'
  let wiki.nested_syntaxes = {'haskell': 'haskell'}
  let g:vimwiki_list = [wiki]
endfunction
