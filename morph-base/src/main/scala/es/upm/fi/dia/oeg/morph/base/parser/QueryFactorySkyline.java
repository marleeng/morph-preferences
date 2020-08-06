package es.upm.fi.dia.oeg.morph.base.parser;

//import es.upm.fi.dia.oeg.morph.base.parser.Parser;
//import es.upm.fi.dia.oeg.morph.base.parser.ParserSPARQL;
import org.apache.jena.query.Syntax;
import org.apache.jena.sparql.syntax.Element;
import org.apache.jena.sparql.syntax.Template;
import org.apache.jena.util.FileManager;
import org.apache.jena.query.QueryFactory;
import org.apache.jena.sparql.lang.ParserARQ ;
import org.apache.jena.sparql.lang.SPARQLParser ;
import org.apache.jena.riot.system.IRIResolver ;
import org.apache.jena.query.Query;

public class QueryFactorySkyline extends QueryFactory{

	// ---- static methods for making a query
	static public QuerySkyline create(String queryString) {
		return create(queryString, Syntax.defaultSyntax);
	}

	static public QuerySkyline create(String queryString, Syntax langURI) {
		return create(queryString, null, langURI);
	}

	static public QuerySkyline create(String queryString, String baseURI) {
		QuerySkyline query = new QuerySkyline();
		parse(query, queryString, baseURI, Syntax.defaultSyntax);
		return query;

	}

	static public QuerySkyline create(String queryString, String baseURI,
			Syntax querySyntax) {
		QuerySkyline query = new QuerySkyline();
		parse(query, queryString, baseURI, querySyntax);
		return query;

	}
	
	static public QuerySkyline create(String queryString, String skylineClause, String baseURI,
			Syntax querySyntax) {
		QuerySkyline skyline = new QuerySkyline();
		Query query = new Query();
		parse(query, queryString, baseURI, querySyntax);
		skyline.setQuery(query);
		return skyline;
	}	
	
	/**
	 * Make a query - no parsing done
	 */
	static public QuerySkyline make() {
		return new QuerySkyline();
	}

	static public QuerySkyline create(QuerySkyline originalQuery) {
		return originalQuery.cloneQuery();
	}

	static public Query parse(Query query, String queryString, String baseURI,
			Syntax syntaxURI) {
	        if ( syntaxURI == null )
	            syntaxURI = query.getSyntax() ;
	        else
	            query.setSyntax(syntaxURI) ;

	        SPARQLParser parser = SPARQLParser.createParser(syntaxURI) ;
	        
	        if ( parser == null )
	            throw new UnsupportedOperationException("Unrecognized syntax for parsing: "+syntaxURI) ;
	        
	        if ( query.getResolver() == null )
	        {
	            IRIResolver resolver = null ;
	            try { 
	                if ( baseURI != null ) { 
	                    // Sort out the baseURI - if that fails, dump in a dummy one and continue.
	                    resolver = IRIResolver.create(baseURI) ; 
	                }
	                else { 
	                    resolver = IRIResolver.create() ;
	                }
	            }
	            catch (Exception ex) {}
	            if ( resolver == null )   
	                resolver = IRIResolver.create("http://localhost/query/defaultBase#") ;
	            query.setResolver(resolver) ;
	            
	        }
	        //System.out.println("Queries"+query.toString()+ "......" +queryString.toString());
	        return parser.parse(query, queryString) ;
	        
	    
	}

	static boolean knownParserSyntax(Syntax syntaxURI) {
		SPARQLParser parser = SPARQLParser.createParser(syntaxURI);
		return (parser != null);
	}

	static public QuerySkyline read(String url) {
		return read(url, null, null, null);
	}

	static public QuerySkyline read(String url, String baseURI) {
		return read(url, null, baseURI, null);
	}

	static public QuerySkyline read(String url, String baseURI, Syntax langURI) {
		return read(url, null, baseURI, langURI);
	}

	static public QuerySkyline read(String url, FileManager filemanager,
			String baseURI, Syntax langURI) {
		String new_lines, skyline_line = null;
		if (filemanager == null)
			filemanager = FileManager.get();
		String qStr = filemanager.readWholeFileAsUTF8(url);
		
		// Codigo nuevo
		int indexSkyline = qStr.toUpperCase().indexOf("skyline of".toUpperCase());
		new_lines =  qStr;
        if (indexSkyline > - 1) {
        	new_lines = qStr.substring(0, indexSkyline);
        	skyline_line = qStr.substring(indexSkyline);
        }
        
		if (baseURI == null)
			baseURI = url;
		if (langURI == null)
			langURI = Syntax.guessQueryFileSyntax(url);
		return create(new_lines, skyline_line, baseURI, langURI);
		//return create(qStr, baseURI, langURI);
	}

	static public Element createElement(String elementString) {
		return ParserARQ.parseElement(elementString);
	}

	static public Template createTemplate(String templateString) {
		return ParserARQ.parseTemplate(templateString);
	}
}