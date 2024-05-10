unit MemoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormMemo = class(TForm)
    FormMemo: TMemo;
    btnSalirMemo: TButton;
    btnlimpiar: TButton;
    procedure btnSalirMemoClick(Sender: TObject);
    function leerArchivo(var Resultados: String): String;
    procedure FormCreate(Sender: TObject);
    procedure btnlimpiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMemo: TFormMemo;
  Resultados:  String;

implementation

{$R *.dfm}



{Bot�n de salir}
procedure TFormMemo.btnlimpiarClick(Sender: TObject);
var Archivo: TextFile;
var rutaTrabajo: String;
begin
  rutaTrabajo :=  'C:\grupo_cie\Resultado\archivo.txt';
  AssignFile(Archivo, rutaTrabajo);
  FormMemo.Lines.Clear;
end;

procedure TFormMemo.btnSalirMemoClick(Sender: TObject);
begin
close;
end;


procedure TFormMemo.FormCreate(Sender: TObject);
begin
  leerArchivo(resultados);
end;

{Leer archivo}
function TFormMemo.leerArchivo(var Resultados: String): String;
var Linea: String;
var Archivo: TextFile;
var rutaTrabajo: String;
var i: integer;
begin
  FormMemo.Lines.Clear;
  rutaTrabajo :=  'C:\grupo_cie\Resultado\archivo.txt';
  AssignFile(Archivo, rutaTrabajo);
  FormMemo.Lines.Add('OPERACIONES');
  Reset(Archivo);
  while not Eof(Archivo) do
    begin
      Readln(Archivo, Linea);
      FormMemo.Lines.Add(Linea);
    end;
  CloseFile(archivo);
end;

end.
