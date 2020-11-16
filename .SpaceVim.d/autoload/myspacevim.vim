function! myspacevim#after() abort
  set clipboard=unnamedplus
  let wiki = {}
  let wiki.path = '~/vimwiki/'
  let wiki.nested_syntaxes = {'haskell': 'haskell'}
  let g:vimwiki_list = [wiki]

  " LSP config
  " Ensure to have python3 support

  let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'typescript': ['tsserver'],
    \ 'ruby': ['solargraph', 'stdio'],
    \ 'haskell': ['haskell-language-server-wrapper', '--lsp']
    \ }

  let g:LanguageClient_rootMarkers = {
    \ 'haskell': ['*.cabal', 'stack.yaml']
    \ }

  
  let g:ale_linters = {'haskell': [], 'elixir': ['elixir-ls']}
  let g:ale_elixir_elixir_ls_release = '~/elixir-ls'
endfunction
