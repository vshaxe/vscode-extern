package vscode;

/**
 * Controls to which kind of documents problems are applied.
 */
@:jsRequire("vscode", "ApplyToKind")
@:enum extern abstract ApplyToKind(Int) {
    /**
     * Problems are applied to all documents.
     */
    var AllDocuments = 1;

    /**
     * Problems are applied to open documents only.
     */
    var OpenDocuments = 2;

    /**
     * Problems are applied to closed documents only.
     */
    var ClosedDocuments = 3;
}
