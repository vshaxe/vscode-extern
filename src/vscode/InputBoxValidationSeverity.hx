package vscode;

@:jsRequire("vscode", "InputBoxValidationSeverity")
extern enum abstract InputBoxValidationSeverity(Int) {
	var Info;
	var Warning;
	var Error;
}
