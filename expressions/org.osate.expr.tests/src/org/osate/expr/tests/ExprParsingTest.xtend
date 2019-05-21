/*
 * generated by Xtext 2.17.0
 */
package org.osate.expr.tests

import com.google.inject.Inject
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.extensions.InjectionExtension
import org.eclipse.xtext.testing.util.ParseHelper
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.^extension.ExtendWith
import org.osate.expr.expr.ExprModel

@ExtendWith(InjectionExtension)
@InjectWith(ExprInjectorProvider)
class ExprParsingTest {
	@Inject
	ParseHelper<ExprModel> parseHelper
	
	@Test
	def void loadModel() {
		val result = parseHelper.parse('''
			library
				val x: int;
				var y: int;
				def f();
				type L: list{int};
				type R: real;
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}
}
