# Stunter.vim

Stunter runs simple vim tests.  Here is a simple sample script:

```vimL
    runtime stunter.vim

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
```

If you `:source` a file with the above contents it should output:

    ok..1  s:TestMe1(12) == 42
    ok..2  g:TestMe2(12) == 120
    ok..3  TestMe3(100, 8) == 108

