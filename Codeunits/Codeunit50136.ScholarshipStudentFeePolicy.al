codeunit 50136 "Scholarship Student Fee Policy" implements iStudentfeepolicy
{
    procedure CalculateFee(Student: Record Student): Decimal
    var
        DiscountPercent: Decimal;
    begin
        DiscountPercent := Student."Scholarship Discount %";

        if DiscountPercent = 0 then
            DiscountPercent := 25;

        exit(Round(Student."Base Fee" * (100 - DiscountPercent) / 100, 0.01));
    end;

    procedure GetDescription(): Text[100]
    begin
        exit('Applies the scholarship discount percentage to the base fee.');
    end;
}
