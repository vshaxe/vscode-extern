package vscode;

/**
 * The definition of a symbol represented as one or many [locations](#Location).
 * For most programming languages there is only one location at which a symbol is
 * defined.
 */
typedef Definition = EitherType<Location, Array<Location>>
