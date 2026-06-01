table 92745 "PTE Table Lifecycle Setup"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Table ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Name"; Text[100])
        {
            Caption = 'Table Name';
            CalcFormula = lookup(AllObjWithCaption."Object Name" where("Object Type" = const(Table), "Object ID" = field("Table ID")));
            FieldClass = FlowField;
            Editable = false;
        }
        field(3; "Max No. of Records"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Has Retention Policy"; Boolean)
        {
            Caption = 'Has Retention Policy';
            CalcFormula = exist("Retention Policy Setup" where("Table ID" = field("Table ID")));
            FieldClass = FlowField;
            Editable = false;
        }

    }

    keys
    {
        key(PrimaryKey; "Table ID")
        {
            Clustered = true;
        }
    }
}