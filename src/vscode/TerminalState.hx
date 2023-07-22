package vscode;

typedef TerminalState = {
	/**
	 * Whether the {@link Terminal} has been interacted with. Interaction means that the
	 * terminal has sent data to the process which depending on the terminal's _mode_. By
	 * default input is sent when a key is pressed or when a command or extension sends text,
	 * but based on the terminal's mode it can also happen on:
	 *
	 * - a pointer click event
	 * - a pointer scroll event
	 * - a pointer move event
	 * - terminal focus in/out
	 *
	 * For more information on events that can send data see "DEC Private Mode Set (DECSET)" on
	 * https://invisible-island.net/xterm/ctlseqs/ctlseqs.html
	 */
	var isInteractedWith(default, never):Bool;
}
