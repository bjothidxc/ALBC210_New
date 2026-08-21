table 50141 "Transport Mechanic"
{
    Caption = 'Transport Mechanic';
    DataClassification = CustomerContent;
    LookupPageId = "Transport Mechanic List";
    DrillDownPageId = "Transport Mechanic List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "Mechanic Name"; Text[100])
        {
            Caption = 'Mechanic Name';
            DataClassification = CustomerContent;
        }
        field(3; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
            ExtendedDatatype = PhoneNo;
        }
        field(4; Specialization; Text[100])
        {
            Caption = 'Specialization';
            DataClassification = CustomerContent;
        }
        field(5; Status; Enum "Transport Mechanic Status")
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }
        field(6; Address; Text[100])
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
