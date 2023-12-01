object Form2: TForm2
  Left = 254
  Top = 167
  Width = 658
  Height = 480
  Caption = 'Barang'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 40
    Top = 72
    Width = 84
    Height = 19
    Caption = 'Nama Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 104
    Width = 41
    Height = 19
    Caption = 'Satuan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 328
    Top = 40
    Width = 64
    Height = 19
    Caption = 'Harga Beli'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 328
    Top = 72
    Width = 64
    Height = 19
    Caption = 'Harga Jual'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 40
    Top = 40
    Width = 49
    Height = 19
    Caption = 'ID Stok'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 72
    Height = 22
    Caption = 'BARANG'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Century725 Cn BT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit3: TEdit
    Left = 144
    Top = 72
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edit4: TEdit
    Left = 144
    Top = 104
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object Edit5: TEdit
    Left = 416
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object Edit6: TEdit
    Left = 416
    Top = 72
    Width = 161
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 96
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 144
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 288
    Top = 144
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 376
    Top = 144
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 464
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 40
    Top = 184
    Width = 553
    Height = 201
    DataSource = ds1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object Edit1: TEdit
    Left = 144
    Top = 40
    Width = 153
    Height = 21
    TabOrder = 10
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
    Left = 48
    Top = 336
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 96
    Top = 336
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 144
    Top = 336
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
    Left = 192
    Top = 336
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSource = ds1
    Left = 248
    Top = 336
  end
end
