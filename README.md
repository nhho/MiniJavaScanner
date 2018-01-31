# MiniJavaScanner

a scanner that recognizes tokens in a MiniJava program

## Background

MiniJava appears in *Modern Compiler Implementation in Java (Second Edition)*. More details can be found [here](http://www.cambridge.org/resources/052182060X/MCIIJ2e/).

## Reference

The grammar follows from this [reference](http://www.cs.tufts.edu/~sguyer/classes/comp181-2006/minijava.html), which is a mirror copy of the respective section from the textbook, with the following exception:

* Integer literals can be in octal, decimal, and hexadecimal formats. Specifically, it follows the respective definitions of integer literals from the [Java documentation](https://docs.oracle.com/javase/specs/jls/se7/html/jls-3.html#jls-3.10.1) except that underscore is not allowed.

## Behavior

1. The lexer accepts the mixed usage of `\r`, `\n` as delimiter(s) between lines.

2. The lexer reads from the begining. If it encounters any unmatched `*/` or invalid character, the character(s) will be skipped and an error message will be outputed to `stdout`.

3. If the lexer ecounters `EOF` in multi-line comments, the lexer will terminate with an error message. To be more clear, it is acceptable to have a single line comment in the last line without a new line character at the end.

4. The lexer will show each integer literal during its apperance.

5. At the end, the lexer will output two lists of identifiers and non-identifiers respectively (if any). 

## Usage

The following commands assume `java`, `javac` and `javacc` can be directly excuted on the command line. If you are using Windows, you can directly excute `run.bat` to test.

1. `javacc Asgn1.jj`

2. `javac *.java`

3. `java Asgn1 < x` where x is the input (a MiniJava program)

There are few inputs in the `tests` directory for testing. Some are from the [website](http://www.cambridge.org/resources/052182060X/MCIIJ2e/) of the textbook.

## Useful Links

* [Sample soultions](http://www.cambridge.org/resources/052182060X/lecturers/default.htm)

### JavaCC

* [Documentation](https://javacc.org/doc) [Alternative](https://www.cs.purdue.edu/homes/hosking/javacc/doc/docindex.html)
  * [API routines](https://javacc.org/apiroutines)
  * [Grammar](https://javacc.org/javaccgrm)
* [Tips] (https://www.cs.purdue.edu/homes/hosking/javacc/doc/lexertips.html)
* [Tutorial in pdf](https://www.engr.mun.ca/~theo/JavaCC-Tutorial/javacc-tutorial.pdf)
* [FAQ](http://www.engr.mun.ca/~theo/JavaCC-FAQ/javacc-faq-moz.htm)
* [Tutorial 1](https://www.javaworld.com/article/2076269/learn-java/build-your-own-languages-with-javacc.html)
* [Tutorial 2](https://dragonlanguage.wordpress.com/2016/10/10/%E4%BD%BF%E7%94%A8javacc%E5%AF%A6%E4%BE%8B-1/)
* [Tutorial 3](https://hk.saowen.com/a/740ab16449feca3559d9a0cce9d5dd1ab6b93e69fada09372853eec4e282b5aa)
* [Tutorial 4](https://hk.saowen.com/a/349d62eb3fd9cbb3dd5fda8b6844812cc02b0497c643b20c620169fb447a9675)
* [Tutorial 5](http://www.blogjava.net/chenpengyi/archive/2007/01/30/96812.html)

### Github

* [Search](https://github.com/search?utf8=%E2%9C%93&q=MiniJava&type=)
* [Advanced search](https://github.com/search?utf8=%E2%9C%93&q=minijava++extension%3A.jj&type=Code&ref=advsearch&l=&l=) (login required)
* [Repo 1](https://github.com/mohanaprasad1994/MiniJava-Compiler)
* [Repo 2](https://github.com/cawka/minijavaparser)
* [Repo 3](https://github.com/kostagiolasn/MiniJava)
* [Repo 4](https://github.com/ldseinhardt/minijava-parser) (minimal)
