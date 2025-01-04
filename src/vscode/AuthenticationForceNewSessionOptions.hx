package vscode;

import vscode.CommentOptions;

/**
 * Optional options to be used when calling {@link authentication.getSession} with the flag `forceNewSession`.
 */
typedef AuthenticationForceNewSessionOptions = {
	/**
	 * An optional message that will be displayed to the user when we ask to re-authenticate. Providing additional context
	 * as to why you are asking a user to re-authenticate can help increase the odds that they will accept.
	 */
	var ?detail:String;
}
