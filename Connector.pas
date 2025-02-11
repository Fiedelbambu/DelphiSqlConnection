unit Connector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ADODB, Vcl.StdCtrls, Data.DB;

type
  TForm1 = class(TForm)
    btn_Connection: TButton;
    lbl_Info: TLabel;
    ADOConnection1: TADOConnection;
    procedure btn_ConnectionClick(Sender: TObject);
  private
    procedure ConnectToMySQL;
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ConnectToMySQL;
begin
  // DSN-loser ConnectionString unter Verwendung des MySQL ODBC-Treibers.
  ADOConnection1.ConnectionString :=
    'Provider=MSDASQL;' +
    'Driver={MySQL ODBC 9.2 Unicode Driver};' +  // Alternativ: {MySQL ODBC 8.0 ANSI Driver}
    'Server=localhost;' +
    'Database=testdb;' +
    'User=admin;' +
    'Password=admin;' +
    'Option=3;';

  // Unterdrückt das Login-Popup, falls vorhanden
  ADOConnection1.LoginPrompt := False;

  try
    ADOConnection1.Open;
    lbl_Info.Caption := 'Verbindung hergestellt';
  except
    on E: Exception do
    begin
      lbl_Info.Caption := 'keine Verbindung';
      ShowMessage('Fehler beim Verbinden: ' + E.Message);
    end;
  end;
end;

procedure TForm1.btn_ConnectionClick(Sender: TObject);
begin
  ConnectToMySQL;
end;

end.

