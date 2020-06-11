package vscode;

/**
 * Additional information about the opening custom document.
 */
typedef CustomDocumentOpenContext = {
	/**
	 * The id of the backup to restore the document from or `undefined` if there is no backup.
	 *
	 * If this is provided, your extension should restore the editor from the backup instead of reading the file
	 * from the user's workspace.
	 */
	final ?backupId:String;
}
