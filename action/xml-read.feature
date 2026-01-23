Feature: Read  XML Data AND Print Specific Fields
Scenario: Print authors, books and publisher

    * url 'https://sample-files.com/downloads/data/xml/'
    * path 'complex-nested.xml'
    * method get
    * status 200

    * def xmlFile = response
    * def books = get xmlFile //book
    * print 'TOTAL BOOKS:', karate.sizeOf(books)

    * def bookMapper =
    """
    function(book, i) {

        var title = karate.xmlPath(book, '/book/title') || 'No Title';
        var first = karate.xmlPath(book, '/book/author/name/first') || 'Unknown';
        var last  = karate.xmlPath(book, '/book/author/name/last') || 'Author';
        var publisher = karate.xmlPath(book, '/book/publisher/name') || 'Unknown Publisher';

        return {
            index: i + 1,
            title: title,
            author: first + ' ' + last,
            publisher: publisher
        };
    }
    """

    * def result = karate.map(books, bookMapper)

    * print result
