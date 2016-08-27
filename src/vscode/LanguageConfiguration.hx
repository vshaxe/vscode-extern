package vscode;

/**
 * The language configuration interfaces defines the contract between extensions
 * and various editor features, like automatic bracket insertion, automatic indentation etc.
 */
typedef LanguageConfiguration = {
	/**
	 * The language's comment settings.
	 */
	@:optional var comments:CommentRule;

	/**
	 * The language's brackets.
	 * This configuration implicitly affects pressing Enter around these brackets.
	 */
	@:optional var brackets:Array<CharacterPair>;

	/**
	 * The language's word definition.
	 * If the language supports Unicode identifiers (e.g. JavaScript), it is preferable
	 * to provide a word definition that uses exclusion of known separators.
	 * e.g.: A regex that matches anything except known separators (and dot is allowed to occur in a floating point number):
	 *   /(-?\d*\.\d\w*)|([^\`\~\!\@\#\%\^\&\*\(\)\-\=\+\[\{\]\}\\\|\;\:\'\"\,\.\<\>\/\?\s]+)/g
	 */
	@:optional var wordPattern:js.RegExp;

	/**
	 * The language's indentation settings.
	 */
	@:optional var indentationRules:IndentationRule;

	/**
	 * The language's rules to be evaluated when pressing Enter.
	 */
	@:optional var onEnterRules:Array<OnEnterRule>;

	/**
	 * **Deprecated** Do not use.
	 *
	 * @deprecated Will be replaced by a better API soon.
	 */
	@:deprecated("Will be replaced by a better API soon.")
	@:optional var __electricCharacterSupport:{
		/**
		 * This property is deprecated and will be **ignored** from
		 * the editor.
		 * @deprecated
		 */
		@:deprecated @:optional var brackets:Any;

		/**
		 * This property is deprecated and not fully supported anymore by
		 * the editor (scope and lineStart are ignored).
		 * Use the the autoClosingPairs property in the language configuration file instead.
		 * @deprecated
		 */
		@:deprecated @:optional var docComment:{
			var scope:String;
			var open:String;
			var lineStart:String;
			@:optional var close:String;
		};
	};

	/**
	 * **Deprecated** Do not use.
	 *
	 * @deprecated * Use the the autoClosingPairs property in the language configuration file instead.
	 */
	@:deprecated("Use the the autoClosingPairs property in the language configuration file instead.")
	@:optional var __characterPairSupport:{
		var autoClosingPairs:Array<{open:String, close:String, ?notIn:Array<String>}>;
	};
}
