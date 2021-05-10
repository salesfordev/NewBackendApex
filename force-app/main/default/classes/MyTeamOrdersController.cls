public with sharing class MyTeamOrdersController {
    public Decimal SumOders{
        get{
			AggregateResult[] groupedResults = [SELECT SUM(AnnualRevenue) total FROM Account];
           return (Decimal) groupedResults[0].get('total');
        }
        set;
    }
    
}