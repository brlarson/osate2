/*
 * generated by Xtext
 */
package org.osate.expr;

import java.util.Properties;

import org.eclipse.xtext.Constants;

import com.google.inject.Binder;
import com.google.inject.name.Names;

/**
 * Manual modifications go to {org.osate.expr.ExprRuntimeModule}
 */
@SuppressWarnings("all")
public abstract class AbstractExprRuntimeModule extends org.eclipse.xtext.service.DefaultRuntimeModule {

	protected Properties properties = null;

	@Override
	public void configure(Binder binder) {
		properties = tryBindProperties(binder, "org/osate/expr/Expr.properties");
		super.configure(binder);
	}
	
	public void configureLanguageName(Binder binder) {
		binder.bind(String.class).annotatedWith(Names.named(Constants.LANGUAGE_NAME)).toInstance("org.osate.expr.Expr");
	}
	
	public void configureFileExtensions(Binder binder) {
		if (properties == null || properties.getProperty(Constants.FILE_EXTENSIONS) == null)
			binder.bind(String.class).annotatedWith(Names.named(Constants.FILE_EXTENSIONS)).toInstance("expr");
	}
	
	// contributed by org.eclipse.xtext.generator.grammarAccess.GrammarAccessFragment
	public java.lang.ClassLoader bindClassLoaderToInstance() {
		return getClass().getClassLoader();
	}

	// contributed by org.eclipse.xtext.generator.grammarAccess.GrammarAccessFragment
	public Class<? extends org.eclipse.xtext.IGrammarAccess> bindIGrammarAccess() {
		return org.osate.expr.services.ExprGrammarAccess.class;
	}

	// contributed by org.eclipse.xtext.generator.serializer.SerializerFragment
	public Class<? extends org.eclipse.xtext.serializer.sequencer.ISemanticSequencer> bindISemanticSequencer() {
		return org.osate.expr.serializer.ExprSemanticSequencer.class;
	}

	// contributed by org.eclipse.xtext.generator.serializer.SerializerFragment
	public Class<? extends org.eclipse.xtext.serializer.sequencer.ISyntacticSequencer> bindISyntacticSequencer() {
		return org.osate.expr.serializer.ExprSyntacticSequencer.class;
	}

	// contributed by org.eclipse.xtext.generator.serializer.SerializerFragment
	public Class<? extends org.eclipse.xtext.serializer.ISerializer> bindISerializer() {
		return org.eclipse.xtext.serializer.impl.Serializer.class;
	}

	// contributed by org.eclipse.xtext.generator.parser.antlr.ex.rt.AntlrGeneratorFragment
	public Class<? extends org.eclipse.xtext.parser.IParser> bindIParser() {
		return org.osate.expr.parser.antlr.ExprParser.class;
	}

	// contributed by org.eclipse.xtext.generator.parser.antlr.ex.rt.AntlrGeneratorFragment
	public Class<? extends org.eclipse.xtext.parser.ITokenToStringConverter> bindITokenToStringConverter() {
		return org.eclipse.xtext.parser.antlr.AntlrTokenToStringConverter.class;
	}

	// contributed by org.eclipse.xtext.generator.parser.antlr.ex.rt.AntlrGeneratorFragment
	public Class<? extends org.eclipse.xtext.parser.antlr.IAntlrTokenFileProvider> bindIAntlrTokenFileProvider() {
		return org.osate.expr.parser.antlr.ExprAntlrTokenFileProvider.class;
	}

	// contributed by org.eclipse.xtext.generator.parser.antlr.ex.rt.AntlrGeneratorFragment
	public Class<? extends org.eclipse.xtext.parser.antlr.Lexer> bindLexer() {
		return org.osate.expr.parser.antlr.lexer.InternalExprLexer.class;
	}

	// contributed by org.eclipse.xtext.generator.parser.antlr.ex.rt.AntlrGeneratorFragment
	public com.google.inject.Provider<org.osate.expr.parser.antlr.lexer.InternalExprLexer> provideInternalExprLexer() {
		return org.eclipse.xtext.parser.antlr.LexerProvider.create(org.osate.expr.parser.antlr.lexer.InternalExprLexer.class);
	}

	// contributed by org.eclipse.xtext.generator.parser.antlr.ex.rt.AntlrGeneratorFragment
	public void configureRuntimeLexer(com.google.inject.Binder binder) {
		binder.bind(org.eclipse.xtext.parser.antlr.Lexer.class).annotatedWith(com.google.inject.name.Names.named(org.eclipse.xtext.parser.antlr.LexerBindings.RUNTIME)).to(org.osate.expr.parser.antlr.lexer.InternalExprLexer.class);
	}

	// contributed by org.eclipse.xtext.generator.parser.antlr.ex.rt.AntlrGeneratorFragment
	public Class<? extends org.eclipse.xtext.parser.antlr.ITokenDefProvider> bindITokenDefProvider() {
		return org.eclipse.xtext.parser.antlr.AntlrTokenDefProvider.class;
	}

