unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm8 = class(TForm)
    mm1: TMainMenu;
    mniLogin1: TMenuItem;
    mniabel1: TMenuItem;
    mniUser1: TMenuItem;
    mniPembelian1: TMenuItem;
    mniPembelian2: TMenuItem;
    mniPenjualan1: TMenuItem;
    mniPelanggan1: TMenuItem;
    mniStok1: TMenuItem;
    mniSupplier1: TMenuItem;
    procedure mniUser1Click(Sender: TObject);
    procedure mniPembelian1Click(Sender: TObject);
    procedure mniPembelian2Click(Sender: TObject);
    procedure mniPenjualan1Click(Sender: TObject);
    procedure mniPelanggan1Click(Sender: TObject);
    procedure mniStok1Click(Sender: TObject);
    procedure mniSupplier1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses User, Barang, Pembelian, Penjualan, Pelanggan, Stok, Supplier;

{$R *.dfm}

procedure TForm8.mniUser1Click(Sender: TObject);
begin
Form1.showmodal;
end;

procedure TForm8.mniPembelian1Click(Sender: TObject);
begin
Form2.showmodal;
end;

procedure TForm8.mniPembelian2Click(Sender: TObject);
begin
Form3.showmodal;
end;

procedure TForm8.mniPenjualan1Click(Sender: TObject);
begin
Form4.showmodal;
end;

procedure TForm8.mniPelanggan1Click(Sender: TObject);
begin
Form5.showmodal;
end;

procedure TForm8.mniStok1Click(Sender: TObject);
begin
Form6.showmodal;
end;

procedure TForm8.mniSupplier1Click(Sender: TObject);
begin
Form7.showmodal;
end;

end.
