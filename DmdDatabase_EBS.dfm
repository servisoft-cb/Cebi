object dmDatabase_EBS: TdmDatabase_EBS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 416
  Top = 195
  Height = 445
  Width = 645
  object Conexao_MSSQL: TSQLConnection
    ConnectionName = 'SS_SQLSERVER'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbexpmss.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MSSQL'
      'HostName=cleomar-pc\ebs'
      'DataBase=FOX_00001'
      'User_Name=sa'
      'Password=cORDILHEIR@2008'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=False')
    VendorLib = 'oledb'
    Left = 248
    Top = 72
  end
end
