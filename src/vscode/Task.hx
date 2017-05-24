package vscode;

import haxe.extern.EitherType;

typedef Task = EitherType<ProcessTask, ShellTask>;