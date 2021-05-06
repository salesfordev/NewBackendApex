Global with sharing class UpdateChiffreCA {
    /**
     * calcul et mise à jour du chiffre d'affaire de comptes
     */
    global static void updateChiffreAffaire(List<Account> accountsWithOrders) {
        for (Account myAccount : accountsWithOrders){
            myAccount.Chiffre_d_affaire__c = 0;
            for (Order order : myAccount.Orders){
                myAccount.Chiffre_d_affaire__c += order.TotalAmount;
            }
        }
        update accountsWithOrders;
    }
}