page 50132 "Transport Vehicle List"
{
    Caption = 'Transport Vehicles';
    PageType = List;
    SourceTable = "Transport Vehicle";
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
                field("Vehicle Type"; Rec."Vehicle Type")
                {
                    ApplicationArea = All;
                }
                field("Registration No."; Rec."Registration No.")
                {
                    ApplicationArea = All;
                }
                field(Make; Rec.Make)
                {
                    ApplicationArea = All;
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                }
                field(Capacity; Rec.Capacity)
                {
                    ApplicationArea = All;
                }
                field("Assigned Driver No."; Rec."Assigned Driver No.")
                {
                    ApplicationArea = All;
                }
                field("Maintenance Status"; Rec."Maintenance Status")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
