package vscode;

/**
 * A cancellation source creates and controls a [cancellation token](#CancellationToken).
 */
@:jsRequire("vscode", "CancellationTokenSource")
extern class CancellationTokenSource {
    /**
     * The cancellation token of this source.
     */
    var token:CancellationToken;

    /**
     * Signal cancellation on the token.
     */
    function cancel():Void;

    /**
     * Dispose object and free resources. Will call [cancel](#CancellationTokenSource.cancel).
     */
    function dispose():Void;
}
