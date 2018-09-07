package vscode;

/**
 * A concrete [QuickInput](#QuickInput) to let the user input a text value.
 *
 * Note that in many cases the more convenient [window.showInputBox](#window.showInputBox)
 * is easier to use. [window.createInputBox](#window.createInputBox) should be used
 * when [window.showInputBox](#window.showInputBox) does not offer the required flexibility.
 */
typedef InputBox = {
	> QuickInput,

	/**
	 * Current input value.
	 */
	var value:String;

	/**
	 * Optional placeholder in the filter text.
	 */
	@:optional var placeholder:String;

	/**
	 * If the input value should be hidden. Defaults to false.
	 */
	var password:Bool;

	/**
	 * An event signaling when the value has changed.
	 */
	var onDidChangeValue(default, null):Event<String>;

	/**
	 * An event signaling when the user indicated acceptance of the input value.
	 */
	var onDidAccept(default, null):Event<Void>;

	/**
	 * Buttons for actions in the UI.
	 */
	var buttons:ReadonlyArray<QuickInputButton>;

	/**
	 * An event signaling when a button was triggered.
	 */
	var onDidTriggerButton(default, null):Event<QuickInputButton>;

	/**
	 * An optional prompt text providing some ask or explanation to the user.
	 */
	@:optional var prompt:String;

	/**
	 * An optional validation message indicating a problem with the current input value.
	 */
	@:optional var validationMessage:String;
}
