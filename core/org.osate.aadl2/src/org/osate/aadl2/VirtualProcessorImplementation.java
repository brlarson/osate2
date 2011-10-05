/**
 * <copyright>
 * Copyright  2008 by Carnegie Mellon University, all rights reserved.
 *
 * Use of the Open Source AADL Tool Environment (OSATE) is subject to the terms of the license set forth
 * at http://www.eclipse.org/org/documents/epl-v10.html.
 *
 * NO WARRANTY
 *
 * ANY INFORMATION, MATERIALS, SERVICES, INTELLECTUAL PROPERTY OR OTHER PROPERTY OR RIGHTS GRANTED OR PROVIDED BY
 * CARNEGIE MELLON UNIVERSITY PURSUANT TO THIS LICENSE (HEREINAFTER THE "DELIVERABLES") ARE ON AN "AS-IS" BASIS.
 * CARNEGIE MELLON UNIVERSITY MAKES NO WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED AS TO ANY MATTER INCLUDING,
 * BUT NOT LIMITED TO, WARRANTY OF FITNESS FOR A PARTICULAR PURPOSE, MERCHANTABILITY, INFORMATIONAL CONTENT,
 * NONINFRINGEMENT, OR ERROR-FREE OPERATION. CARNEGIE MELLON UNIVERSITY SHALL NOT BE LIABLE FOR INDIRECT, SPECIAL OR
 * CONSEQUENTIAL DAMAGES, SUCH AS LOSS OF PROFITS OR INABILITY TO USE SAID INTELLECTUAL PROPERTY, UNDER THIS LICENSE,
 * REGARDLESS OF WHETHER SUCH PARTY WAS AWARE OF THE POSSIBILITY OF SUCH DAMAGES. LICENSEE AGREES THAT IT WILL NOT
 * MAKE ANY WARRANTY ON BEHALF OF CARNEGIE MELLON UNIVERSITY, EXPRESS OR IMPLIED, TO ANY PERSON CONCERNING THE
 * APPLICATION OF OR THE RESULTS TO BE OBTAINED WITH THE DELIVERABLES UNDER THIS LICENSE.
 *
 * Licensee hereby agrees to defend, indemnify, and hold harmless Carnegie Mellon University, its trustees, officers,
 * employees, and agents from all claims or demands made against them (and any related losses, expenses, or
 * attorney's fees) arising out of, or relating to Licensee's and/or its sub licensees' negligent use or willful
 * misuse of or negligent conduct or willful misconduct regarding the Software, facilities, or other rights or
 * assistance granted by Carnegie Mellon University under this License, including, but not limited to, any claims of
 * product liability, personal injury, death, damage to property, or violation of any laws or regulations.
 *
 * Carnegie Mellon University Software Engineering Institute authored documents are sponsored by the U.S. Department
 * of Defense under Contract F19628-00-C-0003. Carnegie Mellon University retains copyrights in all material produced
 * under this contract. The U.S. Government retains a non-exclusive, royalty-free license to publish or reproduce these
 * documents, or allow others to do so, for U.S. Government purposes only pursuant to the copyright license
 * under the contract clause at 252.227.7013.
 * </copyright>
 *
 * $Id: VirtualProcessorImplementation.java,v 1.17 2009-06-05 16:43:24 lwrage Exp $
 */
package org.osate.aadl2;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Virtual Processor Implementation</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.osate.aadl2.VirtualProcessorImplementation#getOwnedVirtualBusSubcomponents <em>Owned Virtual Bus Subcomponent</em>}</li>
 *   <li>{@link org.osate.aadl2.VirtualProcessorImplementation#getOwnedVirtualProcessorSubcomponents <em>Owned Virtual Processor Subcomponent</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.osate.aadl2.Aadl2Package#getVirtualProcessorImplementation()
 * @model
 * @generated
 */
public interface VirtualProcessorImplementation extends ComponentImplementation, VirtualProcessorClassifier {
	/**
	 * Returns the value of the '<em><b>Owned Virtual Bus Subcomponent</b></em>' containment reference list.
	 * The list contents are of type {@link org.osate.aadl2.VirtualBusSubcomponent}.
	 * <p>
	 * This feature subsets the following features:
	 * <ul>
	 *   <li>'{@link org.osate.aadl2.ComponentImplementation#getOwnedSubcomponents() <em>Owned Subcomponent</em>}'</li>
	 * </ul>
	 * </p>
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Owned Virtual Bus Subcomponent</em>' containment reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Owned Virtual Bus Subcomponent</em>' containment reference list.
	 * @see org.osate.aadl2.Aadl2Package#getVirtualProcessorImplementation_OwnedVirtualBusSubcomponent()
	 * @model containment="true" ordered="false"
	 * @generated
	 */
	EList<VirtualBusSubcomponent> getOwnedVirtualBusSubcomponents();

	/**
	 * Creates a new {@link org.osate.aadl2.VirtualBusSubcomponent} and appends it to the '<em><b>Owned Virtual Bus Subcomponent</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return The new {@link org.osate.aadl2.VirtualBusSubcomponent}.
	 * @see #getOwnedVirtualBusSubcomponents()
	 * @generated
	 */
	VirtualBusSubcomponent createOwnedVirtualBusSubcomponent();

	/**
	 * Returns the value of the '<em><b>Owned Virtual Processor Subcomponent</b></em>' containment reference list.
	 * The list contents are of type {@link org.osate.aadl2.VirtualProcessorSubcomponent}.
	 * <p>
	 * This feature subsets the following features:
	 * <ul>
	 *   <li>'{@link org.osate.aadl2.ComponentImplementation#getOwnedSubcomponents() <em>Owned Subcomponent</em>}'</li>
	 * </ul>
	 * </p>
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Owned Virtual Processor Subcomponent</em>' containment reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Owned Virtual Processor Subcomponent</em>' containment reference list.
	 * @see org.osate.aadl2.Aadl2Package#getVirtualProcessorImplementation_OwnedVirtualProcessorSubcomponent()
	 * @model containment="true" ordered="false"
	 * @generated
	 */
	EList<VirtualProcessorSubcomponent> getOwnedVirtualProcessorSubcomponents();

	/**
	 * Creates a new {@link org.osate.aadl2.VirtualProcessorSubcomponent} and appends it to the '<em><b>Owned Virtual Processor Subcomponent</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return The new {@link org.osate.aadl2.VirtualProcessorSubcomponent}.
	 * @see #getOwnedVirtualProcessorSubcomponents()
	 * @generated
	 */
	VirtualProcessorSubcomponent createOwnedVirtualProcessorSubcomponent();

	/**
	 * Returns the value of the '<em><b>Type</b></em>' reference.
	 * Not generated because thae code generator doesn't know about covariant return types.
	 */
	VirtualProcessorType getType();

} // VirtualProcessorImplementation
