unit Supplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm7 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
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
    lbl1: TLabel;
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.bersih;
begin
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  Edit2.Enabled:= True;
  Edit3.Enabled:= True;
  Edit4.Enabled:= True;
  Edit5.Enabled:= True;
end;

procedure TForm7.posisiawal;
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  Edit2.Enabled:= False;
  Edit3.Enabled:= False;
  Edit4.Enabled:= False;
  Edit5.Enabled:= False;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
if Edit2.Text = '' then
    ShowMessage('Nama Supplier tidak boleh kosong!')
  else if Edit3.Text = '' then
    ShowMessage('Alamat Supplier tidak boleh kosong!')
  else if Edit4.Text = '' then
    ShowMessage('Telpon Supplier tidak boleh kosong!')
  else if Edit5.Text = '' then
    ShowMessage('Email Supplier tidak boleh kosong!')
  else
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('INSERT INTO supplier VALUES (null, "'+Edit2.Text+'", "'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'")');
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM supplier');
    zqry1.Open;
    ShowMessage('Data berhasil disimpan!');
    posisiawal;
  end;
end;

procedure TForm7.btn4Click(Sender: TObject);
var
  idUser: string;
begin
  // Memeriksa apakah ada baris yang dipilih untuk dihapus
  if not zqry1.IsEmpty then
  begin
    // Mengambil nilai ID dari kolom id_supplier
    idUser := zqry1.FieldByName('id_supplier').AsString;

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

procedure TForm7.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
  Edit2.Text := zqry1.FieldByName('nama_supplier').AsString;
  Edit3.Text := zqry1.FieldByName('alamat_supplier').AsString;
  Edit4.Text := zqry1.FieldByName('telp_supplier').AsString;
  Edit5.Text := zqry1.FieldByName('email_supplier').AsString;

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

procedure TForm7.btn3Click(Sender: TObject);
var
  namaSupplierBeforeEdit: string;
  alamatSupplierBeforeEdit: string;
  telpSupplierBeforeEdit: string;
  emailSupplierBeforeEdit: string;
begin
  if (Edit2.Text = '') or (Edit3.Text = '') or (Edit4.Text = '') or (Edit5.Text = '') then
  begin
    ShowMessage('Semua input harus diisi!');
  end
  else
  begin
    namaSupplierBeforeEdit := zqry1.FieldByName('nama_supplier').AsString;
    alamatSupplierBeforeEdit := zqry1.FieldByName('alamat_supplier').AsString;
    telpSupplierBeforeEdit := zqry1.FieldByName('telp_supplier').AsString;
    emailSupplierBeforeEdit := zqry1.FieldByName('email_supplier').AsString;

    if (Edit2.Text <> namaSupplierBeforeEdit) then
    begin
      ShowMessage('Perubahan ID tidak diizinkan');
      posisiawal;
    end
    else
    begin
      if (Edit2.Text <> namaSupplierBeforeEdit) or
         (Edit3.Text <> alamatSupplierBeforeEdit) or
         (Edit4.Text <> telpSupplierBeforeEdit) or
         (Edit5.Text <> emailSupplierBeforeEdit) then
      begin
        zqry1.Edit;
        zqry1.FieldByName('nama_supplier').AsString := Edit2.Text;
        zqry1.FieldByName('alamat_supplier').AsString := Edit3.Text;
        zqry1.FieldByName('telp_supplier').AsString := Edit4.Text;
        zqry1.FieldByName('email_supplier').AsString := Edit5.Text;
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
end;

end.
