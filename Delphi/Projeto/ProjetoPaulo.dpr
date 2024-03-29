program ProjetoPaulo;

uses
  Vcl.Forms,
  Login in 'Login.pas' {frmLogin},
  Principal in 'Principal.pas' {frmPrincipal},
  Sobre in 'Sobre.pas' {frmSobre},
  frameBotoes in 'frameBotoes.pas' {Frame1: TFrame},
  Cargo in 'Cargo.pas' {frmCargo},
  Funcionarios in 'Funcionarios.pas' {frmFuncionarios},
  Modulo in 'Modulo.pas' {DataModule1: TDataModule},
  Projeto in 'Projeto.pas' {frmProjeto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Controle de Funcionários';
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmFuncionarios, frmFuncionarios);
  Application.CreateForm(TfrmCargo, frmCargo);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmProjeto, frmProjeto);
  Application.Run;
end.
