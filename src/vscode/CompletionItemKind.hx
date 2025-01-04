package vscode;

/**
 * Completion item kinds.
 */
@:jsRequire("vscode", "CompletionItemKind")
extern enum abstract CompletionItemKind(Int) {
	/**
	 * The `Text` completion item kind.
	 */
	var Text;

	/**
	 * The `Method` completion item kind.
	 */
	var Method;

	/**
	 * The `Function` completion item kind.
	 */
	var Function;

	/**
	 * The `Constructor` completion item kind.
	 */
	var Constructor;

	/**
	 * The `Field` completion item kind.
	 */
	var Field;

	/**
	 * The `Variable` completion item kind.
	 */
	var Variable;

	/**
	 * The `Class` completion item kind.
	 */
	var Class;

	/**
	 * The `Interface` completion item kind.
	 */
	var Interface;

	/**
	 * The `Module` completion item kind.
	 */
	var Module;

	/**
	 * The `Property` completion item kind.
	 */
	var Property;

	/**
	 * The `Unit` completion item kind.
	 */
	var Unit;

	/**
	 * The `Value` completion item kind.
	 */
	var Value;

	/**
	 * The `Enum` completion item kind.
	 */
	var Enum;

	/**
	 * The `Keyword` completion item kind.
	 */
	var Keyword;

	/**
	 * The `Snippet` completion item kind.
	 */
	var Snippet;

	/**
	 * The `Color` completion item kind.
	 */
	var Color;

	/**
	 * The `Reference` completion item kind.
	 */
	var Reference;

	/**
	 * The `File` completion item kind.
	 */
	var File;

	/**
	 * The `Folder` completion item kind.
	 */
	var Folder;

	/**
	 * The `EnumMember` completion item kind.
	 */
	var EnumMember;

	/**
	 * The `Constant` completion item kind.
	 */
	var Constant;

	/**
	 * The `Struct` completion item kind.
	 */
	var Struct;

	/**
	 * The `Event` completion item kind.
	 */
	var Event;

	/**
	 * The `Operator` completion item kind.
	 */
	var Operator;

	/**
	 * The `TypeParameter` completion item kind.
	 */
	var TypeParameter;

	/**
	 * The `User` completion item kind.
	 */
	var User;

	/**
	 * The `Issue` completion item kind.
	 */
	var Issue;
}
