/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package fr.tpt.aadl.annex.behavior.aadlba.impl;

import fr.tpt.aadl.annex.behavior.aadlba.AadlBaPackage;
import fr.tpt.aadl.annex.behavior.aadlba.BehaviorVariable;
import fr.tpt.aadl.annex.behavior.aadlba.Declarator;
import fr.tpt.aadl.annex.behavior.aadlba.UniqueComponentClassifierReference;

import java.util.Collection;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Behavior Variable</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link fr.tpt.aadl.annex.behavior.aadlba.impl.BehaviorVariableImpl#getLocalVariableDeclarators <em>Local Variable Declarators</em>}</li>
 *   <li>{@link fr.tpt.aadl.annex.behavior.aadlba.impl.BehaviorVariableImpl#getDataUniqueComponentClassifierReference <em>Data Unique Component Classifier Reference</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class BehaviorVariableImpl extends BehaviorElementImpl implements BehaviorVariable {
	/**
	 * The cached value of the '{@link #getLocalVariableDeclarators() <em>Local Variable Declarators</em>}' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getLocalVariableDeclarators()
	 * @generated
	 * @ordered
	 */
	protected EList<Declarator> localVariableDeclarators;

	/**
	 * The cached value of the '{@link #getDataUniqueComponentClassifierReference() <em>Data Unique Component Classifier Reference</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getDataUniqueComponentClassifierReference()
	 * @generated
	 * @ordered
	 */
	protected UniqueComponentClassifierReference dataUniqueComponentClassifierReference;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected BehaviorVariableImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return AadlBaPackage.Literals.BEHAVIOR_VARIABLE;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EList<Declarator> getLocalVariableDeclarators() {
		if (localVariableDeclarators == null) {
			localVariableDeclarators = new EObjectContainmentEList.Unsettable<Declarator>(Declarator.class, this, AadlBaPackage.BEHAVIOR_VARIABLE__LOCAL_VARIABLE_DECLARATORS);
		}
		return localVariableDeclarators;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void unsetLocalVariableDeclarators() {
		if (localVariableDeclarators != null) ((InternalEList.Unsettable<?>)localVariableDeclarators).unset();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean isSetLocalVariableDeclarators() {
		return localVariableDeclarators != null && ((InternalEList.Unsettable<?>)localVariableDeclarators).isSet();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public UniqueComponentClassifierReference getDataUniqueComponentClassifierReference() {
		return dataUniqueComponentClassifierReference;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetDataUniqueComponentClassifierReference(UniqueComponentClassifierReference newDataUniqueComponentClassifierReference, NotificationChain msgs) {
		UniqueComponentClassifierReference oldDataUniqueComponentClassifierReference = dataUniqueComponentClassifierReference;
		dataUniqueComponentClassifierReference = newDataUniqueComponentClassifierReference;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, AadlBaPackage.BEHAVIOR_VARIABLE__DATA_UNIQUE_COMPONENT_CLASSIFIER_REFERENCE, oldDataUniqueComponentClassifierReference, newDataUniqueComponentClassifierReference);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setDataUniqueComponentClassifierReference(UniqueComponentClassifierReference newDataUniqueComponentClassifierReference) {
		if (newDataUniqueComponentClassifierReference != dataUniqueComponentClassifierReference) {
			NotificationChain msgs = null;
			if (dataUniqueComponentClassifierReference != null)
				msgs = ((InternalEObject)dataUniqueComponentClassifierReference).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - AadlBaPackage.BEHAVIOR_VARIABLE__DATA_UNIQUE_COMPONENT_CLASSIFIER_REFERENCE, null, msgs);
			if (newDataUniqueComponentClassifierReference != null)
				msgs = ((InternalEObject)newDataUniqueComponentClassifierReference).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - AadlBaPackage.BEHAVIOR_VARIABLE__DATA_UNIQUE_COMPONENT_CLASSIFIER_REFERENCE, null, msgs);
			msgs = basicSetDataUniqueComponentClassifierReference(newDataUniqueComponentClassifierReference, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, AadlBaPackage.BEHAVIOR_VARIABLE__DATA_UNIQUE_COMPONENT_CLASSIFIER_REFERENCE, newDataUniqueComponentClassifierReference, newDataUniqueComponentClassifierReference));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
		switch (featureID) {
			case AadlBaPackage.BEHAVIOR_VARIABLE__LOCAL_VARIABLE_DECLARATORS:
				return ((InternalEList<?>)getLocalVariableDeclarators()).basicRemove(otherEnd, msgs);
			case AadlBaPackage.BEHAVIOR_VARIABLE__DATA_UNIQUE_COMPONENT_CLASSIFIER_REFERENCE:
				return basicSetDataUniqueComponentClassifierReference(null, msgs);
		}
		return super.eInverseRemove(otherEnd, featureID, msgs);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Object eGet(int featureID, boolean resolve, boolean coreType) {
		switch (featureID) {
			case AadlBaPackage.BEHAVIOR_VARIABLE__LOCAL_VARIABLE_DECLARATORS:
				return getLocalVariableDeclarators();
			case AadlBaPackage.BEHAVIOR_VARIABLE__DATA_UNIQUE_COMPONENT_CLASSIFIER_REFERENCE:
				return getDataUniqueComponentClassifierReference();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@SuppressWarnings("unchecked")
	@Override
	public void eSet(int featureID, Object newValue) {
		switch (featureID) {
			case AadlBaPackage.BEHAVIOR_VARIABLE__LOCAL_VARIABLE_DECLARATORS:
				getLocalVariableDeclarators().clear();
				getLocalVariableDeclarators().addAll((Collection<? extends Declarator>)newValue);
				return;
			case AadlBaPackage.BEHAVIOR_VARIABLE__DATA_UNIQUE_COMPONENT_CLASSIFIER_REFERENCE:
				setDataUniqueComponentClassifierReference((UniqueComponentClassifierReference)newValue);
				return;
		}
		super.eSet(featureID, newValue);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eUnset(int featureID) {
		switch (featureID) {
			case AadlBaPackage.BEHAVIOR_VARIABLE__LOCAL_VARIABLE_DECLARATORS:
				unsetLocalVariableDeclarators();
				return;
			case AadlBaPackage.BEHAVIOR_VARIABLE__DATA_UNIQUE_COMPONENT_CLASSIFIER_REFERENCE:
				setDataUniqueComponentClassifierReference((UniqueComponentClassifierReference)null);
				return;
		}
		super.eUnset(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean eIsSet(int featureID) {
		switch (featureID) {
			case AadlBaPackage.BEHAVIOR_VARIABLE__LOCAL_VARIABLE_DECLARATORS:
				return isSetLocalVariableDeclarators();
			case AadlBaPackage.BEHAVIOR_VARIABLE__DATA_UNIQUE_COMPONENT_CLASSIFIER_REFERENCE:
				return dataUniqueComponentClassifierReference != null;
		}
		return super.eIsSet(featureID);
	}

} //BehaviorVariableImpl
