package vscode;

/**
 * Additional information about the context in which a
 * {@linkcode SignatureHelpProvider.provideSignatureHelp SignatureHelpProvider} was triggered.
 */
typedef SignatureHelpContext = {
	/**
	 * Action that caused signature help to be triggered.
	 */
	var triggerKind(default, null):SignatureHelpTriggerKind;

	/**
	 * Character that caused signature help to be triggered.
	 *
	 * This is `undefined` when signature help is not triggered by typing, such as when manually invoking
	 * signature help or when moving the cursor.
	 */
	var triggerCharacter(default, null):Null<String>;

	/**
	 * `true` if signature help was already showing when it was triggered.
	 *
	 * Retriggers occur when the signature help is already active and can be caused by actions such as
	 * typing a trigger character, a cursor move, or document content changes.
	 */
	var isRetrigger(default, null):Bool;

	/**
	 * The currently active {@linkcode SignatureHelp}.
	 *
	 * The `activeSignatureHelp` has its {@linkcode SignatureHelp.activeSignature activeSignature} field updated based on
	 * the user arrowing through available signatures.
	 */
	var activeSignatureHelp(default, null):Null<SignatureHelp>;
}
