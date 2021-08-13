package vscode;

/**
 * Represents a session of a currently logged in user.
 */
typedef AuthenticationSession = {
	/**
	 * The identifier of the authentication session.
	 */
	final id:String;

	/**
	 * The access token.
	 */
	final accessToken:String;

	/**
	 * The account associated with the session.
	 */
	final account:AuthenticationSessionAccountInformation;

	/**
	 * The permissions granted by the session's access token. Available scopes
	 * are defined by the {@link AuthenticationProvider}.
	 */
	final scopes:ReadOnlyArray<String>;
}
