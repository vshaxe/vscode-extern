package vscode;

/**
 * The event data that is fired when a secret is added or removed.
 */
typedef SecretStorageChangeEvent = {
	/**
	 * The key of the secret that has changed.
	 */
	final key:String;
}
