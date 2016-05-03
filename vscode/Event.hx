package vscode;

typedef Event<T> = (T->Void)->?Dynamic->?Array<Disposable>->Disposable;
