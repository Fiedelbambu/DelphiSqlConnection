program SQL_Connector;

uses
  Vcl.Forms,
  Connector in 'Connector.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
