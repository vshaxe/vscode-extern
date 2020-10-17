package vscode;

/**
 * Provider for creating `WebviewView` elements.
 */
typedef WebviewViewProvider = {
	/**
	 * Revolves a webview view.
	 *
	 * `resolveWebviewView` is called when a view first becomes visible. This may happen when the view is
	 * first loaded or when the user hides and then shows a view again.
	 *
	 * @param webviewView Webview view to restore. The provider should take ownership of this view. The
	 *    provider must set the webview's `.html` and hook up all webview events it is interested in.
	 * @param context Additional metadata about the view being resolved.
	 * @param token Cancellation token indicating that the view being provided is no longer needed.
	 *
	 * @return Optional thenable indicating that the view has been fully resolved.
	 */
	function resolveWebviewView<T>(webviewView:WebviewView, context:WebviewViewResolveContext<T>,
		token:CancellationToken):Null<Thenable<Void>>; // can't have EitherType<...,Void>

}
