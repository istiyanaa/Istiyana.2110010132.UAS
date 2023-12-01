unit UnitLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm9 = class(TForm)
    shp1: TShape;
    shp2: TShape;
    shp3: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses UnitSetelahLogin, MainMenu;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
if (Edit1.Text='admin') and (Edit2.Text='admin')
  then
  begin
    form9.Hide;
    form8.show;
    form8.Label1.Caption:='Selamat Datang Di Toko Butani';
    end
    else
    begin
    ShowMessage('Username atau Password salah');
    Edit1.Text:='';
    Edit2.Text:='';
    Edit1.SetFocus;
    Edit2.SetFocus;
  end;
  end;

procedure TForm9.Button2Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
