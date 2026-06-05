using { my.db as db } from '../db/schema';

service EmployeeService {

    @odata.draft.enabled
    entity Employees as projection on db.Employees;

    // Function without parameter
    function getEmployeeCount() returns Integer;

    function getActiveEmployees() returns many Employees;
    function getEmployeesByDepartment(department : String) returns many Employees;
}