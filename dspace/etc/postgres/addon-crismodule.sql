reate table RPSubscription (id int4 not null, epersonID int4 not null, rp_id int4, primary key (id));
create table StatSubscription (id int4 not null, epersonID int4 not null, freq int4 not null, handle varchar(255), rp_id int4, primary key (id));
create table jdyna_containables (DTYPE varchar(31) not null, id int4 not null, propertiesdefinition_fk int4, propertiesdefinitiongrant_fk int4, propertiesdefinitionrpnestedobject_fk int4, propertiesdefinitionprojectnestedobject_fk int4, typerpnestedobject_fk int4, typeprojectnestedobject_fk int4, propertiesdefinitionnestedobject_fk int4, primary key (id));
create table jdyna_values (DTYPE varchar(31) not null, id int4 not null, sortValue varchar(255), dateValue timestamp, testoValue text, linkdescription varchar(255), linkvalue text, fileextension varchar(255), filefolder varchar(255), filemime varchar(255), filevalue text, primary key (id));
create table RPSubscription (id int4 not null, epersonID int4 not null, rp_id int4, primary key (id));
create table StatSubscription (id int4 not null, epersonID int4 not null, freq int4 not null, handle varchar(255), rp_id int4, primary key (id));
create table jdyna_containables (DTYPE varchar(31) not null, id int4 not null, propertiesdefinition_fk int4, propertiesdefinitiongrant_fk int4, primary key (id));
create table jdyna_values (DTYPE varchar(31) not null, id int4 not null, sortValue varchar(255), dateValue timestamp, testoValue text, linkdescription varchar(255), linkvalue text, fileextension varchar(255), filefolder varchar(255), filemime varchar(255), filevalue text, real bytea, primary key (id));
>>>>>>> c815597... sql to update database for cris compliant
create table jdyna_widget_date (id int4 not null, maxYear int4, minYear int4, time bool not null, primary key (id));
create table jdyna_widget_link (id int4 not null, labelHeaderLabel varchar(255), labelHeaderURL varchar(255), size int4 not null, primary key (id));
create table jdyna_widget_text (id int4 not null, collisioni bool, col int4 not null, row int4 not null, htmlToolbar varchar(255), multilinea bool not null, regex varchar(255), primary key (id));
create table model_criteriaws (id int4 not null, criteria varchar(255), enabled bool not null, filter varchar(255), primary key (id));
create table model_grant_investigator (model_researcher_grant_id int4 not null, extInvestigator varchar(255), intInvestigator_id int4);
create table model_grant_jdyna_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
<<<<<<< HEAD
create table model_grant_jdyna_propertiesdefinition (id int4 not null, accessLevel int4, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, topLevel bool not null, rendering_id int4 unique, primary key (id));
=======
create table model_grant_jdyna_propertiesdefinition (id int4 not null, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, topLevel bool not null, rendering_id int4 unique, accessLevel int4, primary key (id));
create table model_grant_jdyna_widgetcombo (id int4 not null, primary key (id));
create table model_grant_jdyna_widgetcombo2subtipprop (model_grant_jdyna_widgetcombo_id int4 not null, sottoTipologie_id int4 not null, unique (sottoTipologie_id));
>>>>>>> c815597... sql to update database for cris compliant
create table model_grant_jdyna_widgetfile (id int4 not null, fileDescription text, labelAnchor varchar(255), showPreview bool not null, size int4 not null, primary key (id));
create table model_jdyna_box (id int4 not null, collapsed bool not null, priority int4 not null, shortName varchar(255) unique, title varchar(255), unrelevant bool not null, visibility int4, primary key (id));
create table model_jdyna_box2containable (model_jdyna_box_id int4 not null, mask_id int4 not null);
create table model_jdyna_box_grant (id int4 not null, collapsed bool not null, priority int4 not null, shortName varchar(255) unique, title varchar(255), unrelevant bool not null, visibility int4, primary key (id));
create table model_jdyna_boxgrant2containablegrant (model_jdyna_box_grant_id int4 not null, mask_id int4 not null);
create table model_jdyna_edittab (id int4 not null, ext varchar(255), mandatory bool not null, mime varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), visibility int4, displayTab_id int4, primary key (id));
create table model_jdyna_edittab2box (model_jdyna_edittab_id int4 not null, mask_id int4 not null);
create table model_jdyna_edittabgrant (id int4 not null, ext varchar(255), mandatory bool not null, mime varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), visibility int4, displayTab_id int4, primary key (id));
create table model_jdyna_edittabgrant2boxgrant (model_jdyna_edittabgrant_id int4 not null, mask_id int4 not null);
<<<<<<< HEAD
create table model_jdyna_nestedobject (id int4 not null, timestampCreated timestamp, timestampLastModified timestamp, uuid varchar(255) not null unique, typo_id int4, primary key (id));
create table model_jdyna_nestedobject_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
create table model_jdyna_nestedobject_propertiesdefinition (id int4 not null, accessLevel int4, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, topLevel bool not null, rendering_id int4 unique, primary key (id));
create table model_jdyna_nestedobject_typo (id int4 not null, descrizione varchar(255), nome varchar(255), accessLevel int4, help text, mandatory bool not null, priority int4 not null, repeatable bool not null, primary key (id));
create table model_jdyna_nestedobject_typo2mask (model_jdyna_nestedobject_typo_id int4 not null, mask_id int4 not null);
=======
>>>>>>> c815597... sql to update database for cris compliant
create table model_jdyna_tab (id int4 not null, ext varchar(255), mandatory bool not null, mime varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), visibility int4, primary key (id));
create table model_jdyna_tab2box (model_jdyna_tab_id int4 not null, mask_id int4 not null);
create table model_jdyna_tab_grant (id int4 not null, ext varchar(255), mandatory bool not null, mime varchar(255), priority int4 not null, shortName varchar(255) unique, title varchar(255), visibility int4, primary key (id));
create table model_jdyna_tabgrant2boxgrant (model_jdyna_tab_grant_id int4 not null, mask_id int4 not null);
<<<<<<< HEAD
create table model_project_jdyna_nestedobject (id int4 not null, timestampCreated timestamp, timestampLastModified timestamp, uuid varchar(255) not null unique, parent_id int4, typo_id int4, primary key (id));
create table model_project_jdyna_nestedobject_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
create table model_project_jdyna_nestedobject_propertiesdefinition (id int4 not null, accessLevel int4, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, topLevel bool not null, rendering_id int4 unique, primary key (id));
create table model_project_jdyna_nestedobject_typo (id int4 not null, descrizione varchar(255), nome varchar(255), accessLevel int4, help text, mandatory bool not null, priority int4 not null, repeatable bool not null, primary key (id));
create table model_project_jdyna_nestedobject_typo2mask (model_project_jdyna_nestedobject_typo_id int4 not null, mask_id int4 not null);
=======
>>>>>>> c815597... sql to update database for cris compliant
create table model_researcher_grant (id int4 not null, extInvestigator varchar(255), rgCode varchar(255), status bool, timestampCreated timestamp, timestampLastModified timestamp, uuid varchar(255) not null unique, intInvestigator_id int4, primary key (id));
create table model_researcher_page (id int4 not null, academicName_value text, academicName_visibility int4, address_value text, address_visibility int4, authorIdLinkScopus_value text, authorIdLinkScopus_visibility int4, authorIdScopus_value text, authorIdScopus_visibility int4, bio_value text, bio_visibility int4, chineseName_value text, chineseName_visibility int4, citationCountISI_value text, citationCountISI_visibility int4, citationCountScopus_value text, citationCountScopus_visibility int4, citationLinkISI_value text, citationLinkISI_visibility int4, citationLinkScopus_value text, citationLinkScopus_visibility int4, coAuthorsISI_value text, coAuthorsISI_visibility int4, coAuthorsLinkScopus_value text, coAuthorsLinkScopus_visibility int4, coAuthorsScopus_value text, coAuthorsScopus_visibility int4, cv_url text, cv_type text, cv_ext text, cv_visibility int4, dept_value text, dept_visibility int4, email_value text, email_visibility int4, fullName varchar(255) not null, hindexISI_value text, hindexISI_visibility int4, hindexScopus_value text, hindexScopus_visibility int4, honorific_value text, honorific_visibility int4, namesTimestampLastModified timestamp, officeTel_value text, officeTel_visibility int4, paperCountISI_value text, paperCountISI_visibility int4, paperCountScopus_value text, paperCountScopus_visibility int4, paperLinkISI_value text, paperLinkISI_visibility int4, paperLinkScopus_value text, paperLinkScopus_visibility int4, pict_type text, pict_ext text, pict_visibility int4, ridISI_value text, ridISI_visibility int4, ridLinkISI_value text, ridLinkISI_visibility int4, staffNo varchar(255) not null unique, status bool, timestampCreated timestamp, timestampLastModified timestamp, personal_value text, personal_visibility int4, urlPict text, uuid varchar(255) not null unique, dynamicField_id int4, primary key (id));
create table model_researcher_page_interests (model_researcher_page_id int4 not null, value text, visibility int4);
create table model_researcher_page_media (model_researcher_page_id int4 not null, value text, visibility int4);
create table model_researcher_page_rejectItems (model_researcher_page_id int4 not null, element int4);
create table model_researcher_page_spokenLanguagesEN (model_researcher_page_id int4 not null, value text, visibility int4);
create table model_researcher_page_spokenLanguagesZH (model_researcher_page_id int4 not null, value text, visibility int4);
create table model_researcher_page_title (model_researcher_page_id int4 not null, value text, visibility int4);
create table model_researcher_page_variants (model_researcher_page_id int4 not null, value text, visibility int4);
create table model_researcher_page_writtenLanguagesEN (model_researcher_page_id int4 not null, value text, visibility int4);
create table model_researcher_page_writtenLanguagesZH (model_researcher_page_id int4 not null, value text, visibility int4);
create table model_rp_jdyna (id int4 not null, primary key (id));
<<<<<<< HEAD
create table model_rp_jdyna_nestedobject (id int4 not null, timestampCreated timestamp, timestampLastModified timestamp, uuid varchar(255) not null unique, parent_id int4, typo_id int4, primary key (id));
create table model_rp_jdyna_nestedobject_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
create table model_rp_jdyna_nestedobject_propertiesdefinition (id int4 not null, accessLevel int4, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, topLevel bool not null, rendering_id int4 unique, primary key (id));
create table model_rp_jdyna_nestedobject_typo (id int4 not null, descrizione varchar(255), nome varchar(255), accessLevel int4, help text, mandatory bool not null, priority int4 not null, repeatable bool not null, primary key (id));
create table model_rp_jdyna_nestedobject_typo2mask (model_rp_jdyna_nestedobject_typo_id int4 not null, mask_id int4 not null);
create table model_rp_jdyna_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
create table model_rp_jdyna_propertiesdefinition (id int4 not null, accessLevel int4, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, topLevel bool not null, rendering_id int4 unique, primary key (id));
=======
create table model_rp_jdyna_prop (id int4 not null, position int4 not null, visibility int4, value_id int4 unique, parent_id int4, typo_id int4, primary key (id), unique (position, typo_id, parent_id));
create table model_rp_jdyna_propertiesdefinition (id int4 not null, advancedSearch bool not null, fieldmin_col int4, fieldmin_row int4, help text, label varchar(255), labelMinSize int4 not null, mandatory bool not null, newline bool not null, onCreation bool, priority int4 not null, repeatable bool not null, shortName varchar(255) unique, showInList bool not null, simpleSearch bool not null, topLevel bool not null, rendering_id int4 unique, accessLevel int4, primary key (id));
create table model_rp_jdyna_widgetcombo (id int4 not null, primary key (id));
create table model_rp_jdyna_widgetcombo2subtipprop (model_rp_jdyna_widgetcombo_id int4 not null, sottoTipologie_id int4 not null, unique (sottoTipologie_id));
>>>>>>> c815597... sql to update database for cris compliant
create table model_rp_jdyna_widgetfile (id int4 not null, fileDescription text, labelAnchor varchar(255), showPreview bool not null, size int4 not null, primary key (id));
create table model_userws (id int4 not null, enabled bool not null, password varchar(255), username varchar(255), showHiddenMetadata bool not null, fromIP varchar(255), toIP varchar(255), token varchar(255), timestampCreated timestamp, timestampLastModified timestamp, type varchar(255), primary key (id));
create table model_userws_model_criteriaws (model_userws_id int4 not null, criteria_id int4 not null, unique (criteria_id));
alter table RPSubscription add constraint FK1E4A7BED3064CE foreign key (rp_id) references model_researcher_page;
alter table StatSubscription add constraint FKA04119B1ED3064CE foreign key (rp_id) references model_researcher_page;
alter table jdyna_containables add constraint FKB80C84B2CE9E17A foreign key (propertiesdefinition_fk) references model_rp_jdyna_propertiesdefinition;
<<<<<<< HEAD
alter table jdyna_containables add constraint FKB80C84B2302DAC43 foreign key (propertiesdefinitionnestedobject_fk) references model_jdyna_nestedobject_propertiesdefinition;
alter table jdyna_containables add constraint FKB80C84B2B5B164DC foreign key (typerpnestedobject_fk) references model_rp_jdyna_nestedobject_typo;
alter table jdyna_containables add constraint FKB80C84B2F4B61038 foreign key (propertiesdefinitiongrant_fk) references model_grant_jdyna_propertiesdefinition;
alter table jdyna_containables add constraint FKB80C84B2CA81AFB9 foreign key (propertiesdefinitionprojectnestedobject_fk) references model_project_jdyna_nestedobject_propertiesdefinition;
alter table jdyna_containables add constraint FKB80C84B2A9939760 foreign key (typeprojectnestedobject_fk) references model_project_jdyna_nestedobject_typo;
alter table jdyna_containables add constraint FKB80C84B26B0BEA5D foreign key (propertiesdefinitionrpnestedobject_fk) references model_rp_jdyna_nestedobject_propertiesdefinition;
=======
alter table jdyna_containables add constraint FKB80C84B2F4B61038 foreign key (propertiesdefinitiongrant_fk) references model_grant_jdyna_propertiesdefinition;
>>>>>>> c815597... sql to update database for cris compliant
alter table model_grant_investigator add constraint FK8FBFD2C2BEC07DD8 foreign key (model_researcher_grant_id) references model_researcher_grant;
alter table model_grant_investigator add constraint FK8FBFD2C24E95E7B4 foreign key (intInvestigator_id) references model_researcher_page;
alter table model_grant_jdyna_prop add constraint FK5DD6586973EDB8A0 foreign key (typo_id) references model_grant_jdyna_propertiesdefinition;
alter table model_grant_jdyna_prop add constraint FKC8A841F5E52079D75dd65869 foreign key (value_id) references jdyna_values;
alter table model_grant_jdyna_prop add constraint FK5DD658696AEC32C9 foreign key (parent_id) references model_researcher_grant;
<<<<<<< HEAD
alter table model_jdyna_box2containable add constraint FKD0AF5FA45BA7E0EB foreign key (model_jdyna_box_id) references model_jdyna_box;
alter table model_jdyna_box2containable add constraint FKD0AF5FA46760D09E foreign key (mask_id) references jdyna_containables;
alter table model_jdyna_boxgrant2containablegrant add constraint FK9949552C95630636 foreign key (model_jdyna_box_grant_id) references model_jdyna_box_grant;
alter table model_jdyna_boxgrant2containablegrant add constraint FK9949552C6760D09E foreign key (mask_id) references jdyna_containables;
=======
alter table model_grant_jdyna_widgetcombo2subtipprop add constraint FKF4DA3D6C65234D52 foreign key (model_grant_jdyna_widgetcombo_id) references model_grant_jdyna_widgetcombo;
alter table model_grant_jdyna_widgetcombo2subtipprop add constraint FKF4DA3D6C5CB233CB foreign key (sottoTipologie_id) references model_grant_jdyna_propertiesdefinition;
alter table model_jdyna_box2containable add constraint FKD0AF5FA45BA7E0EB foreign key (model_jdyna_box_id) references model_jdyna_box;
alter table model_jdyna_box2containable add constraint FKD0AF5FA4C20F2E09 foreign key (mask_id) references jdyna_containables;
alter table model_jdyna_boxgrant2containablegrant add constraint FK9949552C95630636 foreign key (model_jdyna_box_grant_id) references model_jdyna_box_grant;
alter table model_jdyna_boxgrant2containablegrant add constraint FK9949552CC20F2E09 foreign key (mask_id) references jdyna_containables;
>>>>>>> c815597... sql to update database for cris compliant
alter table model_jdyna_edittab add constraint FK6CD4C7E87FE0C82A foreign key (displayTab_id) references model_jdyna_tab;
alter table model_jdyna_edittab2box add constraint FKE3F6CC41A26AFB4B foreign key (model_jdyna_edittab_id) references model_jdyna_edittab;
alter table model_jdyna_edittab2box add constraint FKE3F6CC4154E7AA67 foreign key (mask_id) references model_jdyna_box;
alter table model_jdyna_edittabgrant add constraint FK9DD4AA34186781DE foreign key (displayTab_id) references model_jdyna_tab_grant;
alter table model_jdyna_edittabgrant2boxgrant add constraint FK90C068AF78A9B6EF foreign key (mask_id) references model_jdyna_box_grant;
alter table model_jdyna_edittabgrant2boxgrant add constraint FK90C068AFD2F41F47 foreign key (model_jdyna_edittabgrant_id) references model_jdyna_edittabgrant;
<<<<<<< HEAD
alter table model_jdyna_nestedobject add constraint FKA13C9E7947739B84 foreign key (typo_id) references model_jdyna_nestedobject_typo;
alter table model_jdyna_nestedobject_prop add constraint FK35DFE16999D0511 foreign key (typo_id) references model_jdyna_nestedobject_propertiesdefinition;
alter table model_jdyna_nestedobject_prop add constraint FKC8A841F5E52079D735dfe169 foreign key (value_id) references jdyna_values;
alter table model_jdyna_nestedobject_prop add constraint FK35DFE1699B08C304 foreign key (parent_id) references model_jdyna_nestedobject;
alter table model_jdyna_nestedobject_typo2mask add constraint FKA1708F14CA1A57BE foreign key (model_jdyna_nestedobject_typo_id) references model_jdyna_nestedobject_typo;
alter table model_jdyna_nestedobject_typo2mask add constraint FKA1708F146E858C69 foreign key (mask_id) references model_jdyna_nestedobject_propertiesdefinition;
=======
>>>>>>> c815597... sql to update database for cris compliant
alter table model_jdyna_tab2box add constraint FK80B2D00B54E7AA67 foreign key (mask_id) references model_jdyna_box;
alter table model_jdyna_tab2box add constraint FK80B2D00BB39D6AB foreign key (model_jdyna_tab_id) references model_jdyna_tab;
alter table model_jdyna_tabgrant2boxgrant add constraint FK9D09B7F978A9B6EF foreign key (mask_id) references model_jdyna_box_grant;
alter table model_jdyna_tabgrant2boxgrant add constraint FK9D09B7F937DD8A2 foreign key (model_jdyna_tab_grant_id) references model_jdyna_tab_grant;
<<<<<<< HEAD
alter table model_project_jdyna_nestedobject add constraint FKF7F7735F6F3DA527 foreign key (typo_id) references model_project_jdyna_nestedobject_typo;
alter table model_project_jdyna_nestedobject add constraint FKF7F7735F6AEC32C9 foreign key (parent_id) references model_researcher_grant;
alter table model_project_jdyna_nestedobject_prop add constraint FK4F442C4354CD9EF4 foreign key (typo_id) references model_project_jdyna_nestedobject_propertiesdefinition;
alter table model_project_jdyna_nestedobject_prop add constraint FKC8A841F5E52079D74f442c43 foreign key (value_id) references jdyna_values;
alter table model_project_jdyna_nestedobject_prop add constraint FK4F442C43FE471627 foreign key (parent_id) references model_project_jdyna_nestedobject;
alter table model_project_jdyna_nestedobject_typo2mask add constraint FK812AFC7AB9B6264C foreign key (mask_id) references model_project_jdyna_nestedobject_propertiesdefinition;
alter table model_project_jdyna_nestedobject_typo2mask add constraint FK812AFC7AD006F047 foreign key (model_project_jdyna_nestedobject_typo_id) references model_project_jdyna_nestedobject_typo;
=======
>>>>>>> c815597... sql to update database for cris compliant
alter table model_researcher_grant add constraint FKCED62FFB4E95E7B4 foreign key (intInvestigator_id) references model_researcher_page;
alter table model_researcher_page add constraint FK1F761BD0A04339DD foreign key (dynamicField_id) references model_rp_jdyna;
alter table model_researcher_page_interests add constraint FKA1D7D0DA182595FC foreign key (model_researcher_page_id) references model_researcher_page;
alter table model_researcher_page_media add constraint FK1A91D2B5182595FC foreign key (model_researcher_page_id) references model_researcher_page;
alter table model_researcher_page_rejectItems add constraint FK63BB3172182595FC foreign key (model_researcher_page_id) references model_researcher_page;
alter table model_researcher_page_spokenLanguagesEN add constraint FK42286293182595FC foreign key (model_researcher_page_id) references model_researcher_page;
alter table model_researcher_page_spokenLanguagesZH add constraint FK42286518182595FC foreign key (model_researcher_page_id) references model_researcher_page;
alter table model_researcher_page_title add constraint FK1AF68529182595FC foreign key (model_researcher_page_id) references model_researcher_page;
alter table model_researcher_page_variants add constraint FKDACE601D182595FC foreign key (model_researcher_page_id) references model_researcher_page;
alter table model_researcher_page_writtenLanguagesEN add constraint FK4DAD813C182595FC foreign key (model_researcher_page_id) references model_researcher_page;
alter table model_researcher_page_writtenLanguagesZH add constraint FK4DAD83C1182595FC foreign key (model_researcher_page_id) references model_researcher_page;
<<<<<<< HEAD
alter table model_rp_jdyna_nestedobject add constraint FK5BE7C8AE23C001C foreign key (typo_id) references model_rp_jdyna_nestedobject_typo;
alter table model_rp_jdyna_nestedobject add constraint FK5BE7C8AE22ECC2EE foreign key (parent_id) references model_rp_jdyna;
alter table model_rp_jdyna_nestedobject_prop add constraint FK740FD054A8028BA9 foreign key (typo_id) references model_rp_jdyna_nestedobject_propertiesdefinition;
alter table model_rp_jdyna_nestedobject_prop add constraint FKC8A841F5E52079D7740fd054 foreign key (value_id) references jdyna_values;
alter table model_rp_jdyna_nestedobject_prop add constraint FK740FD054842B339C foreign key (parent_id) references model_rp_jdyna_nestedobject;
alter table model_rp_jdyna_nestedobject_typo2mask add constraint FK9B083B0950EEE18B foreign key (model_rp_jdyna_nestedobject_typo_id) references model_rp_jdyna_nestedobject_typo;
alter table model_rp_jdyna_nestedobject_typo2mask add constraint FK9B083B09CEB1301 foreign key (mask_id) references model_rp_jdyna_nestedobject_propertiesdefinition;
alter table model_rp_jdyna_prop add constraint FK6CF7751B4A70B892 foreign key (typo_id) references model_rp_jdyna_propertiesdefinition;
alter table model_rp_jdyna_prop add constraint FKC8A841F5E52079D76cf7751b foreign key (value_id) references jdyna_values;
alter table model_rp_jdyna_prop add constraint FK6CF7751B22ECC2EE foreign key (parent_id) references model_rp_jdyna;
=======
alter table model_rp_jdyna_prop add constraint FK6CF7751B4A70B892 foreign key (typo_id) references model_rp_jdyna_propertiesdefinition;
alter table model_rp_jdyna_prop add constraint FKC8A841F5E52079D76cf7751b foreign key (value_id) references jdyna_values;
alter table model_rp_jdyna_prop add constraint FK6CF7751B22ECC2EE foreign key (parent_id) references model_rp_jdyna;
alter table model_rp_jdyna_widgetcombo2subtipprop add constraint FK80E4519E2F4B53A5 foreign key (model_rp_jdyna_widgetcombo_id) references model_rp_jdyna_widgetcombo;
alter table model_rp_jdyna_widgetcombo2subtipprop add constraint FK80E4519E333533BD foreign key (sottoTipologie_id) references model_rp_jdyna_propertiesdefinition;
>>>>>>> c815597... sql to update database for cris compliant
alter table model_userws_model_criteriaws add constraint FK4FB377933DA55D9F foreign key (model_userws_id) references model_userws;
alter table model_userws_model_criteriaws add constraint FK4FB37793D6FEB7CD foreign key (criteria_id) references model_criteriaws;
create sequence BOX_SEQ;
create sequence CONTAINABLE_SEQ;
create sequence CRITERIAWS_SEQ;
<<<<<<< HEAD
create sequence JDYNA_NESTEDOBJECT_SEQ;
create sequence JDYNA_TYPONESTEDOBJECT_SEQ;
=======
>>>>>>> c815597... sql to update database for cris compliant
create sequence PROPERTIESDEFINITION_SEQ;
create sequence PROPERTY_SEQ;
create sequence RESEARCHERGRANT_SEQ;
create sequence RESEARCHERPAGE_SEQ;
create sequence RPDYNAADDITIONAL_SEQ;
create sequence STATSUBSCRIPTION_SEQ;
create sequence SUBSCRIPTIONRP_SEQ;
create sequence TAB_SEQ;
create sequence USERWS_SEQ;
create sequence VALUES_SEQ;
<<<<<<< HEAD
create sequence WIDGET_SEQ;
=======
create sequence WIDGET_SEQ;
>>>>>>> c815597... sql to update database for cris compliant
