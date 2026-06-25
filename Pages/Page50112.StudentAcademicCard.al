page 50112 "Student Academic Card"
{
    Caption = 'Student Academic Card';
    PageType = Card;
    SourceTable = "Student Academic";
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
                    ToolTip = 'Specifies the academic entry number.';
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
                field("Academic Year"; Rec."Academic Year")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the academic year.';
                }
                field(Term; Rec.Term)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the academic term.';
                }
                field(Subject; Rec.Subject)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the subject.';
                }
                field("Exam Date"; Rec."Exam Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the exam date.';
                }
            }
            group(Score)
            {
                Caption = 'Score';
                field("Maximum Marks"; Rec."Maximum Marks")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the maximum marks.';
                }
                field("Marks Obtained"; Rec."Marks Obtained")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the marks obtained.';
                }
                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the grade.';
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
            }
            group(Notes)
            {
                Caption = 'Notes';
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies academic remarks.';
                }
            }
        }
    }
}
