package vscode;

/**
 * The definition of a symbol represented as one or many {@link Location locations}.
 * For most programming languages there is only one location at which a symbol is
 * defined.
 */
typedef Definition = EitherType<Location, Array<Location>>
