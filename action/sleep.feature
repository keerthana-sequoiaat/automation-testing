Feature: Sleep utility

Scenario: Sleep for 1 minute
    * def sleep =
    """
    function() {
        java.lang.Thread.sleep(60000)
    }
    """
