" ------------------------------------------------------------------------------
" Vim Script Basic Sample
" ------------------------------------------------------------------------------
" Comment
echo "test"

" " or '
echo 'tab is this[\t]'
echo "tab is this[\t]"

" variable
let a  = "a"
let _a = "_a"

" dictionary
let dict = {'name': 'namae', 'age': 25}
echo dict
echo dict.name

let dict.name   = 'Over Write'
let dict["age"] = '99'
echo dict

call remove(dict, 'age')
echo dict

" List
let list = ['abc', 123, {'dict': "data"}]
echo list[0]
echo get(list,  1, 'NONE')
echo get(list, 10, 'NONE')

echo join(list, ' ,')

" if
if 1
  echo "if"
elseif 0
  echo "elseif"
else
  echo "else"
endif

" Buffer exists
echo bufexists("echo.vim")

echo getline(1)

" Function
function! Test(args) abort
  echo a:args
  return "end function"
endfunction

call Test("call function.")

" Check Exists
if exists('*Test')
  echo "Exists!"
endif

" Lambda
let Lmd = {a, b -> a + b}
echo Lmd(1,2)

" Variable Scope
" g:	グローバルスコープ、どこからも利用可能
" s:	スクリプトスコープ、スクリプトファイル内のみ使用可能
" l:	関数ローカルスコープ、関数内のみ使用可能
" a:	関数の引数、関数内のみ使用可能
" v:	グローバルスコープ、Vimが予め定義している変数
