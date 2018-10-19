#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

staload Lexer = "SATS/lexer.sats"

implement $Lexer.lexer_new (input) = @{
  input = input,
  position = 0,
  read_position = 0,
  ch = '\0'
}

implement $Lexer.lexer_read_char (lexer) = {
}
