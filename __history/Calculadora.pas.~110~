unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, inifiles, system.IOUtils;

type
  TFormCalculadora = class(TForm)
    btnSuma: TButton;
    editResultado: TEdit;
    btnSiete: TButton;
    btnCinco: TButton;
    btnSeis: TButton;
    btnCuatro: TButton;
    btnCero: TButton;
    btnNueve: TButton;
    btnOcho: TButton;
    btnUno: TButton;
    btnDos: TButton;
    btnTres: TButton;
    btnResta: TButton;
    btnPunto: TButton;
    btnDiv: TButton;
    btnMulti: TButton;
    btnIgual: TButton;
    btnCE: TButton;
    btnsalir: TButton;
    btnMemo: TButton;
    btnLimpieza: TButton;
    procedure btnCeroClick(Sender: TObject);
    procedure btnUnoClick(Sender: TObject);
    procedure btnDosClick(Sender: TObject);
    procedure btnTresClick(Sender: TObject);
    procedure btnCuatroClick(Sender: TObject);
    procedure btnCincoClick(Sender: TObject);
    procedure btnSeisClick(Sender: TObject);
    procedure btnSieteClick(Sender: TObject);
    procedure btnOchoClick(Sender: TObject);
    procedure btnNueveClick(Sender: TObject);
    procedure btnPuntoClick(Sender: TObject);
    procedure btnSumaClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnRestaClick(Sender: TObject);
    procedure btnMultiClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnCEClick(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    function calcular(var num1: String; num2 : String; resultado : String): Double;
    procedure FormCreate(Sender: TObject);
    procedure btnMemoClick(Sender: TObject);
    function carpeta(var Path: String; var Fichero: String; rutaTrabajo : String): String;
    function guardarDatos(var Resultados: String): String;
    procedure btnLimpiezaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalculadora: TFormCalculadora;
   a : Double;
   b : Double;
   operacion : String;

   //fichero
   Path : String;
   Fichero : String;
   rutaTrabajo : String;
   datos : TCustomIniFile;

implementation

{$R *.dfm}

uses MemoForm;
 //botón de limpieza de variables y pantalla
procedure TFormCalculadora.btnCEClick(Sender: TObject);
begin
editResultado.Clear;
a := 0;
b := 0;
btnPunto.Enabled:=true;
end;
 //botones de números
procedure TFormCalculadora.btnCeroClick(Sender: TObject);
begin
editResultado.Text := editResultado.Text + '0';
end;

procedure TFormCalculadora.btnUnoClick(Sender: TObject);
begin
editResultado.Text := editResultado.Text + '1';
end;



function TFormCalculadora.calcular(var num1: String; num2 : String; resultado : String): Double;
begin
num1 := '5';
num2 :='6';
result:=0;
end;
//función carpeta para crear carpeta y el archivo txt
function TFormCalculadora.carpeta(var Path: String;
  var Fichero: String; rutaTrabajo : String): String;
  var Archivo: TextFile;
  Linea: string;
begin
Path := 'C:\grupo_cie';
Fichero := '\Resultado';
rutaTrabajo := Path+Fichero;


  if not DirectoryExists(rutaTrabajo) then
    CreateDir(rutaTrabajo);
  if not FileExists(rutaTrabajo + '\archivo.txt') then
    begin
      AssignFile(Archivo, rutaTrabajo + '\archivo.txt'); // Asigna un nombre al archivo
      Rewrite(Archivo); // Crea el archivo o sobreescribe si ya existe
      writeln(Archivo, '¡DATOS!');  // Escribe en el archivo
      CloseFile(Archivo) // Cierra el archivo
    end
  else
  begin
      AssignFile(Archivo, rutaTrabajo +'\archivo.txt');//Asigno un nombre al archivo
      Append(Archivo);//agrego datos al archivo
      CloseFile(Archivo); //cierro el archivo
  end;

end;

//Oncreate
procedure TFormCalculadora.FormCreate(Sender: TObject);
var cero, uno: string;

begin
    carpeta(Path,Fichero, rutaTrabajo);
end;

//guardar datos
function TFormCalculadora.guardarDatos(var Resultados: String): String;
 var Archivo : TextFile;
  i: Integer;
 var Linea : String;

  begin
    rutaTrabajo :=  'C:\grupo_cie\Resultado\archivo.txt';
    AssignFile(Archivo, rutaTrabajo);
    Append(Archivo); // Abrir el archivo para escritura
    writeln(Archivo, Resultados); // Agregar cada línea al resultado
    CloseFile(Archivo); //cerramos el archivo
  end;


procedure TFormCalculadora.btnDosClick(Sender: TObject);
begin
  editResultado.Text := editResultado.Text + '2';
end;

procedure TFormCalculadora.btnTresClick(Sender: TObject);
begin
  editResultado.Text := editResultado.Text + '3';
end;

procedure TFormCalculadora.btnCuatroClick(Sender: TObject);
begin
  editResultado.Text := editResultado.Text + '4';
end;

procedure TFormCalculadora.btnCincoClick(Sender: TObject);
begin
  editResultado.Text := editResultado.Text + '5';
end;

procedure TFormCalculadora.btnSeisClick(Sender: TObject);
begin
  editResultado.Text := editResultado.Text + '6';
end;

procedure TFormCalculadora.btnSieteClick(Sender: TObject);
begin
  editResultado.Text := editResultado.Text + '7';
end;

procedure TFormCalculadora.btnOchoClick(Sender: TObject);
begin
  editResultado.Text := editResultado.Text + '8';
end;

procedure TFormCalculadora.btnNueveClick(Sender: TObject);
begin
  editResultado.Text := editResultado.Text + '9';
end;

 //Botón de los decimales
procedure TFormCalculadora.btnPuntoClick(Sender: TObject);
begin
editResultado.Text := editResultado.Text + ',';
btnPunto.Enabled:=false;
end;

 //botones de operaciones
procedure TFormCalculadora.btnDivClick(Sender: TObject);
begin
a := StrToFloat(editResultado.Text);
editResultado.Clear;
operacion := 'div';
btnPunto.Enabled:=true;
end;


procedure TFormCalculadora.btnMultiClick(Sender: TObject);
begin
a := StrToFloat(editResultado.Text);
editResultado.Clear;
operacion := 'mul';
btnPunto.Enabled:=true;
end;

procedure TFormCalculadora.btnRestaClick(Sender: TObject);
begin
  a := StrToFloat(editResultado.Text);
  editResultado.Clear;
  operacion := 'res';
  btnPunto.Enabled:=true;
end;

procedure TFormCalculadora.btnSumaClick(Sender: TObject);
begin
  a := StrToFloat(editResultado.Text);
  editResultado.Clear;
  operacion := 'sum';
  btnPunto.Enabled:=true;
end;

 //Botón de igual con la opción de la operación
procedure TFormCalculadora.btnIgualClick(Sender: TObject);
var Resultados : String;
begin
  btnPunto.Enabled:=true;
  b := StrToFloat(editResultado.Text);
  editResultado.Clear;

  if(operacion = 'sum')then
    begin
      editResultado.Text := (a + b).ToString;
      Resultados := (a.ToString + ' + ' + b.ToString + ' = ' + (a+b).ToString);
      guardarDatos(Resultados);
    end
  else if (operacion = 'res')then
    begin
       editResultado.Text := (a - b).ToString;
       Resultados := (a.ToString + ' - ' + b.ToString + ' = ' + (a-b).ToString);
       guardarDatos(Resultados);
    end
  else if (operacion = 'mul') then
    begin
       editResultado.Text := (a * b).ToString;
       Resultados := (a.ToString + ' x ' + b.ToString + ' = ' + (a*b).ToString);
       guardarDatos(Resultados);
    end
  else if(operacion = 'div') then
    begin
      editResultado.Text := (a / b).ToString;
      Resultados := (a.ToString + ' / ' + b.ToString + ' = ' + (a/b).ToString);
      guardarDatos(Resultados);
    end
  else
    begin
      showMessage('Error');
    end;
end;
//Botón de reseteo de historial
procedure TFormCalculadora.btnLimpiezaClick(Sender: TObject);
begin
    rutaTrabajo := 'C:\grupo_cie\Resultado\archivo.txt';
    DeleteFile(rutaTrabajo);
    carpeta(Path,Fichero, rutaTrabajo);
end;

//botón de cierre de la aplicación
procedure TFormCalculadora.btnsalirClick(Sender: TObject);
begin
close;
end;

//botón de abrir nueva pantalla
procedure TFormCalculadora.btnMemoClick(Sender: TObject);
begin
  Application.CreateForm(TFormMemo, FormMemo);
  FormMemo.Show;
end;
end.
