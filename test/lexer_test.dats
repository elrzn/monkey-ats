#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

staload Lexer = "SATS/lexer.sats"
dynload "DATS/lexer.dats"

implement main0 () =
  let
    val l = $Lexer.lexer_new "TODO"
  in
    println! (l.input)
  end
