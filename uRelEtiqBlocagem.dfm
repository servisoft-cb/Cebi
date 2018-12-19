object frmRelEtiqBlocagem: TfrmRelEtiqBlocagem
  Left = 311
  Top = 120
  Width = 907
  Height = 562
  Caption = 'frmRelEtiqBlocagem'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = frmEtiqBlocagem.dsEtiquetas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 4.000000000000000000
    Margins.TopMargin = 15.000000000000000000
    Margins.RightMargin = 4.000000000000000000
    Margins.BottomMargin = 11.000000000000000000
    RealBounds.UsedUnit = buMilimeters
    object RLSubDetail1: TRLSubDetail
      Left = 15
      Top = 57
      Width = 764
      Height = 331
      DataSource = frmEtiqBlocagem.dsEtiquetas
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 0
        Width = 764
        Height = 96
        ColCount = 2
        ColSpacing = 7.000000000000000000
        RealBounds.UsedUnit = buMilimeters
        object RLDBText1: TRLDBText
          Left = 6
          Top = 8
          Width = 358
          Height = 16
          AutoSize = False
          DataField = 'Nome'
          DataSource = frmEtiqBlocagem.dsEtiquetas
        end
        object RLDBText2: TRLDBText
          Left = 6
          Top = 24
          Width = 358
          Height = 16
          AutoSize = False
          DataField = 'Endereco'
          DataSource = frmEtiqBlocagem.dsEtiquetas
        end
        object RLDBText3: TRLDBText
          Left = 6
          Top = 40
          Width = 38
          Height = 16
          DataField = 'Bairro'
          DataSource = frmEtiqBlocagem.dsEtiquetas
        end
        object RLDBText4: TRLDBText
          Left = 6
          Top = 56
          Width = 44
          Height = 16
          DataField = 'Cidade'
          DataSource = frmEtiqBlocagem.dsEtiquetas
        end
        object RLDBText5: TRLDBText
          Left = 6
          Top = 72
          Width = 16
          Height = 16
          DataField = 'Uf'
          DataSource = frmEtiqBlocagem.dsEtiquetas
        end
        object RLDBText6: TRLDBText
          Left = 211
          Top = 72
          Width = 27
          Height = 16
          DataField = 'Cep'
          DataSource = frmEtiqBlocagem.dsEtiquetas
        end
      end
    end
  end
end
