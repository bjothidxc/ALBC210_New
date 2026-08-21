codeunit 50138 "Late Student Fee Policy" implements iStudentfeepolicy
{
    procedure CalculateFee(Student: Record Student): Decimal
    begin
        exit(Round(Student."Base Fee" * 1.10, 0.01));
    end;

    procedure GetDescription(): Text[100]
    begin
        exit('Adds a 10 percent surcharge for late admission students.');
    end;
}
