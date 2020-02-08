package vscode;

/**
 * The declaration of a symbol representation as one or many [locations](#Location)
 * or [location links](#LocationLink).
 */
typedef Declaration = EitherType<Location, EitherType<Array<Location>, Array<LocationLink>>>;
