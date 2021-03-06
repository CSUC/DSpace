/**
 * The contents of this file are subject to the license and copyright
 * detailed in the LICENSE and NOTICE files at the root of the source
 * tree and available online at
 *
 * https://github.com/CILEA/dspace-cris/wiki/License
 */
package org.dspace.app.webui.cris.util;


import java.util.List;

import it.cilea.osd.jdyna.model.Property;
import it.cilea.osd.jdyna.value.EmbeddedLinkValue;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;

import org.dspace.app.cris.model.ACrisObject;
import org.dspace.app.cris.model.jdyna.RPProperty;
import org.dspace.app.cris.util.ResearcherPageUtils;
import org.dspace.app.webui.util.ADiscoveryDisplayStrategy;
import org.dspace.app.webui.util.IDisplayMetadataValueStrategy;
import org.dspace.browse.BrowseDSpaceObject;
import org.dspace.browse.BrowseItem;
import org.dspace.content.Metadatum;
import org.dspace.content.Item;
import org.dspace.core.Utils;
import org.dspace.discovery.IGlobalSearchResult;

public class CrisLinkDisplayStrategy extends ADiscoveryDisplayStrategy implements IDisplayMetadataValueStrategy
{

    public String getMetadataDisplay(HttpServletRequest hrq, int limit,
            boolean viewFull, String browseType, int colIdx, String field,
            Metadatum[] metadataArray, BrowseItem item,
            boolean disableCrossLinks, boolean emph, PageContext pageContext)
    {
        String metadata = "";
        if (metadataArray.length > 0)
        {
        	String[] splitted = metadataArray[0].value.split("\\|\\|\\|");
		    if (splitted.length > 2)
		    {
		        throw new IllegalArgumentException("Invalid text string for link: "+ metadataArray[0].value);
		    }
		    
		    metadata = (splitted.length == 2?"<a href=\""+splitted[1]+"\">"+splitted[1]+"</a>":splitted[0]);
        }
        return metadata;
    }

    public String getMetadataDisplay(HttpServletRequest hrq, int limit,
            boolean viewFull, String browseType, int colIdx, String field,
            Metadatum[] metadataArray, Item item, boolean disableCrossLinks,
            boolean emph, PageContext pageContext)
    {
        // not used
        return null;
    }

    public String getExtraCssDisplay(HttpServletRequest hrq, int limit,
            boolean b, String browseType, int colIdx, String field,
            Metadatum[] metadataArray, Item item, boolean disableCrossLinks,
            boolean emph, PageContext pageContext) throws JspException
    {
        return null;
    }

    @Override
    public String getExtraCssDisplay(HttpServletRequest hrq, int limit,
            boolean b, String browseType, int colIdx, String field,
            Metadatum[] metadataArray, BrowseItem browseItem,
            boolean disableCrossLinks, boolean emph, PageContext pageContext)
            throws JspException
    {
        return null;
    }
    
	@Override
	public String getMetadataDisplay(HttpServletRequest hrq, int limit, boolean viewFull, String browseType,
			int colIdx, String field, List<String> metadataArray, IGlobalSearchResult item, boolean disableCrossLinks,
			boolean emph, PageContext pageContext) throws JspException {
        String metadata = "";
        if (metadataArray.size() > 0)
        {
        	String[] splitted = metadataArray.get(0).split("\\|\\|\\|");
		    if (splitted.length > 2)
		    {
		        throw new IllegalArgumentException("Invalid text string for link: "+ metadataArray.get(0));
		    }
		    
		    metadata = (splitted.length == 2?"<a href=\""+splitted[1]+"\">"+splitted[1]+"</a>":splitted[0]);
        }
        return metadata;
	}
}
