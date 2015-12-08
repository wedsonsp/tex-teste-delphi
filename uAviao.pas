unit uAviao;

interface

//Declaração da Classe.
type Aviao = class

  //Declaração da variáveis privadas.
  private
    nome : string;
    metros : integer;

  //Método publico para manipular ou mostrar os valores da variaveis privadas.
  public
    //Criação dos objetos instanciados.
    constructor CrieObjeto;
    //Não retorna valor somente processa os valores.
    procedure setNome(pNome : string);
    procedure setMetros(pMetros : integer);

    //Função com retorno de valores.
    function getNome : string;
    function getMetros : integer;

    //Contrução para destruir os objetos da memória.
    constructor Destrua_se;
end;

implementation

{ Aviao }
//Iniialização da variáveis.
constructor Aviao.CrieObjeto;
begin
  nome := '';
  metros := 0;
end;

//Contrutor dos objetos na instanciação da Classe.
constructor Aviao.Destrua_se;
begin

end;

//Implementação dos Gets e Sets.
function Aviao.getMetros: integer;
begin
   result := metros;
end;

function Aviao.getNome: string;
begin
   result := nome;
end;

procedure Aviao.setMetros(pMetros: integer);
begin
  metros := pMetros;
end;

procedure Aviao.setNome(pNome: string);
begin
  nome := pNome;
end;

end.
