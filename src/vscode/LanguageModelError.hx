package vscode;

/**
 * An error type for language model specific errors.
 *
 * Consumers of language models should check the code property to determine specific
 * failure causes, like `if(someError.code === vscode.LanguageModelError.NotFound.name) {...}`
 * for the case of referring to an unknown language model. For unspecified errors the `cause`-property
 * will contain the actual error.
 */
@:jsRequire("vscode", "LanguageModelError")
extern class LanguageModelError extends Error {
	/**
	 * The requestor does not have permissions to use this
	 * language model
	 */
	static function NoPermissions(?message:String):LanguageModelError;

	/**
	 * The requestor is blocked from using this language model.
	 */
	static function Blocked(?message:String):LanguageModelError;

	/**
	 * The language model does not exist.
	 */
	static function NotFound(?message:String):LanguageModelError;

	/**
	 * A code that identifies this error.
	 *
	 * Possible values are names of errors, like {@linkcode LanguageModelError.NotFound NotFound},
	 * or `Unknown` for unspecified errors from the language model itself. In the latter case the
	 * `cause`-property will contain the actual error.
	 */
	var code(default, null):String;
}
