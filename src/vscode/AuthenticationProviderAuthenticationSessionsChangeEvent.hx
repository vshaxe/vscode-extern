package vscode;

/**
 * An [event](#Event) which fires when an [AuthenticationSession](#AuthenticationSession) is added, removed, or changed.
 */
typedef AuthenticationProviderAuthenticationSessionsChangeEvent = {
	/**
	 * The [AuthenticationSession](#AuthenticationSession)s of the [AuthenticationProvider](#AuthentiationProvider) that have been added.
	 */
	var ?added:ReadOnlyArray<AuthenticationSession>;

	/**
	 * The [AuthenticationSession](#AuthenticationSession)s of the [AuthenticationProvider](#AuthentiationProvider) that have been removed.
	 */
	var ?removed:ReadOnlyArray<AuthenticationSession>;

	/**
	 * The [AuthenticationSession](#AuthenticationSession)s of the [AuthenticationProvider](#AuthentiationProvider) that have been changed.
	 * A session changes when its data excluding the id are updated. An example of this is a session refresh that results in a new
	 * access token being set for the session.
	 */
	var ?changed:ReadOnlyArray<AuthenticationSession>;
}
