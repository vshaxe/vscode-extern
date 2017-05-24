package vscode;

import haxe.extern.EitherType;

/**
 * The ProblemMatchers type definition.
 */
typedef ProblemMatchers = EitherType<String, EitherType<ProblemMatcher, EitherType<Array<String>, Array<ProblemMatcher>>>>;