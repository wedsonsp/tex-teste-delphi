unit uCarro;

interface

//Declaração da Classe Carro.
type Carro = class
  private
    nome : string;
    metros : integer;

  public
  //Construtor para criar os objetos na instanciação.
    constructor CrieObjeto;
    //Criação dos Gets e Sets.
    procedure setNome(pNome : string);
    procedure setMetros(pMetros : integer);

    function getNome : string;
    function getMetros : integer;

    //Remove os objetos da instancias da memória sem deixar lixo
    destructor Destrua_se;
end;

implementation


{ Carro }

//Inicialização dos objetos.
constructor Carro.CrieObjeto;
begin
  nome := '';
  metros := 0;
end;

//Destrói os objetos na memória para não encher de lixo.
destructor Carro.Destrua_se;
begin

end;

//Implementação dos Gets e Sets.
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
