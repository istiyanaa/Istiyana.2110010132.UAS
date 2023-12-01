object Form9: TForm9
  Left = 476
  Top = 235
  Width = 312
  Height = 326
  Caption = 'Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object shp1: TShape
    Left = 0
    Top = 0
    Width = 297
    Height = 233
    Brush.Color = clGradientInactiveCaption
  end
  object shp2: TShape
    Left = 0
    Top = 0
    Width = 297
    Height = 41
    Align = alTop
    Brush.Color = clMoneyGreen
  end
  object shp3: TShape
    Left = 0
    Top = 233
    Width = 297
    Height = 41
    Align = alBottom
    Brush.Color = clMoneyGreen
  end
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 68
    Height = 19
    Caption = 'Username'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 24
    Top = 120
    Width = 63
    Height = 19
    Caption = 'Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 72
    Top = 8
    Width = 128
    Height = 24
    Caption = 'Program Login'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Edit1: TEdit
    Left = 24
    Top = 72
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 144
    Width = 233
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 24
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Login'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Cancel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
end
