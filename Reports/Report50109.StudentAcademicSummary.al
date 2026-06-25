report 50109 "Student Academic Summary"
{
    Caption = 'Student Academic Summary';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Student; Student)
        {
            RequestFilterFields = "No.", "Class Code", "Section Code", Status;
        }
    }

    trigger OnPostReport()
    var
        StudentRec: Record Student;
        Academic: Record "Student Academic";
        StudentCount: Integer;
        EntryCount: Integer;
        TotalMarks: Decimal;
        TotalMaximum: Decimal;
        AveragePercentage: Decimal;
        testvar: Decimal;
    begin
        StudentRec.CopyFilters(Student);
        if StudentRec.FindSet() then
            repeat
                StudentCount += 1;
                Academic.SetRange("Student No.", StudentRec."No.");
                if Academic.FindSet() then
                    repeat
                        EntryCount += 1;
                        TotalMarks += Academic."Marks Obtained";
                        TotalMaximum += Academic."Maximum Marks";
                    until Academic.Next() = 0;
            until StudentRec.Next() = 0;

        if TotalMaximum <> 0 then
            AveragePercentage := Round((TotalMarks / TotalMaximum) * 100, 0.01);

        Message('Students: %1\Academic Entries: %2\Total Marks: %3 of %4\Average: %5%',
            StudentCount, EntryCount, TotalMarks, TotalMaximum, AveragePercentage);
    end;
}
