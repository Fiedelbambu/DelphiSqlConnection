object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbl_Info: TLabel
    Left = 57
    Top = 40
    Width = 154
    Height = 15
    Caption = 'Verbindung wird hergestellt!!!'
  end
  object btn_Connection: TButton
    Left = 57
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Connection'
    TabOrder = 0
    OnClick = btn_ConnectionClick
  end
  object ADOConnection1: TADOConnection
    Left = 312
    Top = 184
  end
end
