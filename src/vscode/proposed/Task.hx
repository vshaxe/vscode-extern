package vscode.proposed;

import haxe.extern.EitherType;

typedef Task = EitherType<ProcessTask, ShellTask>;
