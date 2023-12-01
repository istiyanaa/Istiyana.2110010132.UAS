object Form8: TForm8
  Left = 205
  Top = 211
  Width = 481
  Height = 368
  Caption = 'Aplikasi Toko Pertanian'
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 144
    Width = 62
    Height = 24
    Caption = 'Label1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mm1: TMainMenu
    Left = 8
    Top = 8
    object mniabel1: TMenuItem
      Caption = 'MENU'
      object mniUser1: TMenuItem
        Caption = 'User'
        OnClick = mniUser1Click
      end
      object mniPembelian1: TMenuItem
        Caption = 'Barang'
        OnClick = mniPembelian1Click
      end
      object mniPembelian2: TMenuItem
        Caption = 'Pembelian'
        OnClick = mniPembelian2Click
      end
      object mniPenjualan1: TMenuItem
        Caption = 'Penjualan'
        OnClick = mniPenjualan1Click
      end
      object mniPelanggan1: TMenuItem
        Caption = 'Pelanggan'
        OnClick = mniPelanggan1Click
      end
      object mniStok1: TMenuItem
        Caption = 'Stok'
        OnClick = mniStok1Click
      end
      object mniSupplier1: TMenuItem
        Caption = 'Supplier'
        OnClick = mniSupplier1Click
      end
    end
    object mniLAPORAN1: TMenuItem
      Caption = 'LAPORAN'
      OnClick = mniLAPORAN1Click
    end
    object mniCLOSE1: TMenuItem
      Caption = 'CLOSE'
      OnClick = mniCLOSE1Click
    end
  end
end
