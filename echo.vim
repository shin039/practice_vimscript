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

