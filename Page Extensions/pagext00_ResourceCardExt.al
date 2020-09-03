pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = all;
            }

            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {
                ApplicationArea = all;
            }
        }

        addlast(content)
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;

                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {
                    ApplicationArea = all;
                }
            }
        }
    }




    var
        [InDataSet]
        ShowMaxField: Boolean;

    trigger OnAfterGetRecord()


    begin
        ShowMaxField := (Type = type::Machine);
        CurrPage.Update(false);
    end;
}