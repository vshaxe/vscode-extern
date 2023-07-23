package tuple;

import vscode.NotebookEdit;
import vscode.WorkspaceEditEntryMetadata;

typedef NotebookEditWorkspaceEditEntryMetadata = {
	var notebookEdit:NotebookEdit;
	var workspaceEditEntryMetadata:WorkspaceEditEntryMetadata;
}

// TODO: don't know if this works it's a hack to implement typed tuples.
abstract NotebookEditWorkspaceEditEntryMetadataTuple(NotebookEditWorkspaceEditEntryMetadata) {
	inline public function new(value:NotebookEditWorkspaceEditEntryMetadata) {
		this = value;
	}

	@:from static inline function fromArray(d:Array<Dynamic>):NotebookEditWorkspaceEditEntryMetadataTuple {
		return new NotebookEditWorkspaceEditEntryMetadataTuple({
			notebookEdit: d[0],
			workspaceEditEntryMetadata: d[1]
		});
	}

	@:to inline function toArray():Array<Dynamic> {
		return [this.notebookEdit, this.workspaceEditEntryMetadata];
	}
}
