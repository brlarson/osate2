/**
 * Copyright 2015 Carnegie Mellon University. All Rights Reserved.
 * 
 * NO WARRANTY. THIS CARNEGIE MELLON UNIVERSITY AND SOFTWARE ENGINEERING INSTITUTE
 * MATERIAL IS FURNISHED ON AN "AS-IS" BASIS. CARNEGIE MELLON UNIVERSITY MAKES NO
 * WARRANTIES OF ANY KIND, EITHER EXPRESSED OR IMPLIED, AS TO ANY MATTER INCLUDING,
 * BUT NOT LIMITED TO, WARRANTY OF FITNESS FOR PURPOSE OR MERCHANTABILITY,
 * EXCLUSIVITY, OR RESULTS OBTAINED FROM USE OF THE MATERIAL. CARNEGIE MELLON
 * UNIVERSITY DOES NOT MAKE ANY WARRANTY OF ANY KIND WITH RESPECT TO FREEDOM FROM
 * PATENT, TRADEMARK, OR COPYRIGHT INFRINGEMENT.
 * 
 * Released under the Eclipse Public License (http://www.eclipse.org/org/documents/epl-v10.php)
 * 
 * See COPYRIGHT file for full details.
 */
package org.osate.verify.verify;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>JUnit4 Method</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.osate.verify.verify.JUnit4Method#getClassPath <em>Class Path</em>}</li>
 * </ul>
 *
 * @see org.osate.verify.verify.VerifyPackage#getJUnit4Method()
 * @model
 * @generated
 */
public interface JUnit4Method extends MethodKind
{
  /**
   * Returns the value of the '<em><b>Class Path</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Class Path</em>' attribute.
   * @see #setClassPath(String)
   * @see org.osate.verify.verify.VerifyPackage#getJUnit4Method_ClassPath()
   * @model
   * @generated
   */
  String getClassPath();

  /**
   * Sets the value of the '{@link org.osate.verify.verify.JUnit4Method#getClassPath <em>Class Path</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Class Path</em>' attribute.
   * @see #getClassPath()
   * @generated
   */
  void setClassPath(String value);

} // JUnit4Method
