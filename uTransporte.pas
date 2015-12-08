unit uTransporte;

interface

//Classe Transporte Herdando as Classes, Carro e Avião.
uses uCarro, uAviao;

//Declarando a classe Transporte.
type Transporte = class

  //Declarando as variáveis privadas.
  private
    nome : string;
    metros : Integer;
    umCarro: Carro;
    umAviao: Aviao;

  //Método Publico para poder enchergar e manipular as variáveis privadas.
  public
    //Contruindo os objetos a partir da instanciação da Classe.
    constructor CrieObjeto;

    //Não retorna valor somente processa.
    procedure setNome(pNome : string);
    procedure setMetros(pMetros: Integer);
    procedure setCarro(pCarro: Carro);
    procedure setAviao(pAviao: Aviao);

    //Função que retorna valores.
    function getNome : string;
    function getMetros : integer;
    function getCarro : Carro;
    function getAviao : Aviao;

    //Destrutor das variáveis para não conter acumulo ou lixo na memória.
    destructor Destrua_se;
end;

implementation

{ Transporte }

//Inicialização dos objetos das Classes através do Contrutor no momento da instanciação.
constructor Transporte.CrieObjeto;
begin
  //Variaveis primitivas precisa inicializar.
  nome := '';
  metros := 0;
  //Como se trata de um objeto é necessário instanciar, pois é uma variavel do tipo Reference;
  //Ocupa espaço na memória.
  umCarro := Carro.CrieObjeto;
  umAviao := Aviao.CrieObjeto;
end;

destructor Transporte.Destrua_se;
begin
  //Para cada objeto criado é necessário limpar na memória para não acumular lixo.
  umCarro.Destrua_se;
end;

//Implementação dos Gets e Sets.
function Transporte.getAviao: Aviao;
begin
  result := umAviao;
end;

function Transporte.getCarro: Carro;
begin
  result := umCarro;
end;

function Transporte.getMetros: Integer;
begin
  result := metros;
end;

function Transporte.getNome: string;
begin
  result := nome;
end;

procedure Transporte.setAviao(pAviao: Aviao);
begin
   umAviao := pAviao;
end;

procedure Transporte.setCarro(pCarro: Carro);
begin
  umCarro := pCarro;
end;

procedure Transporte.setMetros(pMetros: Integer);
begin
  metros := pMetros;
end;

procedure Transporte.setNome(pNome: string);
begin
  nome := pNome;
end;


end.
