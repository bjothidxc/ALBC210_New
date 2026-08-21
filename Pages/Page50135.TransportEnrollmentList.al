page 50135 "Transport Enrollment List"
{
    Caption = 'Transport Enrollment';
    PageType = List;
    SourceTable = "School Transport Opt-In";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Passenger Type"; Rec."Passenger Type")
                {
                    ApplicationArea = All;
                }
                field("Student No."; Rec."Student No.")
                {
                    ApplicationArea = All;
                }
                field("Staff No."; Rec."Staff No.")
                {
                    ApplicationArea = All;
                }
                field("Passenger Name"; Rec."Passenger Name")
                {
                    ApplicationArea = All;
                }
                field("Vehicle No."; Rec."Vehicle No.")
                {
                    ApplicationArea = All;
                }
                field("Driver No."; Rec."Driver No.")
                {
                    ApplicationArea = All;
                }
                field("Pickup Point"; Rec."Pickup Point")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
