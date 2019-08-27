unit Cargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Data.DB, frameBotoes, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCargo = class(TForm)
    Image1: TImage;
    lblCodigo: TLabel;
    lblNome: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    DBGrid1: TDBGrid;
    TFrame11: TFrame1;
    procedure FormCreate(Sender: TObject);
    procedure TFrame11btnNovoClick(Sender: TObject);
    procedure TFrame11btnSalvarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure TFrame11btnEditarClick(Sender: TObject);
    procedure TFrame11btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCargo: TfrmCargo;

implementation

{$R *.dfm}

procedure TfrmCargo.DBGrid1CellClick(Column: TColumn);
begin
  edtNome.Enabled:=FALSE;
  edtNome.SetFocus;
  TFrame11.btnNovo.Enabled:=TRUE;
  TFrame11.btnSalvar.Enabled:=FALSE;
  Tframe11.btnEditar.Enabled:=TRUE;
  TFrame11.btnExcluir.Enabled:=TRUE;
end;

procedure TfrmCargo.FormCreate(Sender: TObject);
begin
  edtCodigo.Enabled:= FALSE;
  edtNome.Enabled:= FALSE;
  TFrame11.btnNovo.Enabled:=TRUE;
  TFrame11.btnSalvar.Enabled:=FALSE;
  Tframe11.btnEditar.Enabled:=FALSE;
  TFrame11.btnExcluir.Enabled:=FALSE;
end;

procedure TfrmCargo.TFrame11btnEditarClick(Sender: TObject);
begin
  edtNome.Enabled:= TRUE;
  TFrame11.btnNovo.Enabled:=FALSE;
  TFrame11.btnSalvar.Enabled:=TRUE;
  Tframe11.btnEditar.Enabled:=FALSE;
  TFrame11.btnExcluir.Enabled:=FALSE;
end;

procedure TfrmCargo.TFrame11btnExcluirClick(Sender: TObject);
begin
  if(MessageDlg('Deseja realmente excluir?',mtConfirmation,mbYesNo,0)=mrYes)then
  begin

  end
  else
  begin
    edtNome.Clear;
    TFrame11.btnNovo.Enabled:=TRUE;
  TFrame11.btnSalvar.Enabled:=FALSE;
  Tframe11.btnEditar.Enabled:=FALSE;
  TFrame11.btnExcluir.Enabled:=FALSE;
  end;
end;

procedure TfrmCargo.TFrame11btnNovoClick(Sender: TObject);
begin
  edtCodigo.Enabled:=TRUE;
  edtNome.Enabled:= TRUE;
  edtNome.Clear;
  edtNome.SetFocus;
  TFrame11.btnNovo.Enabled:=FALSE;
  TFrame11.btnSalvar.Enabled:=TRUE;
  Tframe11.btnEditar.Enabled:=FALSE;
  TFrame11.btnExcluir.Enabled:=FALSE;
end;

procedure TfrmCargo.TFrame11btnSalvarClick(Sender: TObject);
begin
  if(edtNome.Text='')then
  begin
    ShowMessage('O nome deve ser preenchido');
    edtNome.SetFocus;
  end
  else
  begin
    ShowMessage('Dados salvos com sucesso');
    edtCodigo.Enabled:= FALSE;
    edtNome.Enabled:= FALSE;
    edtCodigo.Clear;
    edtNome.Clear;
    TFrame11.btnNovo.Enabled:=TRUE;
    TFrame11.btnSalvar.Enabled:=FALSE;
    Tframe11.btnEditar.Enabled:=FALSE;
    TFrame11.btnExcluir.Enabled:=FALSE;;
  end;

end;

end.
