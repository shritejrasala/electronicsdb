sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pscore/test/integration/FirstJourney',
		'pscore/test/integration/pages/StatesList',
		'pscore/test/integration/pages/StatesObjectPage'
    ],
    function(JourneyRunner, opaJourney, StatesList, StatesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pscore') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStatesList: StatesList,
					onTheStatesObjectPage: StatesObjectPage
                }
            },
            opaJourney.run
        );
    }
);