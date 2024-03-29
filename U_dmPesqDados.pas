unit U_dmPesqDados;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDM_PESQDADOS = class(TDataModule)
    sdsPesqContatos: TSQLDataSet;
    dspPesqContatos: TDataSetProvider;
    cdsPesqContato: TClientDataSet;
    dsPesqContato: TDataSource;
    sqlPesqConfiguracoes: TSQLDataSet;
    dspPesqConfiguracoes: TDataSetProvider;
    cdsPesqConfiguracoes: TClientDataSet;
    dsPesqConfiguracoes: TDataSource;
    dsp_MENUS: TDataSetProvider;
    cds_MENUS: TClientDataSet;
    ds_MENUS: TDataSource;
    sql_MENUS: TSQLDataSet;
    dsp_PesqAnotacoes: TDataSetProvider;
    cdsPesqAnotacoes: TClientDataSet;
    dsPesqAnotacoes: TDataSource;
    sql_PesqAnotacoes: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_PESQDADOS: TDM_PESQDADOS;

implementation

{$R *.dfm}

end.
