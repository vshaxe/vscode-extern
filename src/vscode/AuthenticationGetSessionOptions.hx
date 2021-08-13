package vscode;

/**
 * Options to be used when getting an {@link AuthenticationSession} from an {@link AuthenticationProvider}.
 */
typedef AuthenticationGetSessionOptions = {
	/**
	 * Whether login should be performed if there is no matching session.
	 *
	 * If true, a modal dialog will be shown asking the user to sign in. If false, a numbered badge will be shown
	 * on the accounts activity bar icon. An entry for the extension will be added under the menu to sign in. This
	 * allows quietly prompting the user to sign in.
	 *
	 * If there is a matching session but the extension has not been granted access to it, setting this to true
	 * will also result in an immediate modal dialog, and false will add a numbered badge to the accounts icon.
	 *
	 * Defaults to false.
	 */
	var ?createIfNone:Bool;

	/**
	 * Whether the existing user session preference should be cleared.
	 *
	 * For authentication providers that support being signed into multiple accounts at once, the user will be
	 * prompted to select an account to use when {@link authentication.getSession getSession} is called. This preference
	 * is remembered until {@link authentication.getSession getSession} is called with this flag.
	 *
	 * Defaults to false.
	 */
	var ?clearSessionPreference:Bool;
}
