const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {

    const { Employees } = this.entities;

    this.on('getEmployeeCount', async () => {
        const result = await SELECT.from(Employees);
        return result.length;
    }); 
    this.on('getActiveEmployees', async () => {
        return await SELECT
            .from(Employees)
            .where({ status: 'ACTIVE' });
    });
     this.on('getEmployeesByDepartment', async (req) => {
        const { department } = req.data;

        return await SELECT
            .from(Employees)
            .where({ department });
    });

});