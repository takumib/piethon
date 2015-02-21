grammar Piethon;

file
    : (funcdef | stmt '\n')* main? (funcdef | stmt)* EOF
    ;

main
    : 'def' 'main' '(' ')' ':' stmts? 'end'
    ;

funcdef
    : 'def' Identifier '(' args? ')' ':' stmts? 'end'
    ;

args
    : Identifier (',' Identifier)*
    ;

call
    : Identifier '(' params ')'
    ;

params
    : expr (',' expr)*
    ;

cond
    : 'if' expr ':' stmts 'else' 'end'
    | 'if' expr ':' stmts 'else' ':' stmts 'end'
    ;

stmts
    : stmt*
    ;

stmt
    : Identifier '=' expr
    | 'print' expr
    | 'return' expr
    ;

expr
    : primary
    | expr ('*' | '/' | '%') expr
    | expr ('+' | '-') expr
    | expr ('<' | '>' | '<=' | '>=') expr
    ;

primary
    : Integer
    | Float
    | Identifier
    ;

Integer
    : Digits
    ;

Float
    : Digits '.' Digits
    ;

Identifier
    : Letter+ (Digits | Letter)*
    ;

fragment
Digits
    : (Digit)+
    ;

fragment
Digit
    : [0-9]
    ;

fragment
Letter
    : [a-zA-Z]
    ;

WS : [ \r\t\n]+ -> skip;