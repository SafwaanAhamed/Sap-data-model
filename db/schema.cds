namespace scp.cloud;

using
{
    sap.common.CodeList,
    cuid,
    managed
}
from '@sap/cds/common';

entity DataEntity : cuid, managed
{
    RequestType : Association to RequestTypes
        @title : 'Request Type';
    RequestorEmail : String(40)
        @title : 'Requestor Email';
    FirstName : String(40)
        @title : 'First Name';
    LastName : String(40)
        @title : 'Last Name';
    GlobalRegion : Association to GlobalRegion
        @title : 'Global Region';
    BusinessUnit : String(20)
        @title : 'Business Unit';
    Function : String(20)
        @title : 'Function';
    Country : Association to Country
        @title : 'Country';
    ExpectedDueDate : Date
        @title : 'Expected Due Date';
    Priority : Association to Priority 
        @title : 'Priority';
    CreatedOnDate : Date
        @title : 'Created On Date';
    Comments : String(250)
        @title : 'Comments';
}

entity RequestTypes : CodeList
{
    key code : String(100);
}
entity Country : CodeList
{
    key code : String(100);
}
entity GlobalRegion : CodeList
{
    key code : String(100);
}
entity Priority : CodeList
{
    key code : String(100);
}
