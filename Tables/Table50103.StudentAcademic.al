table 50103 "Student Academic"
{
    Caption = 'Student Academic';
    DataClassification = CustomerContent;
    DrillDownPageId = "Student Academic List";
    LookupPageId = "Student Academic List";

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
                end else begin
                    Clear("Student Name");
                    Clear("Class Code");
                end;
            end;
        }
        field(3; "Student Name"; Text[101])
        {
            Caption = 'Student Name';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(4; "Academic Year"; Code[20])
        {
            Caption = 'Academic Year';
            DataClassification = CustomerContent;
        }
        field(5; Term; Code[20])
        {
            Caption = 'Term';
            DataClassification = CustomerContent;
        }
        field(6; Subject; Text[50])
        {
            Caption = 'Subject';
            DataClassification = CustomerContent;
        }
        field(7; "Maximum Marks"; Decimal)
        {
            Caption = 'Maximum Marks';
            DecimalPlaces = 0 : 2;
            MinValue = 0;
            DataClassification = CustomerContent;
        }
        field(8; "Marks Obtained"; Decimal)
        {
            Caption = 'Marks Obtained';
            DecimalPlaces = 0 : 2;
            MinValue = 0;
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                ValidateScore();
                UpdateGrade();
            end;
        }
        field(9; Grade; Code[10])
        {
            Caption = 'Grade';
            DataClassification = CustomerContent;
        }
        field(10; "Exam Date"; Date)
        {
            Caption = 'Exam Date';
            DataClassification = CustomerContent;
        }
        field(11; "Class Code"; Code[20])
        {
            Caption = 'Class Code';
            DataClassification = CustomerContent;
        }
        field(12; Remarks; Text[100])
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
        key(StudentAcademic; "Student No.", "Academic Year", Term)
        {
        }
        key(ClassSubject; "Class Code", Subject, "Exam Date")
        {
        }
    }

    local procedure ValidateScore()
    begin
        if ("Maximum Marks" <> 0) and ("Marks Obtained" > "Maximum Marks") then
            Error('Marks obtained cannot be greater than maximum marks.');
    end;

    local procedure UpdateGrade()
    var
        Percentage: Decimal;
    begin
        if "Maximum Marks" = 0 then begin
            Clear(Grade);
            exit;
        end;

        Percentage := Round(("Marks Obtained" / "Maximum Marks") * 100, 0.01);

        case true of
            Percentage >= 90:
                Grade := 'A+';
            Percentage >= 80:
                Grade := 'A';
            Percentage >= 70:
                Grade := 'B';
            Percentage >= 60:
                Grade := 'C';
            Percentage >= 50:
                Grade := 'D';
            else
                Grade := 'F';
        end;
    end;
}
