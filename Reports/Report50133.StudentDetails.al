report 50133 "Student Details"
{
    Caption = 'Student Details';
    DefaultLayout = RDLC;
    RDLCLayout = './Reports/Report50133.StudentDetails.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(Student; "Student")
        {
            RequestFilterFields = "Class Code", Status;

            column(No_; "No.")
            {
            }
            column(First_Name; "First Name")
            {
            }
            column(Last_Name; "Last Name")
            {
            }
            column(Date_of_Birth; "Date of Birth")
            {
            }
            column(Gender; Gender)
            {
            }
            column(Phone_No_; "Phone No.")
            {
            }
            column(E_Mail; "E-Mail")
            {
            }
            column(Address; Address)
            {
            }
            column(City; City)
            {
            }
            column(Post_Code; "Post Code")
            {
            }
            column(Class_Code; "Class Code")
            {
            }
            column(Section_Code; "Section Code")
            {
            }
            column(Enrollment_Date; "Enrollment Date")
            {
            }
            column(Status; Status)
            {
            }
            column(Guardian_Name; "Guardian Name")
            {
            }
            column(Guardian_Phone_No_; "Guardian Phone No.")
            {
            }
        }
    }

    requestpage
    {
        // The DataItem RequestFilterFields above exposes Class Code and Status automatically
    }
}
