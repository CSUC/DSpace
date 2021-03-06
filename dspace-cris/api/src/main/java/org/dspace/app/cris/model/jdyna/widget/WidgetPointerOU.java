/**
 * The contents of this file are subject to the license and copyright
 * detailed in the LICENSE and NOTICE files at the root of the source
 * tree and available online at
 *
 * https://github.com/CILEA/dspace-cris/wiki/License
 */
package org.dspace.app.cris.model.jdyna.widget;

import it.cilea.osd.jdyna.widget.WidgetPointer;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.dspace.app.cris.model.jdyna.value.OUPointer;

@Entity
@Table(name = "cris_ou_wpointer")
public class WidgetPointerOU extends WidgetPointer<OUPointer>
{

}
