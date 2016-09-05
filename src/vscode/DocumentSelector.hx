package vscode;

import haxe.extern.EitherType;

/**
 * A language selector is the combination of one or many language identifiers
 * and [language filters](#DocumentFilter).
 *
 * @sample `let sel:DocumentSelector = 'typescript'`;
 * @sample `let sel:DocumentSelector = ['typescript', { language: 'json', pattern: '**∕tsconfig.json' }]`;
 */
typedef DocumentSelector = EitherType<DocumentSelectorSimple,Array<DocumentSelectorSimple>>;

typedef DocumentSelectorSimple = EitherType<String,DocumentFilter>;
