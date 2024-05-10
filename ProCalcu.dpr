program ProCalcu;

uses
  Vcl.Forms,
  Calculadora in 'Calculadora.pas' {FormCalculadora},
  MemoForm in 'MemoForm.pas' {FormMemo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCalculadora, FormCalculadora);
  Application.Run;
end.
