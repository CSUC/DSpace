package org.dspace.app.cris.integration;

import javax.servlet.http.HttpServletRequest;

import org.dspace.app.cris.model.ResearcherPage;
import org.dspace.app.cris.service.ApplicationService;
import org.dspace.authenticate.PostLoggedInAction;
import org.dspace.core.Context;
import org.dspace.eperson.EPerson;

public class ResearcherLoggedInAction implements PostLoggedInAction
{

    private ApplicationService applicationService;

    @Override
    public void loggedIn(Context context, HttpServletRequest request,
            EPerson eperson)
    {
        
        try
        {
            boolean save = false;
            ResearcherPage rp = applicationService.getResearcherPageByEPersonId(eperson.getID());
            if(rp==null) {
				rp = applicationService.getEntityBySourceId("person",
						eperson.getNetid(), ResearcherPage.class);
                if(rp.getEpersonID()!=null) {
                    if (rp.getEpersonID() != eperson.getID())
                    {
                        rp.setEpersonID(eperson.getID());
                        save = true;
                    }
                }
                else {
                    rp.setEpersonID(eperson.getID());
                    save = true;
                }
            }
            if (save)
            {
                applicationService.saveOrUpdate(ResearcherPage.class, rp);
            }
        }
        catch (Exception e)
        {
            throw new RuntimeException(e.getMessage(), e);
        }
        
    }

    public void setApplicationService(ApplicationService applicationService)
    {
        this.applicationService = applicationService;
    }

}