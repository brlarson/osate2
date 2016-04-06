/*******************************************************************************
 * Copyright (C) 2016 University of Alabama in Huntsville (UAH)
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * The US Government has unlimited rights in this work in accordance with W31P4Q-10-D-0092 DO 0105.
 *******************************************************************************/
package org.osate.ge.errormodel.pictogramHandlers;

import javax.inject.Named;
import org.eclipse.graphiti.mm.pictograms.ContainerShape;
import org.osate.aadl2.AadlPackage;
import org.osate.ge.PaletteEntry;
import org.osate.ge.PaletteEntryFactory;
import org.osate.ge.di.CanCreateConnection;
import org.osate.ge.di.CanStartConnection;
import org.osate.ge.di.CreateConnectionBusinessObject;
import org.osate.ge.di.GetPaletteEntries;
import org.osate.ge.errormodel.ErrorModelCategories;
import org.osate.ge.di.Names;

public class TestConnectionHandler {
	@GetPaletteEntries
	public PaletteEntry[] getPaletteEntries(final @Named(Names.DIAGRAM_BO) AadlPackage pkg) {
		return new PaletteEntry[] { 
			PaletteEntryFactory.makeCreateConnectionEntry(ErrorModelCategories.ERROR_MODEL, "Connection Test", null, null)
		};
	}
	// TODO
	//@GetCreateConnectionOwner - RENAME - Returns a business object not the owning pictogram element? May not have a pictogram element
	public ContainerShape getCreateConnectionOwner() {
		return null;
	}
	
	@CanStartConnection
	public boolean canStartConnection() {
		// TODO
		return true;
	}	
	
	@CanCreateConnection
	public boolean canCreateConnection() {
		// TODO
		return true;
	}
	
	// TODO: CreateConnectionBusinessObject
	@CreateConnectionBusinessObject
	public Object createConnectionBusinessObject() {
		// TODO
		return null;
	}
}
