{program Record1;

var
    dato: record
        nombre: string[30];
        edad: byte;
    end;

begin
      dato.nombre := 'Ignacio';
      dato.edad := 23;
      write('El nombre es ', dato.nombre );
      write(' y la edad ', dato.edad);
end.}



program RecordArray;

var
    datos: array [1..10] of record
            nombre: string[30];
            edad: byte;
        end;

begin
    datos[1].nombre := 'Ignacio';
    datos[1].edad := 23;
    write('El primer nombre es ', datos[1].nombre );
    write(' y la primera edad ', datos[1].edad);
end.

