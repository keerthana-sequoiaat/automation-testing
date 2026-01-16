Feature: Employee CSV Manipulation using Karate

Scenario: Update employee salary and designation
    * def data = read('../inputs/employees.csv')
    
    * eval
    """
    data.forEach(r => {
        if (r.id == '101') {
            r.salary = '32000'
            r.designation = 'Lead Engineer'
        }
    })
    """

    * eval
    """
    var updatedRecord = data.find(function(x) { return x.id == '101'; });
    karate.set('updatedRecord', updatedRecord);
    """

    * print 'Updated Record:', updatedRecord
    
    * karate.write(data, '../inputs/employees.csv')