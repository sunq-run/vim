function! cheatcode#Complete(findstart, base)
  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\a'
      let start -= 1
    endwhile
    return start
  else
    let files = []
    let k = []
    " find months matching with "a:base"
    " ファイル検索"
    if expand("%:e") == "py"
    	let filelist = system("grep -rnlw /Users/sunq/.vim/plugin/cheatcode/python -e " . a:base)
    elseif expand("%:e") == "vim"
    	let filelist = system("grep -rnlw /Users/sunq/.vim/plugin/cheatcode/python -e " . a:base)
    else
	let filelist = system("grep -rnlw /Users/sunq/.vim/plugin/cheatcode/python -e " . a:base)
    endif
    let ret = split(filelist,'\n')
    for i in ret
	    call add(files,split(i,'/')[6])
    endfor
    return files
  endif
endfunction
function Openfile()
	let s:filename = getline(".")
	let cf = expand("%")
	vs aaa
	exe 'e /Users/sunq/.vim/plugin/cheatcode/python/' . s:filename
	"windowの移動"
	execute bufwinnr(cf).'wincmd w'
endfunction

function Closefile()
	execute bufwinnr(s:filename).'wincmd w'
	q
endfunction


