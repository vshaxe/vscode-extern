package vscode;

/**
 * Represents an end of line character sequence in a {@link TextDocument document}.
 */
@:jsRequire("vscode", "EndOfLine")
extern enum abstract EndOfLine(Int) {
	/**
	 * The line feed `\n` character.
	 */
	var LF;

	/**
	 * The carriage return line feed `\r\n` sequence.
	 */
	var CRLF;
}
