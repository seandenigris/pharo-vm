multi-threading simulation switch
recordTrace: classOrInteger thing: selector source: source
	"This method includes or excludes CoInterpreterMT methods as required.
	 Auto-generated by CogVMSimulator>>ensureMultiThreadingOverridesAreUpToDate"

	^self perform: #recordTrace:thing:source:
		withArguments: {classOrInteger. selector. source}
		inSuperclass: (cogThreadManager ifNil: [CoInterpreterPrimitives] ifNotNil: [CoInterpreterMT])