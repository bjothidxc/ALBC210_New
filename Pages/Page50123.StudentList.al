page 50123 "Student List"
{
    Caption = 'Students';
    PageType = List;
    SourceTable = Student;
    CardPageId = "Student Card";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Students)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student number.';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student first name.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student last name.';
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
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student status.';
                }
                field("Attendance Entries"; Rec."Attendance Entries")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of attendance entries for this student.';
                }
                field("Academic Entries"; Rec."Academic Entries")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of academic entries for this student.';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Attendance)
            {
                Caption = 'Attendance';
                ApplicationArea = All;
                Image = EntriesList;
                RunObject = page "Student Attendance List";
                RunPageLink = "Student No." = field("No.");
                ToolTip = 'Open attendance entries for the selected student.';
            }
            action(Academics)
            {
                Caption = 'Academics';
                ApplicationArea = All;
                Image = LedgerEntries;
                RunObject = page "Student Academic List";
                RunPageLink = "Student No." = field("No.");
                ToolTip = 'Open academic entries for the selected student.';
            }
        }
        area(reporting)
        {
            action("Attendance Summary")
            {
                Caption = 'Attendance Summary';
                ApplicationArea = All;
                Image = Report;
                RunObject = report "Student Attendance Summary";
                ToolTip = 'Run the student attendance summary report.';
            }
            action("Academic Summary")
            {
                Caption = 'Academic Summary';
                ApplicationArea = All;
                Image = Report;
                RunObject = report "Student Academic Summary";
                ToolTip = 'Run the student academic summary report.';
            }
        }
    }
}
