/**
 * Copyright (c) 2004-2020 Carnegie Mellon University and others. (see Contributors file).
 * All Rights Reserved.
 *
 * NO WARRANTY. ALL MATERIAL IS FURNISHED ON AN "AS-IS" BASIS. CARNEGIE MELLON UNIVERSITY MAKES NO WARRANTIES OF ANY
 * KIND, EITHER EXPRESSED OR IMPLIED, AS TO ANY MATTER INCLUDING, BUT NOT LIMITED TO, WARRANTY OF FITNESS FOR PURPOSE
 * OR MERCHANTABILITY, EXCLUSIVITY, OR RESULTS OBTAINED FROM USE OF THE MATERIAL. CARNEGIE MELLON UNIVERSITY DOES NOT
 * MAKE ANY WARRANTY OF ANY KIND WITH RESPECT TO FREEDOM FROM PATENT, TRADEMARK, OR COPYRIGHT INFRINGEMENT.
 *
 * This program and the accompanying materials are made available under the terms of the Eclipse Public License 2.0
 * which is available at https://www.eclipse.org/legal/epl-2.0/
 * SPDX-License-Identifier: EPL-2.0
 *
 * Created, in part, with funding and support from the United States Government. (see Acknowledgments file).
 *
 * This program includes and/or can make use of certain third party source code, object code, documentation and other
 * files ("Third Party Software"). The Third Party Software that is used by this program is dependent upon your system
 * configuration. By using this program, You agree to comply with any and all relevant Third Party Software terms and
 * conditions contained in any such Third Party Software or separate license file distributed with such Third Party
 * Software. The parties who own the Third Party Software ("Third Party Licensors") are intended third party benefici-
 * aries to this license with respect to the terms applicable to their Third Party Software. Third Party Software li-
 * censes only apply to the Third Party Software and not any other portion of this program or this program as a whole.
 */
package org.osate.ge.internal.ui.properties;

import java.util.Objects;
import java.util.function.Function;

import org.eclipse.jface.viewers.IFilter;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.views.properties.tabbed.AbstractPropertySection;
import org.eclipse.ui.views.properties.tabbed.ITabbedPropertyConstants;
import org.eclipse.ui.views.properties.tabbed.TabbedPropertySheetPage;
import org.eclipse.ui.views.properties.tabbed.TabbedPropertySheetWidgetFactory;
import org.osate.aadl2.Classifier;
import org.osate.ge.ui.properties.PropertySectionUtil;

/**
 * Property section for editing prototypes.
 *
 */
public class PrototypesPropertySection extends AbstractPropertySection {
	public static class Filter implements IFilter {
		@Override
		public boolean select(final Object toTest) {
			return PropertySectionUtil.isBoCompatible(toTest, bo -> bo instanceof Classifier);
		}
	}

	@Override
	public void createControls(final Composite parent, final TabbedPropertySheetPage aTabbedPropertySheetPage) {
		super.createControls(parent, aTabbedPropertySheetPage);
		final FormBuilder fb = new FormBuilder(parent, getWidgetFactory());
		fb.createSimple("Test 1", (p) -> getWidgetFactory().createLabel(p, "TODO"));
		fb.createSimple("Test 2", (p) -> getWidgetFactory().createLabel(p, "TODO"));
	}

	static class FormBuilder {
		private final Composite composite;
		private final TabbedPropertySheetWidgetFactory widgetFactory;
		private Control lastContent;

		public FormBuilder(final Composite parent, final TabbedPropertySheetWidgetFactory widgetFactory) {
			this.widgetFactory = Objects.requireNonNull(widgetFactory, "widgetFactory must not be null");
			this.composite = widgetFactory.createFlatFormComposite(parent);
		}

		// TODO: REname and share
		private <T extends Control> T createSimple(final String labelTxt,
				Function<Composite, T> contentSupplier) {
			FormData data;

			final T content = contentSupplier.apply(composite);

			data = new FormData();
			data.left = new FormAttachment(0, STANDARD_LABEL_WIDTH);
			data.right = new FormAttachment(100, 0);
			data.top = lastContent == null ? new FormAttachment(0, ITabbedPropertyConstants.VSPACE)
					: new FormAttachment(lastContent);
			content.setLayoutData(data);

			final CLabel label = widgetFactory.createCLabel(composite, labelTxt);
			data = new FormData();
			data.left = new FormAttachment(0, 0);
			data.right = new FormAttachment(content, -ITabbedPropertyConstants.HSPACE);
			data.top = new FormAttachment(content, 0, SWT.CENTER);
			label.setLayoutData(data);

			lastContent = content;

			return content;

		}

	}
}
