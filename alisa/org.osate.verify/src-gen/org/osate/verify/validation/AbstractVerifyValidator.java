/*
 * generated by Xtext
 */
package org.osate.verify.validation;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.emf.ecore.EPackage;

public class AbstractVerifyValidator extends org.osate.alisa.common.validation.CommonValidator {

	@Override
	protected List<EPackage> getEPackages() {
	    List<EPackage> result = new ArrayList<EPackage>(super.getEPackages());
	    result.add(org.osate.verify.verify.VerifyPackage.eINSTANCE);
		return result;
	}
}
