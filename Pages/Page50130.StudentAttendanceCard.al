page 50130 "Student Attendance Card"
{
    Caption = 'Student Attendance Card';
    PageType = Card;
    SourceTable = "Student Attendance";
    UsageCategory = None;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
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
            }
            group(Class)
            {
                Caption = 'Class';
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
            }
            group(Notes)
            {
                Caption = 'Notes';
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies attendance remarks.';
                }
            }
        }
    }
}
