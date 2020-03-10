package vscode;

import js.lib.RegExp;

/**
 * The language configuration interfaces defines the contract between extensions
 * and various editor features, like automatic bracket insertion, automatic indentation etc.
 */
typedef LanguageConfiguration = {
	/**
	 * The language's comment settings.
	 */
	var ?comments:CommentRule;

	/**
	 * The language's brackets.
	 * This configuration implicitly affects pressing Enter around these brackets.
	 */
	var ?brackets:Array<CharacterPair>;

	/**
	 * The language's word definition.
	 * If the language supports Unicode identifiers (e.g. JavaScript), it is preferable
	 * to provide a word definition that uses exclusion of known separators.
	 * e.g.: A regex that matches anything except known separators (and dot is allowed to occur in a floating point number):
	 *   /(-?\d*\.\d\w*)|([^\`\~\!\@\#\%\^\&\*\(\)\-\=\+\[\{\]\}\\\|\;\:\'\"\,\.\<\>\/\?\s]+)/g
	 */
	var ?wordPattern:RegExp;

	/**
	 * The language's indentation settings.
	 */
	var ?indentationRules:IndentationRule;

	/**
	 * The language's rules to be evaluated when pressing Enter.
	 */
	var ?onEnterRules:Array<OnEnterRule>;

	/**
	 * **Deprecated** Do not use.
	 *
	 * @deprecated Will be replaced by a better API soon.
	 */
	@:deprecated("Will be replaced by a better API soon.")
	var ?__electricCharacterSupport:{
		/**
		 * This property is deprecated and will be **ignored** from
		 * the editor.
		 * @deprecated
		 */
		@:deprecated var ?brackets:Any;

		/**
		 * This property is deprecated and not fully supported anymore by
		 * the editor (scope and lineStart are ignored).
		 * Use the autoClosingPairs property in the language configuration file instead.
		 * @deprecated
		 */
		@:deprecated var ?docComment:{
			var scope:String;
			var open:String;
			var lineStart:String;
			var ?close:String;
		};
	};

	/**
	 * **Deprecated** Do not use.
	 *
	 * @deprecated * Use the autoClosingPairs property in the language configuration file instead.
	 */
	@:deprecated("Use the autoClosingPairs property in the language configuration file instead.")
	var ?__characterPairSupport:{
		var autoClosingPairs:Array<{open:String, close:String, ?notIn:Array<String>}>;
	};
}
