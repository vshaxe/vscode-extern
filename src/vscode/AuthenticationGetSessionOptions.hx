package vscode;

/**
 * Options to be used when getting an [AuthenticationSession](#AuthenticationSession) from an [AuthenticationProvider](#AuthenticationProvider).
 */
typedef AuthenticationGetSessionOptions = {
	/**
	 * Whether login should be performed if there is no matching session.
	 *
	 * If true, a modal dialog will be shown asking the user to sign in. If false, a numbered badge will be shown
	 * on the accounts activity bar icon. An entry for the extension will be added under the menu to sign in. This
	 * allows quietly prompting the user to sign in.
	 *
	 * Defaults to false.
	 */
	var ?createIfNone:Bool;

	/**
	 * Whether the existing user session preference should be cleared.
	 *
	 * For authentication providers that support being signed into multiple accounts at once, the user will be
	 * prompted to select an account to use when [getSession](#authentication.getSession) is called. This preference
	 * is remembered until [getSession](#authentication.getSession) is called with this flag.
	 *
	 * Defaults to false.
	 */
	var ?clearSessionPreference:Bool;
}
