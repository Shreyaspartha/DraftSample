sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'template/test/integration/FirstJourney',
		'template/test/integration/pages/TemplatesList',
		'template/test/integration/pages/TemplatesObjectPage'
    ],
    function(JourneyRunner, opaJourney, TemplatesList, TemplatesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('template') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTemplatesList: TemplatesList,
					onTheTemplatesObjectPage: TemplatesObjectPage
                }
            },
            opaJourney.run
        );
    }
);