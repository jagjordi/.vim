let b:jupyter_exec_before = 'clear-screen'
nmap <leader>jl :call job_start(['jupyter', 'qtconsole'])<CR>
let b:ale_linters = ['pylint']
