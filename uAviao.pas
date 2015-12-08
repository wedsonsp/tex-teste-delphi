unit uAviao;

interface

//Declara��o da Classe.
type Aviao = class

  //Declara��o da vari�veis privadas.
  private
    nome : string;
    metros : integer;

  //M�todo publico para manipular ou mostrar os valores da variaveis privadas.
  public
    //Cria��o dos objetos instanciados.
    constructor CrieObjeto;
    //N�o retorna valor somente processa os valores.
    procedure setNome(pNome : string);
    procedure setMetros(pMetros : integer);

    //Fun��o com retorno de valores.
    function getNome : string;
    function getMetros : integer;

    //Contru��o para destruir os objetos da mem�ria.
    constructor Destrua_se;
end;

implementation

{ Aviao }
//Iniializa��o da vari�veis.
constructor Aviao.CrieObjeto;
begin
  nome := '';
  metros := 0;
end;

//Contrutor dos objetos na instancia��o da Classe.
constructor Aviao.Destrua_se;
begin

end;

//Implementa��o dos Gets e Sets.
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
