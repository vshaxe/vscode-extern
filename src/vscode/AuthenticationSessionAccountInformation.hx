package vscode;

/**
 * The information of an account associated with an {@link AuthenticationSession}.
 */
typedef AuthenticationSessionAccountInformation = {
	/**
	 * The unique identifier of the account.
	 */
	final id:String;

	/**
	 * The human-readable name of the account.
	 */
	final label:String;
}
