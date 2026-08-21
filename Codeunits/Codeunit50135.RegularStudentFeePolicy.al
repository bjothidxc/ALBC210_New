codeunit 50135 "Regular Student Fee Policy" implements iStudentfeepolicy
{
    procedure CalculateFee(Student: Record Student): Decimal
    begin
        exit(Student."Base Fee");
    end;

    procedure GetDescription(): Text[100]
    begin
        exit('Uses the base fee without any discount or surcharge.');
    end;
}
