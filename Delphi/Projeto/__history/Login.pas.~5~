unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    Image1: TImage;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    btnLogin: TSpeedButton;
    procedure efetuarLogin();
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses Principal, Modulo;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  efetuarLogin();
end;

procedure TfrmLogin.efetuarLogin;
begin
  if((edtUsuario.Text='')OR(edtSenha.Text=''))then
  begin
    showmessage('Informe os dados solicitados');
    edtUsuario.Clear;
    edtSenha.Clear;
    edtUsuario.SetFocus;
  end
  else
  begin
    usuario :=edtUsuario.Text;
    frmPrincipal:= TfrmPrincipal.Create(self);
    frmPrincipal.Show;
    frmLogin.Close;
  end;

end;

end.
