object ImportForm: TImportForm
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 104
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnImport: TButton
    Left = 89
    Top = 61
    Width = 75
    Height = 25
    Caption = 'Import'
    TabOrder = 0
    OnClick = btnImportClick
  end
  object edtPath: TEdit
    Left = 89
    Top = 34
    Width = 281
    Height = 21
    TabOrder = 1
    Text = 'C:\Users\nhonht\Desktop\Working\Doc\HAL-ODC_Interview Log.xls'
  end
  object btnBrowser: TButton
    Left = 8
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Browser'
    TabOrder = 2
    OnClick = btnBrowserClick
  end
  object odlgOpenFile: TOpenDialog
    Left = 192
    Top = 72
  end
end
