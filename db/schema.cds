namespace sap.capire;

entity Templates {
    key templateId   : String;
        templateName : String;
        sections     : Composition of many Sections
                           on  $self.templateId      = sections.templateId
                           and sections.subsectionId = '-1';
}

entity Sections {
    key templateId   : String;
    key sectionId    : String;
    key subsectionId : String;
        subsections  : Composition of many Sections
                           on  $self.templateId         =  subsections.templateId
                           and $self.sectionId          =  subsections.sectionId
                           and subsections.subsectionId != '-1';
        template     : Association to Templates
                           on template.templateId = $self.templateId;
}
