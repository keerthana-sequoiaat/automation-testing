Feature:Configuration Test

Background:
    * def updateAction = '../action/update-config.feature'
    * configure afterScenario = 
    """
    function() {
      karate.log('*** REVERTING XML TO ORIGINAL VALUES ***');
      karate.call(updateAction, { key: 'WaitTimeForPreparation', val: '4000' });
      karate.call(updateAction, { key: 'SimulationMode', val: 'false' });
      karate.call(updateAction, { key: 'StopAppOnExit', val: 'false' });
    }
    """

Scenario: Modify XML and Execute Application
    * call read(updateAction) { key: 'WaitTimeForPreparation', val: '8000' }
    * call read(updateAction) { key: 'SimulationMode', val: 'true' }
    * call read(updateAction) { key: 'StopAppOnExit', val: 'true' }
