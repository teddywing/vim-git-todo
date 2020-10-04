function! git_todo#QuickfixTodos(ref)
	let ref = a:ref

	if empty(ref)
		let ref = get(g:, 'git_todo_default_ref', '')
	endif

	cexpr system('git todo ' . ref)
endfunction
