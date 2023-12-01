unit Pelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TForm5 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    btn4: TButton;
    Button1: TButton;
    DBGrid1: TDBGrid;
    lbl1: TLabel;
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.bersih;
begin
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  Button1.Enabled:= True;
  Edit2.Enabled:= True;
  Edit3.Enabled:= True;
  Edit4.Enabled:= True;
  Edit5.Enabled:= True;
end;

procedure TForm5.posisiawal;
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  Button1.Enabled:= False;
  Edit2.Enabled:= False;
  Edit3.Enabled:= False;
  Edit4.Enabled:= False;
  Edit5.Enabled:= False;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
if Edit2.Text = '' then
    ShowMessage('Nama Pelanggan tidak boleh kosong!')
  else if Edit3.Text = '' then
    ShowMessage('Telepon Pelanggan tidak boleh kosong!')
  else if Edit4.Text = '' then
    ShowMessage('Email Pelanggan tidak boleh kosong!')
  else if Edit5.Text = '' then
    ShowMessage('Alamat tidak boleh kosong!')
  else
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('INSERT INTO pelanggan VALUES (null, "'+Edit2.Text+'", "'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'")');
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM pelanggan');
    zqry1.Open;
    ShowMessage('Data berhasil disimpan!');
    posisiawal;
  end;
end;

procedure TForm5.btn3Click(Sender: TObject);
var
  idUserBeforeEdit: string;
  namaLengkapBeforeEdit: string;
  telpPelangganBeforeEdit: string;
  emailPelangganBeforeEdit: string;
  alamatBeforeEdit: string;
begin
  if (Edit2.Text = '') or (Edit3.Text = '') or (Edit4.Text = '') or (Edit5.Text = '') then
  begin
    ShowMessage('Semua input harus diisi!');
    Exit;
  end;

  idUserBeforeEdit := zqry1.FieldByName('id_pelanggan').AsString;

  // Simpan nilai sebelumnya untuk setiap kolom
  namaLengkapBeforeEdit := zqry1.FieldByName('nama_lengkap').AsString;
  telpPelangganBeforeEdit := zqry1.FieldByName('telp_pelanggan').AsString;
  emailPelangganBeforeEdit := zqry1.FieldByName('email_pelanggan').AsString;
  alamatBeforeEdit := zqry1.FieldByName('alamat').AsString;

  if (Edit2.Text <> namaLengkapBeforeEdit) or
     (Edit3.Text <> telpPelangganBeforeEdit) or
     (Edit4.Text <> emailPelangganBeforeEdit) or
     (Edit5.Text <> alamatBeforeEdit) then
  begin
    zqry1.Edit;
    zqry1.FieldByName('nama_lengkap').AsString := Edit2.Text;
    zqry1.FieldByName('telp_pelanggan').AsString := Edit3.Text;
    zqry1.FieldByName('email_pelanggan').AsString := Edit4.Text;
    zqry1.FieldByName('alamat').AsString := Edit5.Text;
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

procedure TForm5.btn4Click(Sender: TObject);
var
  idUser: string;
begin
  // Memeriksa apakah ada baris yang dipilih untuk dihapus
  if not zqry1.IsEmpty then
  begin
    // Mengambil nilai ID dari kolom id_user
    idUser := zqry1.FieldByName('id_pelanggan').AsString;

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

procedure TForm5.Button1Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
  Edit2.Text := zqry1.FieldByName('nama_lengkap').AsString;
  Edit3.Text := zqry1.FieldByName('telp_pelanggan').AsString;
  Edit4.Text := zqry1.FieldByName('email_pelanggan').AsString;
  Edit5.Text := zqry1.FieldByName('alamat').AsString;

  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;
  Edit5.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := True;
  btn4.Enabled := True;
  Button1.Enabled := True;
end;

end.

procedure TForm5.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin

end;

end.
