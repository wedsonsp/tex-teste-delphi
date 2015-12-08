unit uCarro;

interface

//Declara��o da Classe Carro.
type Carro = class
  private
    nome : string;
    metros : integer;

  public
  //Construtor para criar os objetos na instancia��o.
    constructor CrieObjeto;
    //Cria��o dos Gets e Sets.
    procedure setNome(pNome : string);
    procedure setMetros(pMetros : integer);

    function getNome : string;
    function getMetros : integer;

    //Remove os objetos da instancias da mem�ria sem deixar lixo
    destructor Destrua_se;
end;

implementation


{ Carro }

//Inicializa��o dos objetos.
constructor Carro.CrieObjeto;
begin
  nome := '';
  metros := 0;
end;

//Destr�i os objetos na mem�ria para n�o encher de lixo.
destructor Carro.Destrua_se;
begin

end;

//Implementa��o dos Gets e Sets.
function Carro.getMetros: integer;
begin
   result := metros;
end;

function Carro.getNome: string;
begin
   result := nome;
end;

procedure Carro.setMetros(pMetros: integer);
begin
    metros := pMetros;
end;

procedure Carro.setNome(pNome: string);
begin
    nome := pNome;
end;

end.
