program TokoPertanian;

uses
  Forms,
  User in 'User.pas' {Form1},
  Barang in 'Barang.pas' {Form2},
  Pembelian in 'Pembelian.pas' {Form3},
  Penjualan in 'Penjualan.pas' {Form4},
  Pelanggan in 'Pelanggan.pas' {Form5},
  Stok in 'Stok.pas' {Form6},
  Supplier in 'Supplier.pas' {Form7},
  MainMenu in 'MainMenu.pas' {Form8},
  UnitLogin in 'UnitLogin.pas' {Form9},
  UnitSetelahLogin in 'UnitSetelahLogin.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
