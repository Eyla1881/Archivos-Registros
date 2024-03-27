

program Agenda0;

var
    gente: array [1..1000] of              { Los datos }
        record
            nombre: string;
            email: string;
            anyoNacimiento: integer;
        end;
    cantidad: integer;       { Cantidad de datos existentes }
    opcion: integer;                      { Opción escogida }
    i: integer;                         { Para bucles "for" }

{Cuerpo del programa principal}
begin
    cantidad := 0;
    repeat
        WriteLn('Agenda');
        WriteLn;
        WriteLn('1- Añadir una nueva persona');
        WriteLn('2- Ver nombres de todos');
        WriteLn('0- Salir');
        Write('Escoja una opción: ');
        ReadLn(opcion);
        WriteLn;

        case opcion of
            1: { Añadir datos de una persona }
                if cantidad < 1000 then
                begin
                    cantidad := cantidad + 1;
                    WriteLn('Introduciendo la persona ', cantidad);

                    Write('Introduzca el nombre: ');
                    ReadLn(gente[cantidad].nombre);

                    Write('Introduzca el correo electrónico: ');
                    ReadLn(gente[cantidad].email);

                    Write('Introduzca el año de nacimiento: ');
                    ReadLn(gente[cantidad].anyoNacimiento);

                    WriteLn;
                 end
                 else
                    WriteLn('Base de datos llena');

            2: { Ver nombres de todos }
                begin
                if cantidad = 0 then
                    WriteLn('No hay datos')
                else
                    for i := 1 to cantidad do
                        WriteLn(i, ' ', gente[i].nombre);
                WriteLn;
                end;

            0: { Salir de la aplicación }
                begin
                WriteLn;
                WriteLn('Saliendo...');
                WriteLn;
                end;

             else
                begin
                WriteLn;
                WriteLn('Opción incorrecta!');
                WriteLn;
                end;
        end;  { Fin de "case" }

    until opcion = 0;
end.


