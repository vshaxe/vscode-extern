package vscode;

/**
 * Options to configure the behavior of the input box UI.
 */
typedef InputBoxOptions = {
	/**
	 * An optional string that represents the title of the input box.
	 */
	var ?title:String;

	/**
	 * The value to prefill in the input box.
	 */
	var ?value:String;

	/**
	 * Selection of the prefilled {@linkcode InputBoxOptions.value value}. Defined as tuple of two number where the
	 * first is the inclusive start index and the second the exclusive end index. When `undefined` the whole
	 * word will be selected, when empty (start equals end) only the cursor will be set,
	 * otherwise the defined range will be selected.
	 */
	var ?valueSelection:Array<Int>;

	/**
	 * The text to display underneath the input box.
	 */
	var ?prompt:String;

	/**
	 * An optional string to show as placeholder in the input box to guide the user what to type.
	 */
	var ?placeHolder:String;

	/**
	 * Controls if a password input is shown. Password input hides the typed text.
	 */
	var ?password:Bool;

	/**
	 * Set to `true` to keep the input box open when focus moves to another part of the editor or to another window.
	 * This setting is ignored on iPad and is always false.
	 */
	var ?ignoreFocusOut:Bool;

	/**
	 * An optional function that will be called to validate input and to give a hint
	 * to the user.
	 *
	 * @param value The current value of the input box.
	 * @return A human-readable string which is presented as diagnostic message.
	 * Return `undefined`, `null`, or the empty string when 'value' is valid.
	 */
	var ?validateInput:String->ProviderResult<Null<String>>;
}
