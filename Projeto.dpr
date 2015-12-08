program Projeto;

uses
  Forms,
  uMain in 'uMain.pas' {Form1},
  uTransporte in 'uTransporte.pas',
  uCarro in 'uCarro.pas',
  uAviao in 'uAviao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
