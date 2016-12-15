package vscode;

/**
 * A document link is a range in a text document that links to an internal or external resource, like another
 * text document or a web site.
 */
@:jsRequire("vscode", "DocumentLink")
extern class DocumentLink {
    /**
     * The range this link applies to.
     */
    var range:Range;

    /**
     * The uri this link points to.
     */
    var target:Null<Uri>;

    /**
     * Creates a new document link.
     *
     * @param range The range the document link applies to. Must not be empty.
     * @param target The uri the document link points to.
     */
    function new(range:Range, ?target:Uri);
}
