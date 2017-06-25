runtime stunter.vim

" from help:map.txt#/ion%20s:SID
fun! s:SID()
  return matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze_SID$')
endfun

let Test = Stunter(s:SID())

fun! s:TestMe1(a)
  return 30 + a:a
endfun

fun! g:TestMe2(a)
  return 10 * a:a
endfun

fun! TestMe3(a, b)
  return a:a + a:b
endfun

call Test('s:TestMe1', [12], 42)
call Test('g:TestMe2', [12], 120)
call Test('TestMe3', [100, 8], 108)
