package vscode;

/**
 * A special value wrapper denoting a value that is safe to not clean.
 * This is to be used when you can guarantee no identifiable information is contained in the value and the cleaning is improperly redacting it.
 */
@:jsRequire("vscode", "TelemetryTrustedValue")
extern class TelemetryTrustedValue<T:Any> {
	/**
	 * The value that is trusted to not contain PII.
	 */
	var value(default, null):T;

	/**
	 * Creates a new telementry trusted value.
	 *
	 * @param value A value to trust
	 */
	function new(value:T);
}
