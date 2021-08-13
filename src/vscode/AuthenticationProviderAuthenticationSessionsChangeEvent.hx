package vscode;

/**
 * An {@link Event} which fires when an {@link AuthenticationSession} is added, removed, or changed.
 */
typedef AuthenticationProviderAuthenticationSessionsChangeEvent = {
	/**
	 * The {@link AuthenticationSession}s of the {@link AuthenticationProvider} that have been added.
	 */
	var ?added(default, null):ReadOnlyArray<AuthenticationSession>;

	/**
	 * The {@link AuthenticationSession}s of the {@link AuthenticationProvider} that have been removed.
	 */
	var ?removed(default, null):ReadOnlyArray<AuthenticationSession>;

	/**
	 * The {@link AuthenticationSession}s of the {@link AuthenticationProvider} that have been changed.
	 * A session changes when its data excluding the id are updated. An example of this is a session refresh that results in a new
	 * access token being set for the session.
	 */
	var ?changed(default, null):ReadOnlyArray<AuthenticationSession>;
}
