interface iStudentfeepolicy
{
    procedure CalculateFee(Student: Record Student): Decimal;
    procedure GetDescription(): Text[100];
}
