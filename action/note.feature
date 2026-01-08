Feature: Read note XML

Scenario: Print to, from and body
  * print 'To:', noteXml.note.to
  * print 'From:', noteXml.note.from
  * print 'Body:', noteXml.note.body