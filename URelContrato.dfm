object frmRelContrato: TfrmRelContrato
  Left = 49
  Top = 158
  Width = 1210
  Height = 559
  Caption = 'frmRelContrato'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 24
    Width = 1123
    Height = 794
    DataSource = DMCadContrato.dsContrato_Consulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 90
      Width = 1071
      Height = 423
      DataSource = DMCadContrato.dsContrato_Consulta
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 1071
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand3BeforePrint
        object RLDraw3: TRLDraw
          Left = 0
          Top = 14
          Width = 1071
          Height = 3
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText1: TRLDBText
          Left = 1
          Top = 1
          Width = 69
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'NUM_CONTRATO'
          DataSource = DMCadContrato.dsContrato_Consulta
        end
        object RLDBText2: TRLDBText
          Left = 71
          Top = 1
          Width = 54
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTCONTRATO'
          DataSource = DMCadContrato.dsContrato_Consulta
        end
        object RLDBText3: TRLDBText
          Left = 127
          Top = 1
          Width = 60
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DTENCERRAMENTO'
          DataSource = DMCadContrato.dsContrato_Consulta
        end
        object RLDBText4: TRLDBText
          Left = 190
          Top = 1
          Width = 60
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DTCOBRANCA'
          DataSource = DMCadContrato.dsContrato_Consulta
        end
        object RLDBText7: TRLDBText
          Left = 252
          Top = 1
          Width = 247
          Height = 12
          AutoSize = False
          DataField = 'NOMECLIENTE'
          DataSource = DMCadContrato.dsContrato_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 501
          Top = 1
          Width = 223
          Height = 12
          AutoSize = False
          DataField = 'NOMEASSINATURA'
          DataSource = DMCadContrato.dsContrato_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 981
          Top = 1
          Width = 62
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_TOTAL'
          DataSource = DMCadContrato.dsContrato_Consulta
        end
        object RLLabel13: TRLLabel
          Left = 1052
          Top = 1
          Width = 10
          Height = 12
          Caption = 'C'
        end
        object RLLabel8: TRLLabel
          Left = 743
          Top = 2
          Width = 90
          Height = 12
          Caption = 'Fone'
        end
        object RLDBText5: TRLDBText
          Left = 726
          Top = 3
          Width = 13
          Height = 10
          DataField = 'UF'
          DataSource = DMCadContrato.dsContrato_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 835
          Top = 3
          Width = 144
          Height = 11
          AutoSize = False
          DataField = 'EMAIL_NFE_FB'
          DataSource = DMCadContrato.dsContrato_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 17
        Width = 1071
        Height = 18
        BandType = btSummary
        BeforePrint = RLBand4BeforePrint
        object RLLabel14: TRLLabel
          Left = 832
          Top = 2
          Width = 75
          Height = 11
          Caption = 'Total Geral ===>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 912
          Top = 2
          Width = 131
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_TOTAL'
          DataSource = DMCadContrato.dsContrato_Consulta
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 16
          Top = 2
          Width = 75
          Height = 11
          Caption = 'Total Registros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 92
          Top = 2
          Width = 8
          Height = 11
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 176
          Top = 2
          Width = 83
          Height = 11
          Caption = 'Total Encerrados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 261
          Top = 2
          Width = 8
          Height = 11
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 368
          Top = 2
          Width = 58
          Height = 11
          Caption = 'Total Ativos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 429
          Top = 2
          Width = 8
          Height = 11
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand1: TRLBand
      Left = 26
      Top = 26
      Width = 1071
      Height = 47
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 424
        Top = 8
        Width = 169
        Height = 19
        Caption = 'Rela'#231#227'o de Contratos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 2
        Top = 32
        Width = 26
        Height = 10
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 30
        Top = 32
        Width = 1017
        Height = 10
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 984
        Top = 2
        Width = 18
        Height = 10
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 1004
        Top = 2
        Width = 54
        Height = 10
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 969
        Top = 12
        Width = 33
        Height = 10
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 1004
        Top = 12
        Width = 24
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 45
        Width = 1071
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object RLBand2: TRLBand
      Left = 26
      Top = 73
      Width = 1071
      Height = 17
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand2BeforePrint
      object RLLabel3: TRLLabel
        Left = 8
        Top = 2
        Width = 52
        Height = 12
        Caption = 'N'#186' Contrato'
      end
      object RLLabel4: TRLLabel
        Left = 75
        Top = 2
        Width = 49
        Height = 12
        Caption = 'D.Contrato'
      end
      object RLLabel5: TRLLabel
        Left = 127
        Top = 2
        Width = 61
        Height = 12
        Caption = 'Encerramento'
      end
      object RLLabel6: TRLLabel
        Left = 192
        Top = 2
        Width = 56
        Height = 12
        Caption = 'Dt.Cobran'#231'a'
      end
      object RLLabel9: TRLLabel
        Left = 254
        Top = 2
        Width = 60
        Height = 12
        Caption = 'Nome Cliente'
      end
      object RLLabel10: TRLLabel
        Left = 500
        Top = 2
        Width = 75
        Height = 12
        Caption = 'Nome Assinatura'
      end
      object RLLabel11: TRLLabel
        Left = 1048
        Top = 2
        Width = 19
        Height = 12
        Caption = 'C/P'
      end
      object RLLabel12: TRLLabel
        Left = 1006
        Top = 2
        Width = 37
        Height = 12
        Alignment = taRightJustify
        Caption = 'Vlr.Total'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 15
        Width = 1071
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel7: TRLLabel
        Left = 725
        Top = 2
        Width = 16
        Height = 12
        Caption = 'UF'
      end
      object RLLabel15: TRLLabel
        Left = 745
        Top = 2
        Width = 24
        Height = 12
        Caption = 'Fone'
      end
      object RLLabel16: TRLLabel
        Left = 835
        Top = 1
        Width = 26
        Height = 12
        Caption = 'Email'
      end
    end
  end
end
