/**
 */
package org.osate.expr.expr;

import org.eclipse.emf.ecore.EObject;

import org.osate.aadl2.NamedElement;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Model</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.osate.expr.expr.ExprModel#getAnnex <em>Annex</em>}</li>
 * </ul>
 *
 * @see org.osate.expr.expr.ExprPackage#getExprModel()
 * @model
 * @generated
 */
public interface ExprModel extends EObject
{
  /**
   * Returns the value of the '<em><b>Annex</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Annex</em>' containment reference.
   * @see #setAnnex(NamedElement)
   * @see org.osate.expr.expr.ExprPackage#getExprModel_Annex()
   * @model containment="true"
   * @generated
   */
  NamedElement getAnnex();

  /**
   * Sets the value of the '{@link org.osate.expr.expr.ExprModel#getAnnex <em>Annex</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Annex</em>' containment reference.
   * @see #getAnnex()
   * @generated
   */
  void setAnnex(NamedElement value);

} // ExprModel