object Form1: TForm1
  Left = 148
  Top = 153
  Width = 743
  Height = 538
  Caption = 'User'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 40
    Top = 48
    Width = 94
    Height = 19
    Caption = 'Nama Lengkap'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 80
    Width = 61
    Height = 19
    Caption = 'Username'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 112
    Width = 60
    Height = 19
    Caption = 'Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 360
    Top = 48
    Width = 83
    Height = 19
    Caption = 'Jenis Kelamin'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 360
    Top = 80
    Width = 43
    Height = 19
    Caption = 'Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 360
    Top = 112
    Width = 33
    Height = 19
    Caption = 'Email'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 144
    Top = 48
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 144
    Top = 80
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 144
    Top = 112
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 456
    Top = 48
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 456
    Top = 80
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 456
    Top = 112
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 16
    Top = 16
    Width = 46
    Height = 24
    Caption = 'USER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit2: TEdit
    Left = 160
    Top = 48
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 160
    Top = 80
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 160
    Top = 112
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 472
    Top = 48
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object Edit6: TEdit
    Left = 472
    Top = 80
    Width = 185
    Height = 21
    TabOrder = 4
  end
  object Edit7: TEdit
    Left = 472
    Top = 112
    Width = 185
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 112
    Top = 160
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 160
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 320
    Top = 160
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 200
    Width = 633
    Height = 241
    DataSource = ds1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_user'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_Lengkap'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'username'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_kelamin'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 150
        Visible = True
      end>
  end
  object Button4: TButton
    Left = 424
    Top = 160
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 528
    Top = 160
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 11
    OnClick = Button5Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'pertanian_db'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Tugas\libmysql.d' +
      'll'
    Left = 56
    Top = 368
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 120
    Top = 368
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 160
    Top = 368
  end
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45257.814528946760000000
    ReportOptions.LastChange = 45257.814528946760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 208
    Top = 368
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object Memo1: TfrxMemoView
        Left = 30.236240000000000000
        Top = 26.456710000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    Left = 280
    Top = 368
  end
end
