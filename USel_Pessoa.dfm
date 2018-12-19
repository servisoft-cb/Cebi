object frmSel_Pessoa: TfrmSel_Pessoa
  Left = 197
  Top = 193
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecionar Pessoa'
  ClientHeight = 446
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 30
    Align = alTop
    Color = clSilver
    TabOrder = 0
    OnEnter = Panel1Enter
    object Label1: TLabel
      Left = 58
      Top = 13
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Pessoa:'
    end
    object Edit1: TEdit
      Left = 131
      Top = 5
      Width = 393
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object btnConsultar: TNxButton
      Left = 526
      Top = 1
      Width = 173
      Height = 28
      Caption = 'Efetuar Pesquisa'
      Down = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2F0F5F2F0FCFDFDFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B778D2D52869876
        72B0A3A1FCFDFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7780
        0055B812A5FA5E90BDBBA29FFAF5F4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5C6377004EAD29BEFFA9ECFFA3F7FF3A89BFF6F5F6000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF75737F0051AC17B1FFA4E7FDD5FFFF12A6E45E90B5FFFCFC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFD6C6C7D0057BB25BAFFA5E7FEC7FFFF099DDF6A8A
        A8FFFFFDFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54657D0057B120B5FFA1E5FECFFFFF
        109CDD4D7EA5FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFEFEDADDDDDAD9D9CFCFCFEDEFEFFFFFFFFFFFFFFFFFFF00024A21BCFFA5
        EAFFCAFFFF11A7E86587A9FFFFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFDDE0E0958E8D7A63657D60628467678065658D77799C9393D3D1D1ADAA
        A749343776B3E0B4FFFF19A4DF5A84A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD2D8D84C3334846269967570A39388A99E9AAB9E99AE9890
        B69DA4A28E8F867070E7D0CC806B6E005499467EA7FFFFFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFC2C2C2533638A27B799D80649A9A7C94988895
        97979498949198849E9478C4AFA8C8B5B7AFA1A1B6B3B1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFB816D6E8A66679C6F4A987D
        5A978F7499978499998D99998C989783948769987854C9B1A9C1B4B6DED8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E0DCDB74575C
        98634797653998765499876899927799977F99967F99907799826295704B9B64
        3AD4CFD8A39C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000887F83865B54984D1A945C319969439A77559A7F5F998365998364997F5F
        99735095673F81400DC9A391B2ACB0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000BDAFB38C57459140079352258D562D875732885D3A8D
        6744946E4B92694587532D91572CBB753CCA906BADAAB0CECDCDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C6B7BB8F56428528008B3D08A766
        34CA9765D0A272BC8D5F9E6940A06B3ECB9867EFB984FFCB8ACD8A5FBBB8C0DD
        DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B8AEB1906152
        AD5529ECB177FFD29AFED7A5FCDEAEFEE7B6FFEABBFFE8B8FDDCABF7D09CFCCB
        90CF9675AEAAB2CBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00009B96988F6B68EAA769FFD19BF4CD9BF4D8AAF4E0B4F4E4BBF4E5BDF4E4BB
        F4DDB1F6DBABF8C98AC6A399A8A6A9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000D2D0D07E6B73B47F67FED295F6DBADF4E4BAF5E5C2F5
        E7C8F5E9CAF4E7C8F5E8C3F9E9B9D29E73DDDEE8A6A2A1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFE9B8F91B6A0A5CD9972FDE8
        B2F6EDC7F5E9CCF4EDD4F5EED9F5EED6F9EFCDE4C299F3E4DD867F80D7D8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFD4D6D6
        574849C3AEB2CDA88FF0D9B4F6ECD0F6F3E3F6F1E5F4E8D3E2C2ABE1D0CF9E95
        96C6C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD3D5D59F969797888CC0A6A1D1B6ACD5BEB2D7C0B7D5BDB8
        C1B4B8ADA7AAC0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFCFDFDD2D0D0A3A0A2CEC5C7E1
        D7D8DCD3D4A09C9EE7E5E5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      Transparent = True
      OnClick = btnConsultarClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 30
    Width = 914
    Height = 399
    Align = alClient
    Ctl3D = False
    DataSource = dsPessoa
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnEnter = SMDBGrid1Enter
    OnKeyDown = SMDBGrid1KeyDown
    OnTitleClick = SMDBGrid1TitleClick
    Flat = True
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'Apel'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Color = 16777153
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Raz'#227'o'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Title.Color = 16777153
        Width = 284
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ/CPF'
        Title.Alignment = taCenter
        Title.Color = 16777153
        Width = 148
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Estado'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Color = 16777153
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Title.Alignment = taCenter
        Title.Color = 16777153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Endere'#231'o'
        Title.Color = 16777153
        Width = 200
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 429
    Width = 914
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 
      'Duplo Clique  ou   Enter para selecionar a pessoa       ESC= Fec' +
      'har tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EMP.*'#13#10'FROM dbo.Empresas EMP'#13#10'where (tipo = '#39'Cliente'#39#13#10'  ' +
      ' or tipo = '#39'Ambos'#39')'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_EBS.Conexao_MSSQL
    Left = 208
    Top = 168
    object sdsPessoaApel: TStringField
      FieldName = 'Apel'
      Required = True
      FixedChar = True
      Size = 15
    end
    object sdsPessoaRazo: TStringField
      FieldName = 'Raz'#227'o'
      Required = True
      FixedChar = True
      Size = 90
    end
    object sdsPessoaTipo: TStringField
      FieldName = 'Tipo'
      Required = True
      FixedChar = True
      Size = 15
    end
    object sdsPessoaCadastro: TSQLTimeStampField
      FieldName = 'Cadastro'
      Required = True
    end
    object sdsPessoaPessoa: TStringField
      FieldName = 'Pessoa'
      Required = True
      FixedChar = True
      Size = 8
    end
    object sdsPessoaCNPJCPF: TStringField
      FieldName = 'CNPJ/CPF'
      FixedChar = True
      Size = 18
    end
    object sdsPessoaIEstRG: TStringField
      FieldName = 'IEst/RG'
      FixedChar = True
      Size = 18
    end
    object sdsPessoaEndereo: TStringField
      FieldName = 'Endere'#231'o'
      FixedChar = True
      Size = 70
    end
    object sdsPessoaBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
    end
    object sdsPessoaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object sdsPessoaCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 33
    end
    object sdsPessoaEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Raz'#227'o'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 304
    Top = 168
    object cdsPessoaApel: TStringField
      FieldName = 'Apel'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsPessoaRazo: TStringField
      FieldName = 'Raz'#227'o'
      Required = True
      FixedChar = True
      Size = 90
    end
    object cdsPessoaTipo: TStringField
      FieldName = 'Tipo'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsPessoaCadastro: TSQLTimeStampField
      FieldName = 'Cadastro'
      Required = True
    end
    object cdsPessoaPessoa: TStringField
      FieldName = 'Pessoa'
      Required = True
      FixedChar = True
      Size = 8
    end
    object cdsPessoaCNPJCPF: TStringField
      FieldName = 'CNPJ/CPF'
      FixedChar = True
      Size = 18
    end
    object cdsPessoaIEstRG: TStringField
      FieldName = 'IEst/RG'
      FixedChar = True
      Size = 18
    end
    object cdsPessoaEndereo: TStringField
      FieldName = 'Endere'#231'o'
      FixedChar = True
      Size = 70
    end
    object cdsPessoaBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
    end
    object cdsPessoaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object cdsPessoaCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 33
    end
    object cdsPessoaEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 256
    Top = 168
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 360
    Top = 168
  end
end
