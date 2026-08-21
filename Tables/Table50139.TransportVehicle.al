table 50139 "Transport Vehicle"
{
    Caption = 'Transport Vehicle';
    DataClassification = CustomerContent;
    LookupPageId = "Transport Vehicle List";
    DrillDownPageId = "Transport Vehicle List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "Vehicle Type"; Enum "Transport Vehicle Type")
        {
            Caption = 'Vehicle Type';
            DataClassification = CustomerContent;
        }
        field(3; "Registration No."; Code[20])
        {
            Caption = 'Registration No.';
            DataClassification = CustomerContent;
        }
        field(4; Make; Text[50])
        {
            Caption = 'Make';
            DataClassification = CustomerContent;
        }
        field(5; Model; Text[50])
        {
            Caption = 'Model';
            DataClassification = CustomerContent;
        }
        field(6; "Year Model"; Integer)
        {
            Caption = 'Year Model';
            DataClassification = CustomerContent;
            MinValue = 1990;
        }
        field(7; Capacity; Integer)
        {
            Caption = 'Capacity';
            DataClassification = CustomerContent;
            MinValue = 1;
        }
        field(8; "Assigned Driver No."; Code[20])
        {
            Caption = 'Assigned Driver No.';
            DataClassification = CustomerContent;
            TableRelation = "Transport Driver";
        }
        field(9; "Maintenance Status"; Enum "Transport Maintenance Status")
        {
            Caption = 'Maintenance Status';
            DataClassification = CustomerContent;
        }
        field(10; "Last Service Date"; Date)
        {
            Caption = 'Last Service Date';
            DataClassification = CustomerContent;
        }
        field(11; "Next Service Date"; Date)
        {
            Caption = 'Next Service Date';
            DataClassification = CustomerContent;
        }
        field(12; "Mechanic No."; Code[20])
        {
            Caption = 'Mechanic No.';
            DataClassification = CustomerContent;
            TableRelation = "Transport Mechanic";
        }
        field(13; Notes; Text[250])
        {
            Caption = 'Notes';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(RegistrationNo; "Registration No.")
        {
        }
    }
}
