let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)
let g:sandwich#recipes += [
      \   {
      \     'buns':     ['<%= ', ' %>'],
      \     'filetype': ['eruby'],
      \     'input':    ['='],
      \     'nesting':  1
      \   },
      \   {
      \     'buns':     ['<% ', ' %>'],
      \     'filetype': ['eruby'],
      \     'input':    ['-'],
      \     'nesting':  1
      \   },
      \   {
      \     'buns':     ['<%# ', ' %>'],
      \     'filetype': ['eruby'],
      \     'input':    ['#'],
      \     'nesting':  1
      \   }
      \ ]
