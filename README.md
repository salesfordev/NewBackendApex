# OpenClassrooms

## Project P9 - Optimize Apex Backend

## Degraded Project

### Naming Conventions :

- **Class names:** UpperCamelCase :

  - Apex Class
    **`SObjectNameFunctionInterface`** > `AccountProcessorB`

  - Tests Class
    **`ClassNameTest`** > `AccountCABatchTest`
    
- **Methods:** camelCase: `updateChiffreAffaire`

- **Test Methods:** camelCase: `testWhat`

- **SOQL**

  ```Apex
  List<SObject> myList = [SELECT fields
  							FROM SObject
  							WHERE condition
  						];
  ```
