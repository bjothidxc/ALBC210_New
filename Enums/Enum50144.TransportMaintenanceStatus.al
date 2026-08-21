enum 50144 "Transport Maintenance Status"
{
    Extensible = true;

    value(0; Available)
    {
        Caption = 'Available';
    }
    value(1; "In Service")
    {
        Caption = 'In Service';
    }
    value(2; "Under Maintenance")
    {
        Caption = 'Under Maintenance';
    }
    value(3; "Out of Service")
    {
        Caption = 'Out of Service';
    }
}
