Feature: Note XML Caller

Scenario: Read note xml and call feature
  * def noteXml = read('../inputs/note.xml')
  * call read('../action/note.feature')
