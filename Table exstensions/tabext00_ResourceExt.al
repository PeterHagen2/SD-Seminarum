tableextension 50100 "CSD ResourceExt" extends Resource
{
    fields
    {
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = Internal,External;
            OptionCaption = 'Internal,External';
            DataClassification = AccountData;
        }

        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = AccountData;
        }

        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
            DataClassification = AccountData;
        }

        modify("Profit %")
        {
            trigger OnAfterValidate()

            begin
                Rec.TestField("Unit Cost");
            end;
        }
    }


}