table 50121 "Student Attendance"
{
    Caption = 'Student Attendance';
    DataClassification = CustomerContent;
    DrillDownPageId = "Student Attendance List";
    LookupPageId = "Student Attendance List";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
            DataClassification = SystemMetadata;
        }
        field(2; "Student No."; Code[20])
        {
            Caption = 'Student No.';
            TableRelation = Student."No.";
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                Student: Record Student;
            begin
                if Student.Get("Student No.") then begin
                    "Student Name" := Student.FullName();
                    "Class Code" := Student."Class Code";
                    "Section Code" := Student."Section Code";
                end else begin
                    Clear("Student Name");
                    Clear("Class Code");
                    Clear("Section Code");
                end;
            end;
        }
        field(3; "Student Name"; Text[101])
        {
            Caption = 'Student Name';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(4; "Attendance Date"; Date)
        {
            Caption = 'Attendance Date';
            DataClassification = CustomerContent;
        }
        field(5; Status; Option)
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
            OptionCaption = 'Present,Absent,Late,Excused';
            OptionMembers = Present,Absent,Late,Excused;
        }
        field(6; "Class Code"; Code[20])
        {
            Caption = 'Class Code';
            DataClassification = CustomerContent;
        }
        field(7; "Section Code"; Code[10])
        {
            Caption = 'Section Code';
            DataClassification = CustomerContent;
        }
        field(8; Remarks; Text[100])
        {
            Caption = 'Remarks';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(StudentDate; "Student No.", "Attendance Date")
        {
        }
        key(ClassDate; "Class Code", "Section Code", "Attendance Date")
        {
        }
    }

    trigger OnInsert()
    begin
        if "Attendance Date" = 0D then
            "Attendance Date" := WorkDate();
    end;
}
