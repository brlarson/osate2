/**
 * SWT and JFace based user interface components which are independent of the on the AADL metamodel and the Eclipse workbench.
 *
 * The design of the components in sub-packages loosely follow a Model-View-ViewModel (MVVM) pattern. Models referenced in these packages
 * are view models in the MVVM sense.
 *
 * The following suffixes are used for naming views.
 * - Selector : The view is designed to allow selecting and item(s).
 * - Editor : The view is designed for editing item(s)
 * - Dialog : The view is a dialog. May be combined with other suffix.
 *
 * Unless specifically noted, classes contained in this package or sub-packages are not thread-safe and must be accessed from the
 * UI thread.
 */
package org.osate.ge.swt;
