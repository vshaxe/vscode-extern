package vscode;

/**
 * Completion item kinds.
 */
@:jsRequire("vscode", "CompletionItemKind")
@:enum extern abstract CompletionItemKind(Int) {
    var Text;
    var Method;
    var Function;
    var Constructor;
    var Field;
    var Variable;
    var Class;
    var Interface;
    var Struct;
    var Module;
    var Property;
    var Unit;
    var Value;
    var Constant;
    var Enum;
    var EnumMember;
    var Keyword;
    var Snippet;
    var Color;
    var Reference;
    var File;
    var Folder;
}
