package vscode;

/**
 * Options to be used when getting an {@link AuthenticationSession} from an {@link AuthenticationProvider}.
 */
typedef AuthenticationGetSessionOptions = {
	/**
	 * Whether we should attempt to reauthenticate even if there is already a session available.
	 *
	 * If true, a modal dialog will be shown asking the user to sign in again. This is mostly used for scenarios
	 * where the token needs to be re minted because it has lost some authorization.
	 *
	 * If there are no existing sessions and forceNewSession is true, it will behave identically to
	 * {@link AuthenticationGetSessionOptions.createIfNone createIfNone}.
	 *
	 * This defaults to false.
	 */
	var ?forceNewSession:EitherType<Bool, {detail:String}>;

	/**
	 * Whether we should show the indication to sign in in the Accounts menu.
	 *
	 * If false, the user will be shown a badge on the Accounts menu with an option to sign in for the extension.
	 * If true, no indication will be shown.
	 *
	 * Defaults to false.
	 *
	 * Note: you cannot use this option with any other options that prompt the user like {@link createIfNone}.
	 */
	var ?silent:Bool;

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
