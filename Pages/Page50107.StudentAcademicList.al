page 50107 "Student Academic List"
{
    Caption = 'Student Academics';
    PageType = List;
    SourceTable = "Student Academic";
    CardPageId = "Student Academic Card";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Academics)
            {
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
                field("Exam Date"; Rec."Exam Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the exam date.';
                }
                field("Class Code"; Rec."Class Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the class code.';
                }
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies academic remarks.';
                }
            }
        }
    }
}
