/**
 * Traitement par lot pour calculer le chiffre d'affaire des comptes
 *
 */

global with sharing class AccountProcessorB implements Database.Batchable<sObject> {
       
    global Database.QueryLocator start(Database.BatchableContext info){ 
        // liste des comptes avec commandes actives
        return Database.getQueryLocator(
            'SELECT Id, chiffre_d_affaire__c ,(SELECT TotalAmount FROM orders WHERE Status =\'Ordered\') from Account 
             WHERE id IN (Select AccountId From Order WHERE Status = \'Ordered\')');
 
    }
    // calcul du chiffre d'affaire
    global void execute(Database.BatchableContext info, List<Account> scope){
        
        UpdateChiffreCA.updateChiffreAffaire(scope);
    }    
     
    global void finish(Database.BatchableContext info){     
        
    } 
}
