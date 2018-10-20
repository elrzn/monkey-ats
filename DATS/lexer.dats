#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

staload Lexer = "SATS/lexer.sats"

extern castfn int_of_size (x: size_t): int

implement $Lexer.lexer_new (input) = @{
  input = input,
  position = 0,
  read_position = 0,
  ch = '\0'
}

implement $Lexer.lexer_read_char (lexer) = {
  val len = int_of_size (length !lexer.input)
  // TODO get char at current position
  val () = !lexer.ch := (if !lexer.read_position >= len then '\0' else 'b')
  val () = !lexer.position := !lexer.read_position
  val () = !lexer.read_position := !lexer.read_position + 1
}