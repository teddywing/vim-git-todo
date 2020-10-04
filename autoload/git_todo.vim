" Copyright (c) 2020  Teddy Wing
"
" This file is part of Git-Todo.
"
" Git-Todo is free software: you can redistribute it and/or modify it
" under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
"
" Git-Todo is distributed in the hope that it will be useful, but
" WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
" General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with Git-Todo. If not, see <https://www.gnu.org/licenses/>.


function! git_todo#QuickfixTodos(ref)
	let ref = a:ref

	if empty(ref)
		let ref = get(g:, 'git_todo_default_ref', '')
	endif

	cexpr system('git todo ' . ref)
endfunction
