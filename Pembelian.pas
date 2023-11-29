unit Pembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    Label17: TLabel;
    Label18: TLabel;
    Edit9: TEdit;
    Label19: TLabel;
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  Edit9.Clear;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  Edit1.Enabled:= True;
  Edit2.Enabled:= True;
  Edit3.Enabled:= True;
  Edit4.Enabled:= True;
  Edit5.Enabled:= True;
  Edit6.Enabled:= True;
  Edit7.Enabled:= True;
  Edit8.Enabled:= True;
  Edit9.Enabled:= True;
end;

procedure TForm3.posisiawal;
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  Edit1.Enabled:= False;
  Edit2.Enabled:= False;
  Edit3.Enabled:= False;
  Edit4.Enabled:= False;
  Edit5.Enabled:= False;
  Edit6.Enabled:= False;
  Edit7.Enabled:= False;
  Edit8.Enabled:= False;
  Edit9.Enabled:= False;
end;

procedure TForm3.btn3Click(Sender: TObject);
var
  idUser: string;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') or (Edit4.Text = '') or (Edit5.Text = '') or (Edit6.Text = '') or (Edit7.Text = '') or (Edit8.Text = '') or (Edit9.Text = '') then
  begin
    ShowMessage('Semua input harus diisi!');
  end
  else
  begin
    // Pastikan Anda memperoleh ID saat ini sebelum melakukan Edit
    idUser := zqry1.FieldByName('id_pembelian').AsString;

    // Cek apakah ID input sama dengan ID yang ada di database
    if Edit1.Text = idUser then
    begin
      zqry1.Edit;
      zqry1.FieldByName('id_pembelian').AsString := Edit1.Text;
      zqry1.FieldByName('id_barang').AsString := Edit2.Text;
      zqry1.FieldByName('id_supplier').AsString := Edit3.Text;
      zqry1.FieldByName('id_user').AsString :=Edit4.Text;
      zqry1.FieldByName('nofaktur').AsString := Edit5.Text;
      zqry1.FieldByName('tglfaktur').AsString := Edit6.Text;
      zqry1.FieldByName('harga_beli').AsString :=Edit7.Text;
      zqry1.FieldByName('harga_jual').AsString := Edit8.Text;
      zqry1.FieldByName('banyak_keluar').AsString := Edit9.Text;
      zqry1.Post;

      ShowMessage('Data berhasil diperbarui!');
      posisiawal;
    end
    else
    begin
      ShowMessage('Perubahan ID tidak diizinkan');
      posisiawal;
    end;
  end;

end;

procedure TForm3.btn4Click(Sender: TObject);
var
  idUser: string;
begin
  // Memeriksa apakah ada baris yang dipilih untuk dihapus
  if not zqry1.IsEmpty then
  begin
    // Mengambil nilai ID dari kolom id_user
    idUser := zqry1.FieldByName('id_pembelian').AsString;

    // Konfirmasi penghapusan
    if MessageDlg('Anda yakin ingin menghapus data dengan ID ' + idUser + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      zqry1.Delete;
      ShowMessage('Data berhasil dihapus!');
      posisiawal; // Kembali ke posisi awal setelah penghapusan
    end;
  end
  else
  begin
    ShowMessage('Tidak ada data yang dipilih untuk dihapus!');
  end;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  Edit1.Text := zqry1.FieldByName('id_pembelian').AsString;
  Edit2.Text := zqry1.FieldByName('id_barang').AsString;
  Edit3.Text := zqry1.FieldByName('id_supplier').AsString;
  Edit4.Text := zqry1.FieldByName('id_user').AsString;
  Edit5.Text := zqry1.FieldByName('nofaktur').AsString;
  Edit6.Text := zqry1.FieldByName('tgl_faktur').AsString;
  Edit7.Text := zqry1.FieldByName('harga_beli').AsString;
  Edit8.Text := zqry1.FieldByName('harga_jual').AsString;
  Edit9.Text := zqry1.FieldByName('banyak_keluar').AsString;

  Edit1.Enabled := True;
  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;
  Edit5.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if Edit1.Text = '' then
    ShowMessage('Id Pembelian tidak boleh kosong!')
  else if Edit2.Text = '' then
    ShowMessage('Id Barang tidak boleh kosong!')
  else if Edit3.Text = '' then
    ShowMessage('Id Supplier tidak boleh kosong!')
  else if Edit4.Text = '' then
    ShowMessage('Id User tidak boleh kosong!')
  else if Edit5.Text = '' then
    ShowMessage('No Faktur tidak boleh kosong!')
  else if Edit6.Text = '' then
    ShowMessage('Tanggal Faktur tidak boleh kosong!')
  else if Edit7.Text = '' then
    ShowMessage('Harga Beli tidak boleh kosong!')
  else if Edit8.Text = '' then
    ShowMessage('Harga Jual tidak boleh kosong!')
  else if Edit9.Text = '' then
    ShowMessage('Banyak Keluar tidak boleh kosong!')
  else
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('INSERT INTO pembelian (id_pembelian, id_barang, id_supplier, id_user, nofaktur, tglfaktur, harga_beli, harga_jual, banyak_keluar) ' +
                  'VALUES (:id_pembelian, :id_barang, :id_supplier, :id_user, :nofaktur, :tglfaktur, :harga_beli, :harga_jual, :banyak_keluar)');
    zqry1.ParamByName('id_pembelian').AsString := Edit1.Text;
    zqry1.ParamByName('id_barang').AsString := Edit2.Text;
    zqry1.ParamByName('id_supplier').AsString := Edit3.Text;
    zqry1.ParamByName('id_user').AsString := Edit4.Text;
    zqry1.ParamByName('nofaktur').AsString := Edit5.Text;
    zqry1.ParamByName('tglfaktur').AsString := Edit6.Text;
    zqry1.ParamByName('harga_beli').AsString := Edit7.Text;
    zqry1.ParamByName('harga_jual').AsString := Edit8.Text;
    zqry1.ParamByName('banyak_keluar').AsString := Edit9.Text;
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM pembelian');
    zqry1.Open;
    ShowMessage('Data berhasil disimpan!');
    posisiawal;
  end;
end;

end.
