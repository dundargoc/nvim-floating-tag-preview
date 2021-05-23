if exists('g:loaded_floating_tag_preview')
  finish
endif

let g:loaded_floating_tag_preview = 1

command! -bang -nargs=1 Ptag lua require('floating_tag_preview')({ command = 'ptag', bang = '<bang>', arguments = '<args>' })
command! -bang -nargs=1 Ptselect lua require('floating_tag_preview')({ command = 'ptselect', bang = '<bang>', arguments = '<args>' })
command! -bang -nargs=1 Ptjump lua require('floating_tag_preview')({ command = 'ptjump', bang = '<bang>', arguments = '<args>' })
command! -count=1 -bang Ptnext lua require('floating_tag_preview')({ command = 'ptnext', count = <count>, bang = '<bang>' })
command! -count=1 -bang PtNext lua require('floating_tag_preview')({ command = 'ptNext', count = <count>, bang = '<bang>' })
command! -count=1 -bang Ptprevious lua require('floating_tag_preview')({ command = 'ptprevious', count = <count>, bang = '<bang>' })
command! -count=1 -bang Ptrewind lua require('floating_tag_preview')({ command = 'ptrewind', count = <count>, bang = '<bang>' })
command! -count=1 -bang Ptfirst lua require('floating_tag_preview')({ command = 'ptfirst', count = <count>, bang = '<bang>' })
command! -bang Ptlast lua require('floating_tag_preview')({ command = 'ptlast', bang = '<bang>' })
command! -bang -nargs=+ Pedit lua require('floating_tag_preview')({ command = 'pedit', bang = '<bang>', arguments = '<args>' })
command! -range -bang -nargs=+ Psearch lua require('floating_tag_preview')({ command = 'psearch', range = { line1 = <line1>, line2 = <line2> }, bang = '<bang>', arguments = '<args>' })

if !get(g:, 'floating_tag_preview_disable_default_mapping', v:false)
  nnoremap <C-W>}   <cmd>execute 'Ptag ' . expand('<cword>')<CR>
  nnoremap <C-W>g}  <cmd>execute 'Ptjump ' . expand('<cword>')<CR>
endif
