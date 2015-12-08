object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 48
    Width = 159
    Height = 13
    Caption = 'Atenc'#227'o! Primeiro Ligue o Carro .'
    OnClick = Label1Click
  end
  object btnGravar: TButton
    Left = 56
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Ligar'
    TabOrder = 0
    OnClick = btnGravarClick
  end
  object btnRecuperar: TButton
    Left = 288
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Mover'
    TabOrder = 1
    OnClick = btnRecuperarClick
  end
end
