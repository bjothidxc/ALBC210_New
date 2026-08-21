table 50142 "School Transport Opt-In"
{
    Caption = 'School Transport Opt-In';
    DataClassification = CustomerContent;
    LookupPageId = "Transport Enrollment List";
    DrillDownPageId = "Transport Enrollment List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "Passenger Type"; Enum "Transport Passenger Type")
        {
            Caption = 'Passenger Type';
            DataClassification = CustomerContent;
        }
        field(3; "Student No."; Code[20])
        {
            Caption = 'Student No.';
            DataClassification = CustomerContent;
            TableRelation = Student;

            trigger OnValidate()
            var
                StudentRec: Record Student;
            begin
                if "Student No." = '' then begin
                    "Passenger Name" := '';
                    exit;
                end;

                if StudentRec.Get("Student No.") then
                    "Passenger Name" := StudentRec.FullName();
            end;
        }
        field(4; "Staff No."; Code[20])
        {
            Caption = 'Staff No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "Staff No." = '' then begin
                    if "Passenger Type" = "Passenger Type"::Staff then
                        "Passenger Name" := '';
                    exit;
                end;

                if "Passenger Type" = "Passenger Type"::Staff then
                    "Passenger Name" := "Staff No.";
            end;
        }
        field(5; "Passenger Name"; Text[100])
        {
            Caption = 'Passenger Name';
            DataClassification = CustomerContent;
        }
        field(6; "Vehicle No."; Code[20])
        {
            Caption = 'Vehicle No.';
            DataClassification = CustomerContent;
            TableRelation = "Transport Vehicle";
        }
        field(7; "Driver No."; Code[20])
        {
            Caption = 'Driver No.';
            DataClassification = CustomerContent;
            TableRelation = "Transport Driver";
        }
        field(8; "Pickup Point"; Text[100])
        {
            Caption = 'Pickup Point';
            DataClassification = CustomerContent;
        }
        field(9; "Opt-In Date"; Date)
        {
            Caption = 'Opt-In Date';
            DataClassification = CustomerContent;
        }
        field(10; Status; Enum "Transport Enrollment Status")
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }
        field(11; Notes; Text[250])
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
    }

    trigger OnInsert()
    begin
        if "Opt-In Date" = 0D then
            "Opt-In Date" := Today;
    end;
}
