object Form1: TForm1
  Left = 319
  Top = 115
  Caption = 'Interview Statistics Tool'
  ClientHeight = 602
  ClientWidth = 829
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 309
    Top = 29
    Width = 204
    Height = 35
    Caption = 'Interviewee List'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object gridInterviewees: TDBGrid
    Left = 0
    Top = 88
    Width = 829
    Height = 457
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    DataSource = dataSourceInterviewees
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PositionID'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JobRankID'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InterviewDate'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OnboardDate'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InterviewerName'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nominator'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CV'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 545
    Width = 829
    Height = 57
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 40
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button2: TButton
      Left = 144
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Quick Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object adoConnectionMainConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'FILE NAME=ISProjectDataConnectionConfig.udl'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 112
    Top = 32
  end
  object adoTableInterviewees: TADOTable
    Active = True
    Connection = adoConnectionMainConnection
    CursorType = ctStatic
    TableName = 'Interviewees'
    Left = 248
    Top = 32
  end
  object dataSourceInterviewees: TDataSource
    DataSet = adoTableInterviewees
    Left = 616
    Top = 40
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object File1: TMenuItem
      Caption = 'File'
      object ImportFromExcelFile1: TMenuItem
        Caption = 'Import From Excel File'
        OnClick = ImportFromExcelFile1Click
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
    object Report1: TMenuItem
      Caption = 'Report'
    end
  end
end
