(define test-cases
  '(("imm int posi num"  1         "1\n")
    ("imm int zero num"  0         "0\n")
    ("imm int minus"    -1        "-1\n")
    ("imm int max"       536870911 "536870911\n")
    ("imm int min"       -536870912 "-536870912\n")
    ("imm false"         #f        "#f\n")
    ("imm true"          #t        "#t\n")
    ("imm emp list"      ()       "()\n")
    ("imm char a"        #\a       "a\n")
    ("imm char z"        #\z       "z\n")
    ("imm char A"        #\A       "A\n")
    ("imm char Z"        #\Z       "Z\n")
    ("imm char !"        #\!       "!\n")
    ("imm char ~"        #\~       "~\n")
    ("unary fxadd1"        (fxadd1 0)          "1\n")
    ("unary fxsub1"        (fxsub1 0)          "-1\n")
    ("unary char->fixnum"  (char->fixnum #\A)  "65\n")
    ("unary fixnum->char"  (fixnum->char 65)   "A\n")
    ("unary not #f"        (not #f)            "#t\n")
    ("unary not #\\a"      (not #\a)           "#f\n")
    ("unary null? ()"      (null? ())          "#t\n")
    ("unary null? #\\a"    (null? #\a)         "#f\n")
    ("unary fixnum? 42"    (fixnum? 42)        "#t\n")
    ("unary fixnum? #t"    (fixnum? #t)        "#f\n")
    ("unary boolean? #t"   (boolean? #t)       "#t\n")
    ("unary boolean? #t"   (boolean? #f)       "#t\n")
    ("unary boolean? #\\t" (boolean? #\t)      "#f\n")
    ("unary char? #\\f"    (char? #\f)         "#t\n")
    ("unary char? ()"      (char? ())          "#f\n")
    ("unary fxlognot"      (fxlognot 1)        "-2\n")
    ("cond if"             (if #t #f #t)           "#f\n")
    ("cond if"             (if (char? #\a) #t #f)  "#t\n")
    ("cond and"            (and 3 #\a ())          "#t\n")
    ("cond or"             (or  (fixnum? #t) #f 1) "#t\n")
    ("binary fx+"  (fx+ 4 2)   "6\n")
    ("binary fx-"  (fx- 4 2)   "2\n")
    ("binary fx*"  (fx* 256999 2089)   "536870911\n")
    ("binary fx complex" (fx+ (fx- (fx- 30 3) 3) (fx- 6 5)) "25\n")
    ("binary fxlogand" (fxlogand #xa #x8) "8\n")
    ("binary fxlogor"  (fxlogor #xa #x5) "15\n")
    ("binary fx="  (fx= 7 7)  "#t\n")
    ("binary fx="  (fx= 9 3)  "#f\n")
    ("binary fx<"  (fx< 9 3)  "#f\n")
    ("binary fx<=" (fx<= 5 5) "#t\n")
    ("binary fx>"  (fx> 4 3)  "#t\n")
    ("binary fx>=" (fx>= 4 5) "#f\n")
    ("binary char="  (char= #\z #\z)  "#t\n")
    ("binary char="  (char= #\! #\@)  "#f\n")
    ("binary char<"  (char< #\Z #\Y)  "#f\n")
    ("binary char<=" (char<= #\A #\A) "#t\n")
    ("binary char>"  (char> #\b #\a)  "#t\n")
    ("binary char>=" (char>= #\b #\c) "#f\n")
    ("let" (let ((a (fx* 4 4))
		 (b (fx* 3 3)))
	     (fx+ a b)) "25\n")
    ("let*" (let* ((x 1))
	      (let* ((x (fx+ x 1))
		     (y (fx+ x 1)))
		y))    "3\n")
    ))
