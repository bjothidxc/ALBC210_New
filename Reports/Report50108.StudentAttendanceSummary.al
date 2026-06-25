report 50108 "Student Attendance Summary"
{
    Caption = 'Student Attendance Summary';
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
        Attendance: Record "Student Attendance";
        StudentCount: Integer;
        PresentCount: Integer;
        AbsentCount: Integer;
        LateCount: Integer;
        ExcusedCount: Integer;
    begin
        StudentRec.CopyFilters(Student);
        if StudentRec.FindSet() then
            repeat
                StudentCount += 1;
                Attendance.SetRange("Student No.", StudentRec."No.");
                Attendance.SetRange(Status, Attendance.Status::Present);
                PresentCount += Attendance.Count();
                Attendance.SetRange(Status, Attendance.Status::Absent);
                AbsentCount += Attendance.Count();
                Attendance.SetRange(Status, Attendance.Status::Late);
                LateCount += Attendance.Count();
                Attendance.SetRange(Status, Attendance.Status::Excused);
                ExcusedCount += Attendance.Count();
            until StudentRec.Next() = 0;

        Message('Students: %1\Present: %2\Absent: %3\Late: %4\Excused: %5',
            StudentCount, PresentCount, AbsentCount, LateCount, ExcusedCount);
    end;
}
