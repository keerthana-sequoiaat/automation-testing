Feature: Employee phone number validation

Scenario: Generate phone number and validate employee

    * def generatePhone = read('../resources/phone.js')
    * def phoneNumber = generatePhone()

    * print 'Generated Phone Number:', phoneNumber

    * def employee =
    """
    {
      id: 101,
      name: 'Ravi',
      role: 'QA Engineer',
      phone: phoneNumber
    }
    """

    * if (phoneNumber.startsWith('9')) karate.log('Employee Data:', employee)

    * def status = phoneNumber.startsWith('9') ? 'VALID EMPLOYEE' : 'INVALID EMPLOYEE'
    * print 'Employee Status:', status