	// contributed by org.eclipse.xtext.generator.parser.antlr.ex.rt.AntlrGeneratorFragment
	public Class<? extends org.eclipse.xtext.parsetree.reconstr.ITokenSerializer.IKeywordSerializer> bindITokenSerializer$IKeywordSerializer() {
		return org.eclipse.xtext.parsetree.reconstr.impl.IgnoreCaseKeywordSerializer.class;
	}

	// contributed by org.eclipse.xtext.generator.parser.antlr.ex.rt.AntlrGeneratorFragment
	public Class<? extends org.eclipse.xtext.conversion.impl.AbstractIDValueConverter> bindAbstractIDValueConverter() {
		return org.eclipse.xtext.conversion.impl.IgnoreCaseIDValueConverter.class;
	}

	// contributed by org.eclipse.xtext.generator.validation.JavaValidatorFragment
	@org.eclipse.xtext.service.SingletonBinding(eager=true)	public Class<? extends org.osate.expr.validation.ExprJavaValidator> bindExprJavaValidator() {
		return org.osate.expr.validation.ExprJavaValidator.class;
	}

	// contributed by org.eclipse.xtext.generator.scoping.AbstractScopingFragment
	public Class<? extends org.eclipse.xtext.scoping.IScopeProvider> bindIScopeProvider() {
		return org.osate.expr.scoping.ExprScopeProvider.class;
	}

	// contributed by org.eclipse.xtext.generator.scoping.AbstractScopingFragment
	public void configureIScopeProviderDelegate(com.google.inject.Binder binder) {
		binder.bind(org.eclipse.xtext.scoping.IScopeProvider.class).annotatedWith(com.google.inject.name.Names.named(org.eclipse.xtext.scoping.impl.AbstractDeclarativeScopeProvider.NAMED_DELEGATE)).to(org.eclipse.xtext.scoping.impl.ImportedNamespaceAwareLocalScopeProvider.class);
	}

	// contributed by org.eclipse.xtext.generator.scoping.AbstractScopingFragment
	public Class<? extends org.eclipse.xtext.scoping.IGlobalScopeProvider> bindIGlobalScopeProvider() {
		return org.eclipse.xtext.scoping.impl.DefaultGlobalScopeProvider.class;
	}

	// contributed by org.eclipse.xtext.generator.scoping.AbstractScopingFragment
	public void configureIgnoreCaseLinking(com.google.inject.Binder binder) {
		binder.bindConstant().annotatedWith(org.eclipse.xtext.scoping.IgnoreCaseLinking.class).to(false);
	}

	// contributed by org.eclipse.xtext.generator.exporting.QualifiedNamesFragment
	public Class<? extends org.eclipse.xtext.naming.IQualifiedNameProvider> bindIQualifiedNameProvider() {
		return org.eclipse.xtext.naming.DefaultDeclarativeQualifiedNameProvider.class;
	}

	// contributed by org.eclipse.xtext.generator.builder.BuilderIntegrationFragment
	public Class<? extends org.eclipse.xtext.resource.IContainer.Manager> bindIContainer$Manager() {
		return org.eclipse.xtext.resource.containers.StateBasedContainerManager.class;
	}

	// contributed by org.eclipse.xtext.generator.builder.BuilderIntegrationFragment
	public Class<? extends org.eclipse.xtext.resource.containers.IAllContainersState.Provider> bindIAllContainersState$Provider() {
		return org.eclipse.xtext.resource.containers.ResourceSetBasedAllContainersStateProvider.class;
	}

	// contributed by org.eclipse.xtext.generator.builder.BuilderIntegrationFragment
	public void configureIResourceDescriptions(com.google.inject.Binder binder) {
		binder.bind(org.eclipse.xtext.resource.IResourceDescriptions.class).to(org.eclipse.xtext.resource.impl.ResourceSetBasedResourceDescriptions.class);
	}

	// contributed by org.eclipse.xtext.generator.builder.BuilderIntegrationFragment
	public void configureIResourceDescriptionsPersisted(com.google.inject.Binder binder) {
		binder.bind(org.eclipse.xtext.resource.IResourceDescriptions.class).annotatedWith(com.google.inject.name.Names.named(org.eclipse.xtext.resource.impl.ResourceDescriptionsProvider.PERSISTED_DESCRIPTIONS)).to(org.eclipse.xtext.resource.impl.ResourceSetBasedResourceDescriptions.class);
	}

	// contributed by org.eclipse.xtext.generator.formatting2.Formatter2Fragment
	public Class<? extends org.eclipse.xtext.formatting2.IFormatter2> bindIFormatter2() {
		return org.osate.expr.formatting2.ExprFormatter.class;
	}

	// contributed by org.eclipse.xtext.generator.formatting2.Formatter2Fragment
	public void configureFormatterPreferences(com.google.inject.Binder binder) {
		binder.bind(org.eclipse.xtext.preferences.IPreferenceValuesProvider.class).annotatedWith(org.eclipse.xtext.formatting2.FormatterPreferences.class).to(org.eclipse.xtext.formatting2.FormatterPreferenceValuesProvider.class);
	}

}
