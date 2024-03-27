program GuardarFibonacci;

uses
  SysUtils, Classes;

const
  DIRECTORIO_FIBONACCI = 'fibonacci/';

type
  Fibonacci = record
    valor: Integer;
  end;

procedure GuardarNumerosFibonacci(N: Integer);
var
  dir: string;
  archivo: Text;
  fibonacciAnterior, fibonacciActual, temp: Fibonacci;
  i: Integer;
begin
  fibonacciAnterior.valor := 0;
  fibonacciActual.valor := 1;
  
  // Construir ruta de la carpeta
  dir := DIRECTORIO_FIBONACCI;
  
  // Crear archivo
  Assign(archivo, dir + 'numeros_fibonacci.txt');
  Rewrite(archivo);
  
  WriteLn(archivo, fibonacciAnterior.valor);
  WriteLn(archivo, fibonacciActual.valor);
  
  for i := 3 to N do
  begin
    temp := fibonacciActual;
    fibonacciActual.valor := fibonacciAnterior.valor + fibonacciActual.valor;
    fibonacciAnterior := temp;
    WriteLn(archivo, fibonacciActual.valor);
  end;
  
  // Cerrar archivo
  Close(archivo);
  
  Writeln('Números de Fibonacci guardados correctamente en archivo');
end;

var
  N: Integer;

begin
  WriteLn('Ingrese el número N hasta el cual desea guardar los números de Fibonacci:');
  ReadLn(N);
  
  GuardarNumerosFibonacci(N);
end.
