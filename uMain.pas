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

    //Declarando a função move.
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
  //Instanciando o objeto umTransporte na memória.
  umTransporte := Transporte.CrieObjeto;
  //Passando valores nas variaveis setadas.
  //Valores das variaveis Transporte.
  umTransporte.setNome('Porche 911');
  umTransporte.setMetros(100);

  //Valores das variavéis Carro.
  umTransporte.getCarro.setNome('Porche 911');
  //umTransporte.getCarro.setMetros(100);

  //Valores das variavéis Avião.
  umTransporte.getAviao.setNome('Boing 747');
  //umTransporte.getAviao.setMetros(2500);

end;

procedure TForm1.btnRecuperarClick(Sender: TObject);
begin
  //Através desse evento o ShowMessage com a devida conversão, mostrará os dados nume caixa
  //de diálogo.
  ShowMessage(umTransporte.getNome + '  ' + 'Moveu ' + IntToStr(umTransporte.getMetros) + ' m ' + 'Sem a Função Move');
  //ShowMessage(umTransporte.getCarro.getNome + '  ' + 'Moveu' + '   ' + IntToStr(umTransporte.getCarro.getMetros) + 'm');
  //ShowMessage(umTransporte.getAviao.getNome + '  ' + 'Moveu' + '   ' + IntToStr(umTransporte.getAviao.getMetros) + 'm');

  //Utilizando a função move.
  ShowMessage(umTransporte.getCarro.getNome + ' ' + 'Moveu ' + IntToStr(move(100)) + ' m ' + 'Com a função Move');
  ShowMessage(umTransporte.getAviao.getNome + ' ' + 'Moveu ' + IntToStr(move(2500)) + ' m ' + 'Com a função Move');
end;



procedure TForm1.Label1Click(Sender: TObject);
begin

end;

//Função move passando Metros como parâmetro.
function TForm1.move(Metros: Integer): Integer;
begin
  Result := Metros;
end;


end.
