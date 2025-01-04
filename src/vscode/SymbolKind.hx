package vscode;

/**
 * A symbol kind.
 */
@:jsRequire("vscode", "SymbolKind")
extern enum abstract SymbolKind(Int) {
	/**
	 * The `File` symbol kind.
	 */
	var File;

	/**
	 * The `Module` symbol kind.
	 */
	var Module;

	/**
	 * The `Namespace` symbol kind.
	 */
	var Namespace;

	/**
	 * The `Package` symbol kind.
	 */
	var Package;

	/**
	 * The `Class` symbol kind.
	 */
	var Class;

	/**
	 * The `Method` symbol kind.
	 */
	var Method;

	/**
	 * The `Property` symbol kind.
	 */
	var Property;

	/**
	 * The `Field` symbol kind.
	 */
	var Field;

	/**
	 * The `Constructor` symbol kind.
	 */
	var Constructor;

	/**
	 * The `Enum` symbol kind.
	 */
	var Enum;

	/**
	 * The `Interface` symbol kind.
	 */
	var Interface;

	/**
	 * The `Function` symbol kind.
	 */
	var Function;

	/**
	 * The `Variable` symbol kind.
	 */
	var Variable;

	/**
	 * The `Constant` symbol kind.
	 */
	var Constant;

	/**
	 * The `String` symbol kind.
	 */
	var String;

	/**
	 * The `Number` symbol kind.
	 */
	var Number;

	/**
	 * The `Boolean` symbol kind.
	 */
	var Boolean;

	/**
	 * The `Array` symbol kind.
	 */
	var Array;

	/**
	 * The `Object` symbol kind.
	 */
	var Object;

	/**
	 * The `Key` symbol kind.
	 */
	var Key;

	/**
	 * The `Null` symbol kind.
	 */
	var Null;

	/**
	 * The `EnumMember` symbol kind.
	 */
	var EnumMember;

	/**
	 * The `Struct` symbol kind.
	 */
	var Struct;

	/**
	 * The `Event` symbol kind.
	 */
	var Event;

	/**
	 * The `Operator` symbol kind.
	 */
	var Operator;

	/**
	 * The `TypeParameter` symbol kind.
	 */
	var TypeParameter;
}
