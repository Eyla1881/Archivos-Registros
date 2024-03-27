            
program FichT04; 

var 
    fichero: text;       (* Un fichero de texto *) 
    linea: string;

begin 
    assign( fichero, 'DATOS.TXT' );  (* Le asignamos nombre *) 
    reset( fichero );                (* Lo abrimos para leer datos *) 
    while not eof( fichero) do
    begin
        readLn( fichero, linea );    (* Leemos una linea *)
        writeLn( linea );            (* Y la mostramos *) 
    end;
    close( fichero );                (* Finalmente cerramos *) 
  
end.


{program FichT03; 

var 
    fichero: text;       (* Un fichero de texto *) 
    linea: string;      (* La linea que leeremos *)

begin 
    assign( fichero, 'DATOS.TXT' );  (* Le asignamos nombre *) 
    reset( fichero );                (* Lo abrimos para leer datos *) 
    while not eof( fichero) do
    begin
        readLn( fichero, linea );    (* Leemos una linea *)
        writeLn( linea );            (* Y la mostramos *) 
    end;
    close( fichero );                (* Finalmente cerramos *) 
end. 
}
