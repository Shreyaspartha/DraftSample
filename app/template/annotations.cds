using TemplateService as service from '../../srv/template-service';
annotate service.Templates with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'templateId',
                Value : templateId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'templateName',
                Value : templateName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'templateId',
            Value : templateId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'templateName',
            Value : templateName,
        },
    ],
);

