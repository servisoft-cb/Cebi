object dmDatabase_Ant: TdmDatabase_Ant
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 439
  Top = 238
  Height = 291
  Width = 297
  object scoDados_Ant: TSQLConnection
    ConnectionName = 'CEBI_ANT'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\A\CEBI\CEBI.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=1'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 48
    Top = 32
  end
  object Decoder64: TIdDecoderMIME
    FillChar = '='
    Left = 144
    Top = 32
  end
  object sdsExec: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = scoDados_Ant
    Left = 144
    Top = 88
  end
end
