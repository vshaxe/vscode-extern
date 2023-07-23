# Visual Studio Code API externs for Haxe

[![CI](https://img.shields.io/github/workflow/status/vshaxe/vscode-extern/CI.svg?logo=github)](https://github.com/vshaxe/vscode-extern/actions?query=workflow%3ACI)
[![Haxelib Version](https://badgen.net/haxelib/v/vscode)](https://lib.haxe.org/p/vscode)
[![Haxelib Downloads](https://badgen.net/haxelib/d/vscode?color=blue)](https://lib.haxe.org/p/vscode)
[![Haxelib License](https://badgen.net/haxelib/license/vscode)](LICENSE.md)

This extern library makes it possible to write extensions for [Visual Studio Code](https://code.visualstudio.com/)
using [Haxe](https://haxe.org/).

VS Code API version: **1.72.0**

**NOTE**: Requires Haxe 4 or later

## Usage

Global functions and variables from the `vscode` namespace are available through `Vscode` top-level class,
while types defined in `vscode` namespace are located in the `vscode` package. The node.js API externs are
provided by the [hxnodejs](https://github.com/HaxeFoundation/hxnodejs) library.

The current "proposed" APIs are provided are provided via `VscodeProposed` top-level class for the `vscode` namespace
and the `vscode.proposed` package.

VS Code expects a .js module that exports the `activate` function that will be called upon
extension activation. In Haxe this is done using the `@:expose` metdata.

Example:
```haxe
class HelloHaxe {
    @:expose("activate")
    static function activate(context:vscode.ExtensionContext) {
        Vscode.window.showInformationMessage("Hello from Haxe!");
    }
}
```

compile with:

```
haxe -lib vscode -js hellohaxe.js HelloHaxe
```

For a complete extension example, check the [example/](https://github.com/vshaxe/vscode-extern/tree/master/example) directory inside this repository.

For generated extern API documentation, proceed [here](http://vshaxe.github.io/vscode-extern/).

For general information about how to extend Visual Studio code,
check [their documentation](https://code.visualstudio.com/docs/extensions/overview).
