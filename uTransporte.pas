unit uTransporte;

interface

//Classe Transporte Herdando as Classes, Carro e Avi�o.
uses uCarro, uAviao;

//Declarando a classe Transporte.
type Transporte = class

  //Declarando as vari�veis privadas.
  private
    nome : string;
    metros : Integer;
    umCarro: Carro;
    umAviao: Aviao;

  //M�todo Publico para poder enchergar e manipular as vari�veis privadas.
  public
    //Contruindo os objetos a partir da instancia��o da Classe.
    constructor CrieObjeto;

    //N�o retorna valor somente processa.
    procedure setNome(pNome : string);
    procedure setMetros(pMetros: Integer);
    procedure setCarro(pCarro: Carro);
    procedure setAviao(pAviao: Aviao);

    //Fun��o que retorna valores.
    function getNome : string;
    function getMetros : integer;
    function getCarro : Carro;
    function getAviao : Aviao;

    //Destrutor das vari�veis para n�o conter acumulo ou lixo na mem�ria.
    destructor Destrua_se;
end;

implementation

{ Transporte }

//Inicializa��o dos objetos das Classes atrav�s do Contrutor no momento da instancia��o.
constructor Transporte.CrieObjeto;
begin
  //Variaveis primitivas precisa inicializar.
  nome := '';
  metros := 0;
  //Como se trata de um objeto � necess�rio instanciar, pois � uma variavel do tipo Reference;
  //Ocupa espa�o na mem�ria.
  umCarro := Carro.CrieObjeto;
  umAviao := Aviao.CrieObjeto;
end;

destructor Transporte.Destrua_se;
begin
  //Para cada objeto criado � necess�rio limpar na mem�ria para n�o acumular lixo.
  umCarro.Destrua_se;
end;

//Implementa��o dos Gets e Sets.
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
