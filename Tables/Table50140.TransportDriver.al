table 50140 "Transport Driver"
{
    Caption = 'Transport Driver';
    DataClassification = CustomerContent;
    LookupPageId = "Transport Driver List";
    DrillDownPageId = "Transport Driver List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "Driver Name"; Text[100])
        {
            Caption = 'Driver Name';
            DataClassification = CustomerContent;
        }
        field(3; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
            ExtendedDatatype = PhoneNo;
        }
        field(4; "License No."; Text[30])
        {
            Caption = 'License No.';
            DataClassification = CustomerContent;
        }
        field(5; "License Expiry Date"; Date)
        {
            Caption = 'License Expiry Date';
            DataClassification = CustomerContent;
        }
        field(6; "Assigned Vehicle No."; Code[20])
        {
            Caption = 'Assigned Vehicle No.';
            DataClassification = CustomerContent;
            TableRelation = "Transport Vehicle";
        }
        field(7; Status; Enum "Transport Driver Status")
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }
        field(8; Address; Text[100])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
