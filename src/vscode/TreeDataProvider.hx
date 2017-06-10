package vscode;

import js.Promise.Thenable;
import haxe.extern.EitherType;

/**
 * A data provider that provides tree data
 */
typedef TreeDataProvider<T> = {
    /**
     * An optional event to signal that an element or root has changed.
     * To signal that root has changed, do not pass any argument or pass `undefined` or `null`.
     */
    @:optional var onDidChangeTreeData:Event<Null<T>>;

    /**
     * Get [TreeItem](#TreeItem) representation of the `element`
     *
     * @param element The element for which [TreeItem](#TreeItem) representation is asked for.
     * @return [TreeItem](#TreeItem) representation of the element
     */
    function getTreeItem(element:T):EitherType<TreeItem, Thenable<TreeItem>>;

    /**
     * Get the children of `element` or root if no element is passed.
     *
     * @param element The element from which the provider gets children. Can be `undefined`.
     * @return Children of `element` or root if no element is passed.
     */
    function getChildren(?element:T):ProviderResult<Array<T>>;
}