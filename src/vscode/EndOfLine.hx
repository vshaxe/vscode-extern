package vscode;

/**
 * Represents an end of line character sequence in a [document](#TextDocument).
 */
@:enum abstract EndOfLine(Int) {
	/**
	 * The line feed `\n` character.
	 */
	var LF = 1;
	
	/**
	 * The carriage return line feed `\r\n` sequence.
	 */
	var CRLF = 2;
}
