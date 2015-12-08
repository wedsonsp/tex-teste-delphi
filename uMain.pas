unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uTransporte;

type
  TForm1 = class(TForm)
    btnGravar: TButton;
    btnRecuperar: TButton;
    Label1: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure btnRecuperarClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);

  private
    { Private declarations }
    umTransporte : Transporte;

    //Declarando a fun��o move.
    function move(Metros: Integer): Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGravarClick(Sender: TObject);
begin
  //Instanciando o objeto umTransporte na mem�ria.
  umTransporte := Transporte.CrieObjeto;
  //Passando valores nas variaveis setadas.
  //Valores das variaveis Transporte.
  umTransporte.setNome('Porche 911');
  umTransporte.setMetros(100);

  //Valores das variav�is Carro.
  umTransporte.getCarro.setNome('Porche 911');
  //umTransporte.getCarro.setMetros(100);

  //Valores das variav�is Avi�o.
  umTransporte.getAviao.setNome('Boing 747');
  //umTransporte.getAviao.setMetros(2500);

end;

procedure TForm1.btnRecuperarClick(Sender: TObject);
begin
  //Atrav�s desse evento o ShowMessage com a devida convers�o, mostrar� os dados nume caixa
  //de di�logo.
  ShowMessage(umTransporte.getNome + '  ' + 'Moveu ' + IntToStr(umTransporte.getMetros) + ' m ' + 'Sem a Fun��o Move');
  //ShowMessage(umTransporte.getCarro.getNome + '  ' + 'Moveu' + '   ' + IntToStr(umTransporte.getCarro.getMetros) + 'm');
  //ShowMessage(umTransporte.getAviao.getNome + '  ' + 'Moveu' + '   ' + IntToStr(umTransporte.getAviao.getMetros) + 'm');

  //Utilizando a fun��o move.
  ShowMessage(umTransporte.getCarro.getNome + ' ' + 'Moveu ' + IntToStr(move(100)) + ' m ' + 'Com a fun��o Move');
  ShowMessage(umTransporte.getAviao.getNome + ' ' + 'Moveu ' + IntToStr(move(2500)) + ' m ' + 'Com a fun��o Move');
end;



procedure TForm1.Label1Click(Sender: TObject);
begin

end;

//Fun��o move passando Metros como par�metro.
function TForm1.move(Metros: Integer): Integer;
begin
  Result := Metros;
end;


end.
