/**
 * The contents of this file are subject to the license and copyright
 * detailed in the LICENSE and NOTICE files at the root of the source
 * tree and available online at
 *
 * https://github.com/CILEA/dspace-cris/wiki/License
 */
package org.dspace.app.cris.ws.interceptor;

import it.cilea.osd.jdyna.model.IContainable;
import it.cilea.osd.jdyna.model.PropertiesDefinition;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import org.apache.log4j.Logger;
import org.dspace.app.cris.importexport.IBulkChangesService;
import org.dspace.app.cris.importexport.XMLBulkChangesService;
import org.dspace.app.cris.model.CrisConstants;
import org.dspace.app.cris.model.export.ExportConstants;
import org.dspace.app.cris.model.jdyna.OUPropertiesDefinition;
import org.dspace.app.cris.model.jdyna.ProjectPropertiesDefinition;
import org.dspace.app.cris.model.jdyna.RPPropertiesDefinition;
import org.dspace.app.cris.service.ApplicationService;
import org.dspace.app.cris.util.ImportExportUtils;
import org.dspace.app.cris.util.UtilsXSD;
import org.dspace.core.ConfigurationManager;
import org.dspace.utils.DSpace;
import org.springframework.core.io.Resource;
import org.springframework.ws.soap.server.endpoint.interceptor.PayloadValidatingInterceptor;

public class CustomResponsePayloadValidatingInterceptor extends PayloadValidatingInterceptor
{
    /** log4j logger */
    private static Logger log = Logger.getLogger(CustomRequestPayloadValidatingInterceptor.class);
    
    private ApplicationService applicationService;
    
    /**
     * Default absolute path where find the contact data excel file to import
     */
    public static final String PATH_DIR = ConfigurationManager.getProperty(CrisConstants.CFG_MODULE, "webservices.xsd.path");

    @Override
    public void setSchema(Resource schema)
    {
        buildXML("responseresearcherpage.xsd", RPPropertiesDefinition.class, UtilsXSD.RP_DEFAULT_ELEMENT);
        buildXML("responseresearchergrants.xsd", ProjectPropertiesDefinition.class, UtilsXSD.GRANT_DEFAULT_ELEMENT);
        buildXML("responseorgunits.xsd", OUPropertiesDefinition.class, UtilsXSD.OU_DEFAULT_ELEMENT);
        super.setSchema(schema);
    }


	private <T extends PropertiesDefinition> void buildXML(String name,
			Class<T> clazz, String[] elementsRoot)
    {
		String[] namespace = UtilsXSD.getNamespace(clazz);
        File dir = new File(PATH_DIR);
        File filexsd = null;
        String nameXSD = name;
        filexsd = new File(dir, nameXSD);
        if (filexsd.exists())
        {
            filexsd.delete();
        }
        try
        {
            filexsd.createNewFile();
        }
        catch (IOException e)
        {
            log.error(e.getMessage(), e);
         
        }
        FileWriter writer = null;
        try
        {
            writer = new FileWriter(filexsd);
        }
        catch (IOException e)
        {
            log.error(e.getMessage(), e);
         
        }

        List<IContainable> metadataALL = null;
        try
        {
            metadataALL = applicationService
                    .findAllContainables(clazz);
        }
        catch (InstantiationException e)
        {
            log.error(e.getMessage(), e);
         
        }
        catch (IllegalAccessException e)
        {
            log.error(e.getMessage(), e);
         
        }
        try
        {
        	DSpace dspace = new DSpace();
            IBulkChangesService importer = dspace.getServiceManager().getServiceByName(XMLBulkChangesService.SERVICE_NAME, IBulkChangesService.class);
			filexsd = importer.generateTemplate(writer, dir, metadataALL,
					filexsd, elementsRoot,
	        		namespace[0]+":",
	                namespace[1],
	                namespace[1],
	                new String[] {
	                        ExportConstants.NAME_PUBLICID_ATTRIBUTE,
	                        ExportConstants.NAME_BUSINESSID_ATTRIBUTE,
	                        ExportConstants.NAME_ID_ATTRIBUTE,
	                        ExportConstants.NAME_TYPE_ATTRIBUTE },
	                new boolean[] { true, false, false,
	                        true });

        }
        catch (SecurityException e)
        {
            log.error(e.getMessage(), e);
         
        }
        catch (IOException e)
        {
            log.error(e.getMessage(), e);
         
        }
        catch (NoSuchFieldException e)
        {
            log.error(e.getMessage(), e);
        }
        catch (InstantiationException e)
        {
            log.error(e.getMessage(), e);
        }
        catch (IllegalAccessException e)
        {
            log.error(e.getMessage(), e);
        }
    }
    

    public ApplicationService getApplicationService()
    {
        return applicationService;
    }

    public void setApplicationService(ApplicationService applicationService)
    {
        this.applicationService = applicationService;
    }
}
