page 50133 "Transport Driver List"
{
    Caption = 'Transport Drivers';
    PageType = List;
    SourceTable = "Transport Driver";
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
                field("Driver Name"; Rec."Driver Name")
                {
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field("License No."; Rec."License No.")
                {
                    ApplicationArea = All;
                }
                field("License Expiry Date"; Rec."License Expiry Date")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Assigned Vehicle No."; Rec."Assigned Vehicle No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
