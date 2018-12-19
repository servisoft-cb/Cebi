object DMCadPeriodo: TDMCadPeriodo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 222
  Height = 443
  Width = 503
  object sdsPeriodo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PERIODO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 32
    object sdsPeriodoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPeriodoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsPeriodoQTD_MES: TIntegerField
      FieldName = 'QTD_MES'
    end
  end
  object dspPeriodo: TDataSetProvider
    DataSet = sdsPeriodo
    Left = 168
    Top = 32
  end
  object cdsPeriodo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPeriodo'
    Left = 232
    Top = 32
    object cdsPeriodoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPeriodoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 30
    end
    object cdsPeriodoQTD_MES: TIntegerField
      DisplayLabel = 'Qtd. M'#234's'
      FieldName = 'QTD_MES'
    end
  end
  object dsPeriodo: TDataSource
    DataSet = cdsPeriodo
    Left = 304
    Top = 32
  end
end
