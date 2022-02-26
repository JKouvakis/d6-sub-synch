object Form1: TForm1
  Left = 350
  Top = 243
  Width = 233
  Height = 242
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 46
    Top = 48
    Width = 59
    Height = 13
    Caption = 'Timi arxikou:'
  end
  object Label2: TLabel
    Left = 46
    Top = 74
    Width = 56
    Height = 13
    Caption = 'Timi telikou:'
  end
  object Shape1: TShape
    Left = 2
    Top = 94
    Width = 221
    Height = 5
  end
  object Label3: TLabel
    Left = 46
    Top = 174
    Width = 56
    Height = 13
    Caption = 'Timi telikou:'
  end
  object Label4: TLabel
    Left = 46
    Top = 148
    Width = 59
    Height = 13
    Caption = 'Timi arxikou:'
  end
  object Button1: TButton
    Left = 6
    Top = 6
    Width = 211
    Height = 27
    Caption = 'Load Original, Save Corrected'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 110
    Top = 40
    Width = 69
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object Edit3: TEdit
    Left = 106
    Top = 68
    Width = 69
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object Edit1: TEdit
    Left = 106
    Top = 168
    Width = 69
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Edit4: TEdit
    Left = 110
    Top = 140
    Width = 69
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object Button2: TButton
    Left = 6
    Top = 106
    Width = 211
    Height = 27
    Caption = 'Load Original, Save Corrected'
    TabOrder = 5
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Left = 186
    Top = 14
  end
  object SaveDialog1: TSaveDialog
    Left = 152
    Top = 14
  end
end
