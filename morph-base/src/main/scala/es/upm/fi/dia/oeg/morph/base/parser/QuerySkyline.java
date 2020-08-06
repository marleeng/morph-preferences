package es.upm.fi.dia.oeg.morph.base.parser;


import org.apache.jena.query.QueryVisitor;
import org.apache.jena.query.Query;
import org.apache.jena.sparql.core.QueryCompare;
import org.apache.jena.atlas.io.IndentedLineBuffer;
import org.apache.jena.system.JenaSystem;
import Zql.ZExpression;

public class QuerySkyline extends Query {
	static { JenaSystem.init() ; /* Ensure everything has started properly */ }

	public static final int QueryTypePrefer = 555;
	private int queryType = QueryTypeUnknown;
	private Query query;
	private ZExpression exprPrefer = null;
	private ZExpression exprDIFF = null;
	
	public void setQuery(Query q) {
		query = q;
	}
	
	public Query getQuery() {
		return query;
	}
	
	public void setQueryPreferType() {
		setQueryType(QueryTypePrefer);
	}

	public void setQueryType(int qType) {
		queryType = qType;
	}
	public void setPref(ZExpression  e) {
		exprPrefer = e;
	}
	public ZExpression getPrefer() {
		return exprPrefer;
	}
	public void setDIFF(ZExpression e) {
		exprDIFF = e;
	}
	public ZExpression getDIFF() {
		return exprDIFF;
	}
	public void visit(QueryVisitor visitor) {
		visitor.startVisit(this);
		visitor.visitResultForm(this);
		visitor.visitPrologue(this);
		if (this.isSelectType())
			visitor.visitSelectResultForm(this);
		if (this.isConstructType())
			visitor.visitConstructResultForm(this);
		if (this.isDescribeType())
			visitor.visitDescribeResultForm(this);
		if (this.isAskType())
			visitor.visitAskResultForm(this);
		visitor.visitDatasetDecl(this);
		visitor.visitQueryPattern(this);
		visitor.visitOrderBy(this);
		visitor.visitOffset(this);
		visitor.visitLimit(this);
		visitor.finishVisit(this);
	}

	// With Java 1.5, this can be returns Query.
	public Object clone() {
		return cloneQuery();
	}

	public QuerySkyline cloneQuery() {
		// A little crude.
		IndentedLineBuffer buff = new IndentedLineBuffer();
		serialize(buff, getSyntax());
		String qs = buff.toString();
		return QueryFactorySkyline.create(qs);
	}

	public boolean equals(Object other) {
		if (this == other)
			return true;

		if (!(other instanceof QuerySkyline))
			return false;
		return QueryCompare.equals(this, (QuerySkyline) other);
	}

	// public static boolean sameAs(Query query1, Query query2)
	// { return query1.sameAs(query2) ; }

}

