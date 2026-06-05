namespace my.db;

using { cuid, managed } from '@sap/cds/common';

entity Employees : cuid, managed {
    employeeId : Integer;
    firstName  : String(50);
    lastName   : String(50);
    email      : String(100);
    department : String(50);
    salary     : Decimal(15,2);
    status     : String(20);
}