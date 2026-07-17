table 50120 "Student"
{
    Caption = 'Student';
    DataClassification = CustomerContent;
    DrillDownPageId = "Student List";
    LookupPageId = "Student List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "First Name"; Text[50])
        {
            Caption = 'First Name';
            DataClassification = CustomerContent;
        }
        field(3; "Last Name"; Text[50])
        {
            Caption = 'Last Name';
            DataClassification = CustomerContent;
        }
        field(4; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
            DataClassification = CustomerContent;
        }
        field(5; Gender; Option)
        {
            Caption = 'Gender';
            DataClassification = CustomerContent;
            OptionCaption = ' ,Male,Female,Other';
            OptionMembers = " ",Male,Female,Other;
        }
        field(6; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            ExtendedDatatype = PhoneNo;
            DataClassification = CustomerContent;
        }
        field(7; "E-Mail"; Text[80])
        {
            Caption = 'Email';
            ExtendedDatatype = EMail;
            DataClassification = CustomerContent;
        }
        field(8; Address; Text[100])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
        field(9; City; Text[50])
        {
            Caption = 'City';
            DataClassification = CustomerContent;
        }
        field(10; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            DataClassification = CustomerContent;
        }
        field(11; "Class Code"; Code[20])
        {
            Caption = 'Class Code';
            DataClassification = CustomerContent;
        }
        field(12; "Section Code"; Code[10])
        {
            Caption = 'Section Code';
            DataClassification = CustomerContent;
        }
        field(13; "Enrollment Date"; Date)
        {
            Caption = 'Enrollment Date';
            DataClassification = CustomerContent;
        }
        field(14; Status; Option)
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
            OptionCaption = 'Active,Inactive,Graduated,Suspended';
            OptionMembers = Active,Inactive,Graduated,Suspended;
        }
        field(15; "Guardian Name"; Text[100])
        {
            Caption = 'Guardian Name';
            DataClassification = CustomerContent;
        }
        field(16; "Guardian Phone No."; Text[30])
        {
            Caption = 'Guardian Phone No.';
            ExtendedDatatype = PhoneNo;
            DataClassification = CustomerContent;
        }
        field(17; "Attendance Entries"; Integer)
        {
            Caption = 'Attendance Entries';
            FieldClass = FlowField;
            CalcFormula = count("Student Attendance" where("Student No." = field("No.")));
            Editable = false;
        }
        field(18; "Academic Entries"; Integer)
        {
            Caption = 'Academic Entries';
            FieldClass = FlowField;
            CalcFormula = count("Student Academic" where("Student No." = field("No.")));
            Editable = false;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(ClassSection; "Class Code", "Section Code")
        {
        }
    }

    trigger OnInsert()
    begin
        if "Enrollment Date" = 0D then
            "Enrollment Date" := WorkDate();
    end;

    procedure FullName(): Text[101]
    begin
        exit(DelChr("First Name" + ' ' + "Last Name", '<>'));
    end;
}
