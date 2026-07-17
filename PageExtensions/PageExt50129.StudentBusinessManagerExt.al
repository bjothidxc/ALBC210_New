pageextension 50129 "Student Business Manager Ext" extends "Business Manager Role Center"
{
    actions
    {
        addlast(Sections)
        {
            group("Student Management")
            {
                Caption = 'Student Management';
                action(Students)
                {
                    Caption = 'Students';
                    ApplicationArea = All;
                    RunObject = page "Student List";
                    Image = ContactPerson;
                    ToolTip = 'Open student master records.';
                }
                action("Student Attendance")
                {
                    Caption = 'Student Attendance';
                    ApplicationArea = All;
                    RunObject = page "Student Attendance List";
                    Image = EntriesList;
                    ToolTip = 'Open student attendance entries.';
                }
                action("Student Academics")
                {
                    Caption = 'Student Academics';
                    ApplicationArea = All;
                    RunObject = page "Student Academic List";
                    Image = LedgerEntries;
                    ToolTip = 'Open student academic entries.';
                }
                action("Student Attendance Report")
                {
                    Caption = 'Student Attendance Report';
                    ApplicationArea = All;
                    RunObject = report "Student Attendance Summary";
                    Image = Report;
                    ToolTip = 'Run the student attendance summary report.';
                }
                action("Student Academic Report")
                {
                    Caption = 'Student Academic Report';
                    ApplicationArea = All;
                    RunObject = report "Student Academic Summary";
                    Image = Report;
                    ToolTip = 'Run the student academic summary report.';
                }
            }
        }
    }
}
