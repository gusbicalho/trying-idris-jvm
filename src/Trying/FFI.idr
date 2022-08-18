module Trying.FFI

%foreign "jvm:printString,io/github/mmhelloworld/idrisjvm/runtime/Console"
prim__putStr : String -> PrimIO ()

||| Output a string to stdout without a trailing newline.
export
putStr : HasIO io => String -> io ()
putStr str = primIO (prim__putStr str)
