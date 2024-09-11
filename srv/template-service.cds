using {sap.capire as core} from '../db/schema';

service TemplateService {
    @odata.draft.enabled
    entity Templates as projection on core.Templates;

    entity Sections  as projection on core.Sections;
}
