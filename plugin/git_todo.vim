if exists('g:loaded_git_todo')
	finish
endif
let g:loaded_git_todo = 1


command! -nargs=? GitTodo call git_todo#QuickfixTodos(<q-args>)
