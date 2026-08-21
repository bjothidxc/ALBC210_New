enum 50137 "Student Fee Policy Type" implements iStudentfeepolicy
{
    Extensible = true;

    value(0; Regular)
    {
        Caption = 'Regular';
        Implementation = iStudentfeepolicy = "Regular Student Fee Policy";
    }
    value(1; Scholarship)
    {
        Caption = 'Scholarship';
        Implementation = iStudentfeepolicy = "Scholarship Student Fee Policy";
    }
    value(2; "Late Admission")
    {
        Caption = 'Late Admission';
        Implementation = iStudentfeepolicy = "Late Student Fee Policy";
    }
}
