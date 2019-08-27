unit Projeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, frameBotoes, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TfrmProjeto = class(TForm)
    PageControl1: TPageControl;
    abaPrj: TTabSheet;
    abaFun: TTabSheet;
    frmBotoesPrj: TFrame1;
    edtCodigo: TEdit;
    edtTitulo: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    cmbReponsavel: TComboBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    cmbProjeto: TComboBox;
    cmbFuncionario: TComboBox;
    codProjeto: TEdit;
    frmBotoesFun: TFrame1;
    codFuncionario: TEdit;
    Image1: TImage;
    lblFuncionario: TLabel;
    lblProjeto: TLabel;
    Label3: TLabel;
    Image2: TImage;
    lblTitulo: TLabel;
    lblDataInicio: TLabel;
    lblDataFinal: TLabel;
    lblCodigo: TLabel;
    cbConcluido: TCheckBox;
    lblResponsavel: TLabel;
    MemoDescricao: TMemo;
    lblDescricao: TLabel;
    procedure habilitaPrj();
    procedure desabilitaPrj();
    procedure habilitaFun();
    procedure desabilitaFun();
    procedure FormCreate(Sender: TObject);
    procedure frmBotoesPrjbtnNovoClick(Sender: TObject);
    procedure frmBotoesPrjbtnSalvarClick(Sender: TObject);
    procedure frmBotoesFunbtnNovoClick(Sender: TObject);
    procedure frmBotoesFunbtnSalvarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProjeto: TfrmProjeto;

implementation

{$R *.dfm}


{ TfrmProjeto }

procedure TfrmProjeto.FormCreate(Sender: TObject);
begin
    //Desabilita os campos dos dois forms
    desabilitaPrj();
    desabilitaFun();
    //Botoes de projeto
    frmBotoesPrj.btnNovo.Enabled:=TRUE;
    frmBotoesPrj.btnSalvar.Enabled:=FALSE;
    frmBotoesPrj.btnEditar.Enabled:=FALSE;
    frmBotoesPrj.btnExcluir.Enabled:=FALSE;
    //Botoes de Funcionarios
    frmBotoesFun.btnNovo.Enabled:=TRUE;
    frmBotoesFun.btnSalvar.Enabled:=FALSE;
    frmBotoesFun.btnEditar.Enabled:=FALSE;
    frmBotoesFun.btnExcluir.Enabled:=FALSE;


end;



procedure TfrmProjeto.frmBotoesPrjbtnNovoClick(Sender: TObject);
begin
  //Quando clicar no botaoPRJ novo
  habilitaPrj();
  frmBotoesPrj.btnNovo.Enabled:=FALSE;
  frmBotoesPrj.btnSalvar.Enabled:=TRUE;
  frmBotoesPrj.btnEditar.Enabled:=FALSE;
  frmBotoesPrj.btnExcluir.Enabled:=FALSE;
end;

procedure TfrmProjeto.frmBotoesPrjbtnSalvarClick(Sender: TObject);
begin
  //Validação do campo titulo do projeto do form Dados do projeto
  if(edtTitulo.Text='')then
  begin
    ShowMessage('O título precisa ser preenchido');
    edtTitulo.SetFocus;
  end
  else
  begin
    //Gravação no banco de dados
    ShowMessage('Dados salvos');
    desabilitaPrj();
    frmBotoesPrj.btnNovo.Enabled:=TRUE;
    frmBotoesPrj.btnSalvar.Enabled:=TRUE;
    frmBotoesPrj.btnEditar.Enabled:=FALSE;
    frmBotoesPrj.btnExcluir.Enabled:=FALSE;
  end;
end;


procedure TfrmProjeto.frmBotoesFunbtnNovoClick(Sender: TObject);
begin
  //Quando clicar no botaoFun novo
  habilitaFun();
  frmBotoesFun.btnNovo.Enabled:=FALSE;
  frmBotoesFun.btnSalvar.Enabled:=TRUE;
  frmBotoesFun.btnEditar.Enabled:=FALSE;
  frmBotoesFun.btnExcluir.Enabled:=FALSE;
end;


procedure TfrmProjeto.frmBotoesFunbtnSalvarClick(Sender: TObject);
begin
  //Validar o campo projeto e funcionario da form Funcionarios do projeto
  if((cmbProjeto.Text='')or(cmbFuncionario.Text=''))then
  begin
    ShowMessage('Os dados precisam ser preenchidos');
    cmbProjeto.SetFocus;
  end
  else
  begin
    //Gravação no banco de dados
    ShowMessage('Dados salvos');
    desabilitaFun();
    frmBotoesFun.btnNovo.Enabled:=TRUE;
    frmBotoesFun.btnSalvar.Enabled:=FALSE;
    frmBotoesFun.btnEditar.Enabled:=FALSE;
    frmBotoesFun.btnExcluir.Enabled:=FALSE;
  end;
end;

procedure TfrmProjeto.habilitaFun;
begin
    //Desabilitando os campos do form Funcionarios do projeto
    cmbProjeto.Enabled:=TRUE;
    cmbFuncionario.Enabled:=TRUE;
end;

procedure TfrmProjeto.desabilitaFun;
begin
  cmbProjeto.Enabled:=FALSE;
  cmbFuncionario.Enabled:=FALSE;
  //Limpa os campos da aba funcionarios do projeto
  cmbProjeto.Clear;
  cmbFuncionario.Clear;
end;

procedure TfrmProjeto.habilitaPrj;
begin
  //Habilita todos os campos
  edtCodigo.Enabled:= TRUE;
  edtTitulo.Enabled:= TRUE;
  MemoDescricao.Enabled:= TRUE;
  DateTimePicker1.Enabled:= TRUE;
  DateTimePicker2.Enabled:= TRUE;
  cmbReponsavel.Enabled:= TRUE;
  cbConcluido.Enabled:= TRUE;
end;

procedure TfrmProjeto.desabilitaPrj;
begin
  //Desabilita todos os campos
  edtCodigo.Enabled:= FALSE;
  edtTitulo.Enabled:= FALSE;
  MemoDescricao.Enabled:= FALSE;
  DateTimePicker1.Enabled:= FALSE;
  DateTimePicker2.Enabled:= FALSE;
  cmbReponsavel.Enabled:= FALSE;
  cbConcluido.Enabled:= FALSE;
  //Limpa os campos
  edtCodigo.Clear;
  edtTitulo.Clear;
  MemoDescricao.Clear;
  cmbReponsavel.Clear;
end;



end.
