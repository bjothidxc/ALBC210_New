page 50105 "Student Card"
{
    Caption = 'Student Card';
    PageType = Card;
    SourceTable = Student;
    UsageCategory = None;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
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
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student date of birth.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student gender.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student status.';
                }
                field("Enrollment Date"; Rec."Enrollment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the enrollment date.';
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
            group(Contact)
            {
                Caption = 'Contact';
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student phone number.';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student email address.';
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student address.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student city.';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the student post code.';
                }
            }
            group(Guardian)
            {
                Caption = 'Guardian';
                field("Guardian Name"; Rec."Guardian Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the guardian name.';
                }
                field("Guardian Phone No."; Rec."Guardian Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the guardian phone number.';
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
                ToolTip = 'Open attendance entries for this student.';
            }
            action(Academics)
            {
                Caption = 'Academics';
                ApplicationArea = All;
                Image = LedgerEntries;
                RunObject = page "Student Academic List";
                RunPageLink = "Student No." = field("No.");
                ToolTip = 'Open academic entries for this student.';
            }
        }
    }
}
