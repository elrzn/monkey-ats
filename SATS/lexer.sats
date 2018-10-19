#define ILLEGAL "ILLEGAL"
#define EOF "EOF"
#define IDENT "IDENT"
#define INT "INT"
#define ASSIGN "="
#define PLUS "+"
#define COMMA ","
#define SEMICOLON ";"
#define LPAREN "("
#define RPAREN ")"
#define LBRACE "{"
#define RBRACE "}"
#define FUNCTION "FUNCTION"
#define LET "LET"

typedef token_type = string

typedef token = @{
  token_type = token_type,
  literal = string
}

typedef lexer = @{
  input = string,
  position = int,
  read_position = int,
  ch = char
}

fn lexer_new (input: string): lexer
fn lexer_read_char (lexer: lexer): void

symintr .read_char
overload .read_char with lexer_read_char