page 50125 "Student Attendance List"
{
    Caption = 'Student Attendance';
    PageType = List;
    SourceTable = "Student Attendance";
    CardPageId = "Student Attendance Card";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Attendance)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the attendance entry number.';
                }
                field("Student No."; Rec."Student No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student number.';
                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student name.';
                }
                field("Attendance Date"; Rec."Attendance Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the attendance date.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the attendance status.';
                }
                field("Class Code"; Rec."Class Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the class code.';
                }
                field("Section Code"; Rec."Section Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the section code.';
                }
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies attendance remarks.';
                }
            }
        }
    }
}
