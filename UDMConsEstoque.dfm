object DMConsEstoque: TDMConsEstoque
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 275
  Top = 176
  Height = 489
  Width = 1049
  object sdsControle_Estoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTROLE_ESTOQUE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 40
    object sdsControle_EstoqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsControle_EstoqueNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 12
    end
    object sdsControle_EstoqueDTREFERENCIA: TDateField
      FieldName = 'DTREFERENCIA'
    end
    object sdsControle_EstoqueMES: TIntegerField
      FieldName = 'MES'
    end
    object sdsControle_EstoqueANO: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dspControle_Estoque: TDataSetProvider
    DataSet = sdsControle_Estoque
    Left = 144
    Top = 40
  end
  object cdsControle_Estoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspControle_Estoque'
    Left = 208
    Top = 40
    object cdsControle_EstoqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsControle_EstoqueNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 12
    end
    object cdsControle_EstoqueDTREFERENCIA: TDateField
      FieldName = 'DTREFERENCIA'
    end
    object cdsControle_EstoqueMES: TIntegerField
      FieldName = 'MES'
    end
    object cdsControle_EstoqueANO: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dsControle_Estoque: TDataSource
    DataSet = cdsControle_Estoque
    Left = 280
    Top = 40
  end
  object mEstoque: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 200
    Data = {
      5B0000009619E0BD0100000018000000030000000000030000005B000C4E756D
      5F436F6E747261746F0100490000000100055749445448020002000C00024944
      04000100000000000C44745265666572656E63696104000600000000000000}
    object mEstoqueNum_Contrato: TStringField
      FieldName = 'Num_Contrato'
      Size = 12
    end
    object mEstoqueID: TIntegerField
      FieldName = 'ID'
    end
    object mEstoqueDtReferencia: TDateField
      FieldName = 'DtReferencia'
    end
  end
  object dsmEstoque: TDataSource
    DataSet = mEstoque
    Left = 208
    Top = 200
  end
end
