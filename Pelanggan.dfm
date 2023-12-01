object Form5: TForm5
  Left = 295
  Top = 230
  Width = 655
  Height = 480
  Caption = 'Pelanggan'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 32
    Width = 102
    Height = 19
    Caption = 'Nama Pelanggan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 64
    Width = 106
    Height = 19
    Caption = 'Telpon Pelanggan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 312
    Top = 32
    Width = 98
    Height = 19
    Caption = 'Email Pelanggan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 312
    Top = 64
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
  object Label8: TLabel
    Left = 139
    Top = 32
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
  object Label9: TLabel
    Left = 139
    Top = 64
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
  object Label10: TLabel
    Left = 425
    Top = 32
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
    Left = 424
    Top = 64
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
    Left = 8
    Top = 8
    Width = 92
    Height = 19
    Caption = 'PELANGGAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Century725 Cn BT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit2: TEdit
    Left = 152
    Top = 32
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 152
    Top = 64
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 440
    Top = 32
    Width = 153
    Height = 21
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 440
    Top = 64
    Width = 153
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 88
    Top = 104
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 176
    Top = 104
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 264
    Top = 104
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 352
    Top = 104
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = btn4Click
  end
  object Button1: TButton
    Left = 448
    Top = 104
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 144
    Width = 577
    Height = 193
    DataSource = ds1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object con1: TZConnection
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
    Left = 16
    Top = 280
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from pelanggan')
    Params = <>
    Left = 64
    Top = 280
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 112
    Top = 280
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45258.108505706020000000
    ReportOptions.LastChange = 45258.108505706020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 160
    Top = 280
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSource = ds1
    Left = 216
    Top = 280
  end
end
