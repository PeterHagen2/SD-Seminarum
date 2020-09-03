pageextension 50101 "CSD Resource Type" extends "Resource List"
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }

        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = all;
            }

            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
                ApplicationArea = all;

            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage();

    begin
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = format(Type::Machine));
    end;


    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        ShowType: Boolean;
}