program XSD_TEST;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  Default_CBI_Sale in 'Default_CBI_Sale.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
