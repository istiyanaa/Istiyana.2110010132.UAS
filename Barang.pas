unit Barang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm2 = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    Edit1: TEdit;
    Label1: TLabel;
    lbl1: TLabel;
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.bersih;
begin
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  Edit3.Enabled:= True;
  Edit4.Enabled:= True;
  Edit5.Enabled:= True;
  Edit6.Enabled:= True;
end;

procedure TForm2.posisiawal;
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  Edit3.Enabled:= False;
  Edit4.Enabled:= False;
  Edit5.Enabled:= False;
  Edit6.Enabled:= False;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
    ShowMessage('Id Stok tidak boleh kosong!');
end else
if Edit3.Text = '' then
begin
    ShowMessage('Nama Barang tidak boleh kosong!');
end else
if Edit4.Text = '' then
begin
    ShowMessage('Satuan tidak boleh kosong!');
end else
if Edit5.Text = '' then
begin
    ShowMessage('Harga Beli tidak boleh kosong!');
end else
if Edit6.Text = '' then
begin
    ShowMessage('Harga Jual tidak boleh kosong!');
end else
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('INSERT INTO barang VALUES (null, "'+Edit1.Text+'", "'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'")');
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM barang');
    zqry1.Open;
    ShowMessage('Data berhasil disimpan!');
    posisiawal;
  end;
end;

procedure TForm2.btn3Click(Sender: TObject);
var
  idBarang: string;
  namaBarangBeforeEdit: string;
  satuanBeforeEdit: string;
  hargaBeliBeforeEdit: string;
  hargaJualBeforeEdit: string;
begin
  if (Edit3.Text = '') or (Edit4.Text = '') or (Edit5.Text = '') or (Edit6.Text = '') then
  begin
    ShowMessage('Semua input harus diisi!');
  end
  else
  begin
    idBarang := zqry1.FieldByName('id_barang').AsString;
    namaBarangBeforeEdit := zqry1.FieldByName('nama_barang').AsString;
    satuanBeforeEdit := zqry1.FieldByName('satuan').AsString;
    hargaBeliBeforeEdit := zqry1.FieldByName('harga_beli').AsString;
    hargaJualBeforeEdit := zqry1.FieldByName('harga_jual').AsString;

    if (Edit3.Text <> namaBarangBeforeEdit) or (Edit4.Text <> satuanBeforeEdit) or
       (Edit5.Text <> hargaBeliBeforeEdit) or (Edit6.Text <> hargaJualBeforeEdit) then
    begin
      zqry1.Edit;
      zqry1.FieldByName('nama_barang').AsString := Edit3.Text;
      zqry1.FieldByName('satuan').AsString := Edit4.Text;
      zqry1.FieldByName('harga_beli').AsString := Edit5.Text;
      zqry1.FieldByName('harga_jual').AsString := Edit6.Text;
      zqry1.Post;

      ShowMessage('Data berhasil diperbarui!');
      posisiawal;
    end
    else
    begin
      ShowMessage('Data tidak ada perubahan');
      posisiawal;
    end;
  end;
end;

procedure TForm2.btn4Click(Sender: TObject);
var
  idUser: string;
begin
  // Memeriksa apakah ada baris yang dipilih untuk dihapus
  if not zqry1.IsEmpty then
  begin
    // Mengambil nilai ID dari kolom id_user
    idUser := zqry1.FieldByName('id_barang').AsString;

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

procedure TForm2.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
  Edit3.Text := zqry1.FieldByName('nama_barang').AsString;
  Edit4.Text := zqry1.FieldByName('satuan').AsString;
  Edit5.Text := zqry1.FieldByName('harga_beli').AsString;
  Edit6.Text := zqry1.FieldByName('harga_jual').AsString;

  Edit3.Enabled := True;
  Edit4.Enabled := True;
  Edit5.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
end;

end.
