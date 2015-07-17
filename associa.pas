unit Siacon.Standard.Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, Menus, StdCtrls, JclIniFiles, ExtCtrls, ComCtrls, ToolWin,
  uclsBasico, jpeg,
  uTelaApresVersoes, UAtualizaVersoes, uImagemLogo, hcCodesiteHelper, Printers,
  UTreeMenu, FRM_OPERACAO_PESAGEM_01,
  TB2MDI, TB2Item, TB2Dock, TB2Toolbar,
  ShellAPI, unTesteFCA, RPT_FRM_GERAR_MANIFESTO_PADRAO,
  ORDEM_CARGA_01, RPT_FRM_SERVICOS_PRESTADOS_ANALITICO,
  SQLProfiler,
  PROGRAMCAO_DIARIA_01;

type
  TfrmMain = class(TForm)
    ActionList1: TActionList;
    aclSair: TAction;
    aclSobre: TAction;
    BarraDeStatus: TStatusBar;
    aclDocumentos: TAction;
    aclMensagens: TAction;
    Timer1: TTimer;
    TBDock1: TTBDock;
    TBToolbar1: TTBToolbar;
    TlBttnMensagens: TTBItem;
    TBItem2: TTBItem;
    TBToolbar2: TTBToolbar;
    TBControlItem1: TTBControlItem;
    Label1: TLabel;
    TBControlItem2: TTBControlItem;
    cmbEmpresa: TComboBox;
    TBToolbar3: TTBToolbar;
    TBMDIWindowItem1: TTBMDIWindowItem;
    TBMDIHandler1: TTBMDIHandler;
    MainMenu: TMainMenu;
    abelas1: TMenuItem;
    Armazns1: TMenuItem;
    smiTAA01: TMenuItem;
    smiTAA02: TMenuItem;
    smiTAA03: TMenuItem;
    smiTAA04: TMenuItem;
    Produtos1: TMenuItem;
    smiTAP01: TMenuItem;
    smiTAP02: TMenuItem;
    Geral1: TMenuItem;
    smiTAG01: TMenuItem;
    smiTAG02: TMenuItem;
    smiTAG03: TMenuItem;
    Pessoas: TMenuItem;
    smiPEC01: TMenuItem;
    Balanca: TMenuItem;
    Romaneios2: TMenuItem;
    smiROM01: TMenuItem;
    smiROM02: TMenuItem;
    smiROM03: TMenuItem;
    Relatrios1: TMenuItem;
    abelas2: TMenuItem;
    Armazns2: TMenuItem;
    smiRTA01: TMenuItem;
    smiRTA02: TMenuItem;
    smiRTA03: TMenuItem;
    smiRTA04: TMenuItem;
    smiRTA05: TMenuItem;
    Produtos2: TMenuItem;
    smiRTP01: TMenuItem;
    Geral2: TMenuItem;
    smiRTG01: TMenuItem;
    Pessoas1: TMenuItem;
    smiREP01: TMenuItem;
    smiREP02: TMenuItem;
    Romaneios1: TMenuItem;
    smiRER01: TMenuItem;
    smiRER02: TMenuItem;
    smiRER03: TMenuItem;
    smiRER04: TMenuItem;
    smiRER05: TMenuItem;
    otalizadores1: TMenuItem;
    smiRRO01: TMenuItem;
    smiRRO02: TMenuItem;
    smiRRO03: TMenuItem;
    smiRRO04: TMenuItem;
    smiRRO5: TMenuItem;
    Ferramentas1: TMenuItem;
    miSeguranca: TMenuItem;
    smiFUF01: TMenuItem;
    smiFUF02: TMenuItem;
    smiFUF03: TMenuItem;
    smiConfiguracoes: TMenuItem;
    smiFCG01: TMenuItem;
    smiFCG02: TMenuItem;
    FormulriosPrImpressos1: TMenuItem;
    smiFCF03: TMenuItem;
    Ajuda1: TMenuItem;
    smiSIA01: TMenuItem;
    smiSIA02: TMenuItem;
    smiSIA03: TMenuItem;
    SFBA01BACKUP1: TMenuItem;
    CMF04AtualizarVerses1: TMenuItem;
    SFSN03SiaNet1: TMenuItem;
    SFCG03AtivarSiaSimplex1: TMenuItem;
    SRRO06SaldoGeraldeDepositantes1: TMenuItem;
    STAG04UnidadesdeMedida1: TMenuItem;
    RRO07MediadeProdutividadeporGleba1: TMenuItem;
    smTransbordo: TMenuItem;
    smiRRT01: TMenuItem;
    smiRRT02: TMenuItem;
    smiRRT03: TMenuItem;
    smiRRT04: TMenuItem;
    smiRRT05: TMenuItem;
    smiRRT06: TMenuItem;
    ROB10Portaria1: TMenuItem;
    smiSRER06: TMenuItem;
    STAA04OperaodePesagem1: TMenuItem;
    Servios1: TMenuItem;
    smiSSVC01: TMenuItem;
    smiSSVC03: TMenuItem;
    smiSSVC04: TMenuItem;
    smiSSVC05: TMenuItem;
    smiSSVC06: TMenuItem;
    smiSSVC07: TMenuItem;
    smiSSVC08: TMenuItem;
    smiSSVC09: TMenuItem;
    Servios2: TMenuItem;
    smiSRES01: TMenuItem;
    smiSRES02: TMenuItem;
    smiSRES03: TMenuItem;
    smiSRES04: TMenuItem;
    smiRMT10: TMenuItem;
    smiRMT11: TMenuItem;
    SROM04OrdemdeCarga1: TMenuItem;
    smiSRES05: TMenuItem;
    smiServicos: TMenuItem;
    smiSTAS01: TMenuItem;
    smiSTAS02: TMenuItem;
    smiSTAS05: TMenuItem;
    smiSTAS06: TMenuItem;
    SPEC021: TMenuItem;
    smiSRES06: TMenuItem;
    SROM05BloqueiodeSaldo1: TMenuItem;
    smiSRER08: TMenuItem;
    smiSFCG04: TMenuItem;
    smiSRB12: TMenuItem;
    smiSRER09: TMenuItem;
    smiSRER10: TMenuItem;
    smiSRER11: TMenuItem;
    smiSRER12: TMenuItem;
    smiSRB13: TMenuItem;
    smiSRER13: TMenuItem;
    smiSFNO04: TMenuItem;
    smiNotasFiscais: TMenuItem;
    smiSNFM01: TMenuItem;
    smiSNFM02: TMenuItem;
    smiSNFM03: TMenuItem;
    smiSNFM04: TMenuItem;
    smiSNFM05: TMenuItem;
    smiNotasFiscais1: TMenuItem;
    smiSREN01: TMenuItem;
    smiSREN02: TMenuItem;
    smiSREN03: TMenuItem;
    smiSREN041: TMenuItem;
    smiSRND01: TMenuItem;
    smiSRND02: TMenuItem;
    smiSRND03: TMenuItem;
    smiSRB14: TMenuItem;
    smiSRES07: TMenuItem;
    smiFiscal: TMenuItem;
    smiSTAF01: TMenuItem;
    smiSTAF02: TMenuItem;
    smiSTAF03: TMenuItem;
    smiSTAF04: TMenuItem;
    smiSRRO08: TMenuItem;
    Utilitrios1: TMenuItem;
    STAG05UnidadesdeMedida1: TMenuItem;
    smiSRER14: TMenuItem;
    smiFinanceiroeContabil: TMenuItem;
    smiSTAC01: TMenuItem;
    smiSRES08: TMenuItem;
    smiSFGF01: TMenuItem;
    smiSSVC10: TMenuItem;
    smiSROM06: TMenuItem;
    smiSRER15: TMenuItem;
    smiSRER16: TMenuItem;
    smiSROM21: TMenuItem;
    smiSRER17: TMenuItem;
    smiSRER18: TMenuItem;
    smiSROM07: TMenuItem;
    SRER19DemonstrativodePesagem1: TMenuItem;
    smiSRER20: TMenuItem;
    smiSNFM06: TMenuItem;
    SRER211: TMenuItem;
    smiSRRO09: TMenuItem;
    STAA06Ptios1: TMenuItem;
    STAA07Cartes1: TMenuItem;
    STAA08Processos1: TMenuItem;
    smiSTAF05: TMenuItem;
    Action1: TAction;
    SNFM07EmitirNotadeComplementoSAP1: TMenuItem;
    smiSROM22: TMenuItem;
    Financeiro1: TMenuItem;
    FIC12ClassificaoFinanceira1: TMenuItem;
    FIC03CentrodeCustos1: TMenuItem;
    FIC04PlanodeContas1: TMenuItem;
    FIC05ContasGerenciais1: TMenuItem;
    FIC06Histricos1: TMenuItem;
    FIC07ContasBancrias1: TMenuItem;
    FIM01MovimentaoBancria1: TMenuItem;
    FIM02ConciliaoBancria1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    FIM03ContasaPagareaReceberTtulos1: TMenuItem;
    FIM04AlocarRecebimentodeChequesPagamentos1: TMenuItem;
    FIM06BaixadeTtulosemGrupo1: TMenuItem;
    FIM07LiberarTtulosPendentes1: TMenuItem;
    ConfigurarTiposdeDocumentos1: TMenuItem;
    FIM09Oramento1: TMenuItem;
    N3: TMenuItem;
    FIM10FichaFinanceira1: TMenuItem;
    N4: TMenuItem;
    FIM11ImpressodeCheques1: TMenuItem;
    FIM12CpiadeCheques1: TMenuItem;
    FIM13Recibos1: TMenuItem;
    N5: TMenuItem;
    FIM14CotaodeMoedas1: TMenuItem;
    Financeiro2: TMenuItem;
    REF01Ttulos1: TMenuItem;
    SREF02ExtratoBancrio1: TMenuItem;
    SREF03DisponibilidadeDiria1: TMenuItem;
    SREF04FluxodeCaixaGerencial1: TMenuItem;
    SREF05MovimentoAnaltico1: TMenuItem;
    SREF06MovimentaoporCentrodeCustos1: TMenuItem;
    SREF07MovimentaoporContaGerencial1: TMenuItem;
    SREF07MovimentaoporContaGerencial2: TMenuItem;
    SREF25FluxoMensalporContaGerencialeCentrodeCustos1: TMenuItem;
    SREF09ReceitaseDespesas1: TMenuItem;
    SREF10SaldodeContas1: TMenuItem;
    SREF11ConferenciadeMovimentaesBancriaseContabilidade1: TMenuItem;
    SREF14ExtratodeFinanceiroIndividual1: TMenuItem;
    N6: TMenuItem;
    SREF12FichaFinanceira1: TMenuItem;
    SREF13SaldodaFichaFinanceira1: TMenuItem;
    SREF24ResumodaFichaFinanceira1: TMenuItem;
    N7: TMenuItem;
    SREF15Oramento1: TMenuItem;
    SREF16ApuraodeResultados1: TMenuItem;
    SREF17RegistroDirio1: TMenuItem;
    N8: TMenuItem;
    SREF18FluxodeCaixa1: TMenuItem;
    N9: TMenuItem;
    SREF19PlanodeContas1: TMenuItem;
    SREF20ContasGerenciais1: TMenuItem;
    SREF22LimitedeCrdito1: TMenuItem;
    SREF21CotaodaMoeda1: TMenuItem;
    SRER23ControledeRegistrodePesagemporBalana1: TMenuItem;
    smiRTA08: TMenuItem;
    miSRB15: TMenuItem;
    smiSFUG02: TMenuItem;
    SFAR05AgendamentodeRelatrios1: TMenuItem;
    STAG19TipodeVeculo1: TMenuItem;
    SROM23Fluxo1: TMenuItem;
    SROM25VagoProduto1: TMenuItem;
    SROM24ProgramaoDiria1: TMenuItem;
    RMT12GerarManifestoPadroEDI1: TMenuItem;
    STAA09OrigemeDestinoEDI1: TMenuItem;
    Comercial1: TMenuItem;
    SCRM01Contrato1: TMenuItem;
    SCRM02Adiantamentos1: TMenuItem;
    SCRM03Fixaes1: TMenuItem;
    SCRM04OpodeCompra1: TMenuItem;
    CRM07InformarValordeProdutos1: TMenuItem;
    SCRM09Visitas1: TMenuItem;
    SCRM11PsVendas1: TMenuItem;
    SCRM12TestedeQualidadenaAreia1: TMenuItem;
    SCRM15ProcessarPedidos1: TMenuItem;
    SCRM16RecebimentoEntrega1: TMenuItem;
    SCRC01FinalidadedoContrato1: TMenuItem;
    N10: TMenuItem;
    SROM26TransfernciadeRomaneioporContrato1: TMenuItem;
    smiSTAG06: TMenuItem;

    procedure aclSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aclSobreExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbEmpresaChange(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure aclMensagensExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure smiTAA01Click(Sender: TObject);
    procedure smiTAA02Click(Sender: TObject);
    procedure smiTAA03Click(Sender: TObject);
    procedure smiTAA04Click(Sender: TObject);
    procedure smiTAP01Click(Sender: TObject);
    procedure smiTAP02Click(Sender: TObject);
    procedure smiTAG01Click(Sender: TObject);
    procedure smiTAG02Click(Sender: TObject);
    procedure smiTAG03Click(Sender: TObject);
    procedure smiPEC01Click(Sender: TObject);
    procedure smiROB01Click(Sender: TObject);
    procedure smiROB02Click(Sender: TObject);
    procedure smiROB03Click(Sender: TObject);
    procedure smiROM01Click(Sender: TObject);
    procedure smiROM02Click(Sender: TObject);
    procedure smiROM03Click(Sender: TObject);
    procedure smiCOF01Click(Sender: TObject);
    procedure dmiCOF02Click(Sender: TObject);
    procedure smiRTA01Click(Sender: TObject);
    procedure smiRTA02Click(Sender: TObject);
    procedure smiRTA03Click(Sender: TObject);
    procedure smiRTA04Click(Sender: TObject);
    procedure smiRTP01Click(Sender: TObject);
    procedure smiRTG01Click(Sender: TObject);
    procedure smiREP01Click(Sender: TObject);
    procedure smiREP02Click(Sender: TObject);
    procedure smiRER01Click(Sender: TObject);
    procedure smiRER02Click(Sender: TObject);
    procedure smiRER03Click(Sender: TObject);
    procedure smiRER04Click(Sender: TObject);
    procedure smiRER05Click(Sender: TObject);
    procedure smiRRP02Click(Sender: TObject);
    procedure RRT01SeleodeNotasFiscaisparaTransbordo1Click(Sender: TObject);
    procedure smiRRT02Click(Sender: TObject);
    procedure smiRRT03Click(Sender: TObject);
    procedure smiRRT04Click(Sender: TObject);
    procedure smiRRT05Click(Sender: TObject);
    procedure smiRRT06Click(Sender: TObject);
    procedure smiRRO01Click(Sender: TObject);
    procedure smiRRO02Click(Sender: TObject);
    procedure smiRRO03Click(Sender: TObject);
    procedure smiRRO04Click(Sender: TObject);
    procedure smiRRO5Click(Sender: TObject);
    procedure smiFUF02Click(Sender: TObject);
    procedure smiSIA01Click(Sender: TObject);
    procedure smiSIA02Click(Sender: TObject);
    procedure smiSIA03Click(Sender: TObject);
    procedure smiFUF01Click(Sender: TObject);
    procedure smiFUF03Click(Sender: TObject);
    procedure smiFCG01Click(Sender: TObject);
    procedure smiFCG02Click(Sender: TObject);
    procedure smiFCF03Click(Sender: TObject);
    procedure smiRTA05Click(Sender: TObject);
    procedure SFBA01BACKUP1Click(Sender: TObject);
    procedure CMF04AtualizarVerses1Click(Sender: TObject);
    procedure SFSN03SiaNet1Click(Sender: TObject);
    procedure SFCG03AtivarSiaSimplex1Click(Sender: TObject);
    procedure SRRO06SaldoGeraldeDepositantes1Click(Sender: TObject);
    procedure STAG04UnidadesdeMedida1Click(Sender: TObject);
    procedure RRO07MediadeProdutividadeporGleba1Click(Sender: TObject);
    procedure smiRRT01Click(Sender: TObject);
    procedure ROB10Portaria1Click(Sender: TObject);
    procedure RRR161Click(Sender: TObject);
    procedure STAA04OperaodePesagem1Click(Sender: TObject);
    procedure smiSSVC01Click(Sender: TObject);
    procedure smiSSVC03Click(Sender: TObject);
    procedure smiSSVC04Click(Sender: TObject);
    procedure smiSSVC05Click(Sender: TObject);
    procedure smiSSVC08Click(Sender: TObject);
    procedure smiSSVC09Click(Sender: TObject);
    procedure smiSRES01Click(Sender: TObject);
    procedure smiSRES02Click(Sender: TObject);
    procedure smiSRES03Click(Sender: TObject);
    procedure smiSRES04Click(Sender: TObject);
    procedure smiRMT10Click(Sender: TObject);
    procedure smiRMT11Click(Sender: TObject);
    procedure SROM04OrdemdeCarga1Click(Sender: TObject);
    procedure SFRO01GrupodeDepositantes1Click(Sender: TObject);
    procedure smiSSVC06Click(Sender: TObject);
    procedure smiSRES05Click(Sender: TObject);
    procedure smiSTAS01Click(Sender: TObject);
    procedure smiSTAS02Click(Sender: TObject);
    procedure smiSTAS05Click(Sender: TObject);
    procedure smiSTAS06Click(Sender: TObject);
    procedure smiSSVC07Click(Sender: TObject);
    procedure smiSRER07Click(Sender: TObject);
    procedure smiSRES06Click(Sender: TObject);
    procedure SROM05BloqueiodeSaldo1Click(Sender: TObject);
    procedure smiSRER08Click(Sender: TObject);
    procedure smiSFCG04Click(Sender: TObject);
    procedure smiSRB12Click(Sender: TObject);
    procedure smiSRER09Click(Sender: TObject);
    procedure smiSRER10Click(Sender: TObject);
    procedure smiSRER11Click(Sender: TObject);
    procedure smiSRER12Click(Sender: TObject);
    procedure smiSRB13Click(Sender: TObject);
    procedure smiSRER13Click(Sender: TObject);
    procedure smiSFNO04Click(Sender: TObject);
    procedure smiSNFM01Click(Sender: TObject);
    procedure smiSNFM02Click(Sender: TObject);
    procedure smiSNFM03Click(Sender: TObject);
    procedure smiSNFM04Click(Sender: TObject);
    procedure smiSNFM05Click(Sender: TObject);
    procedure smiSREN01Click(Sender: TObject);
    procedure smiSREN02Click(Sender: TObject);
    procedure smiSREN03Click(Sender: TObject);
    procedure smiSRND01Click(Sender: TObject);
    procedure smiSRND02Click(Sender: TObject);
    procedure smiSRND03Click(Sender: TObject);
    procedure smiSRB14Click(Sender: TObject);
    procedure smiSRES07Click(Sender: TObject);
    procedure smiSTAF01Click(Sender: TObject);
    procedure smiSTAF02Click(Sender: TObject);
    procedure smiSTAF03Click(Sender: TObject);
    procedure smiSTAF04Click(Sender: TObject);
    procedure smiSRRO08Click(Sender: TObject);
    procedure STAG05UnidadesdeMedida1Click(Sender: TObject);
    procedure smiRMT12Click(Sender: TObject);
    procedure smiSRER14Click(Sender: TObject);
    procedure smiSTAC01Click(Sender: TObject);
    procedure smiSRES08Click(Sender: TObject);
    procedure smiSFGF01Click(Sender: TObject);
    procedure smiSSVC10Click(Sender: TObject);
    procedure smiSROM06Click(Sender: TObject);
    procedure smiSRER15Click(Sender: TObject);
    procedure smiSRER16Click(Sender: TObject);
    procedure smiSROM21Click(Sender: TObject);
    procedure smiSRER17Click(Sender: TObject);
    procedure smiSRER18Click(Sender: TObject);
    procedure SFIC08TiposdeDocumentosBancrios1Click(Sender: TObject);
    procedure smiSROM07Click(Sender: TObject);
    procedure smiPortadorClick(Sender: TObject);
    procedure SRER19DemonstrativodePesagem1Click(Sender: TObject);
    procedure smiSRER20Click(Sender: TObject);
    procedure smiSNFM06Click(Sender: TObject);
    procedure SRER211Click(Sender: TObject);
    procedure smiSRRO09Click(Sender: TObject);
    procedure STAA06Ptios1Click(Sender: TObject);
    procedure STAA07Cartes1Click(Sender: TObject);
    procedure STAA08Processos1Click(Sender: TObject);
    procedure smiSTAF05Click(Sender: TObject);
    procedure SNFM07EmitirNotadeComplementoSAP1Click(Sender: TObject);
    procedure smiSROM22Click(Sender: TObject);
    procedure d1Click(Sender: TObject);
    procedure FIC12ClassificaoFinanceira1Click(Sender: TObject);
    procedure FIC03CentrodeCustos1Click(Sender: TObject);
    procedure FIC04PlanodeContas1Click(Sender: TObject);
    procedure FIC05ContasGerenciais1Click(Sender: TObject);
    procedure FIC06Histricos1Click(Sender: TObject);
    procedure FIC07ContasBancrias1Click(Sender: TObject);
    procedure FIM01MovimentaoBancria1Click(Sender: TObject);
    procedure FIM02ConciliaoBancria1Click(Sender: TObject);
    procedure FIM03ContasaPagareaReceberTtulos1Click(Sender: TObject);
    procedure FIM04AlocarRecebimentodeChequesPagamentos1Click(Sender: TObject);
    procedure FIM06BaixadeTtulosemGrupo1Click(Sender: TObject);
    procedure FIM07LiberarTtulosPendentes1Click(Sender: TObject);
    procedure ConfigurarTiposdeDocumentos1Click(Sender: TObject);
    procedure FIM09Oramento1Click(Sender: TObject);
    procedure FIM10FichaFinanceira1Click(Sender: TObject);
    procedure FIM11ImpressodeCheques1Click(Sender: TObject);
    procedure FIM12CpiadeCheques1Click(Sender: TObject);
    procedure FIM13Recibos1Click(Sender: TObject);
    procedure FIM14CotaodeMoedas1Click(Sender: TObject);
    procedure REF01Ttulos1Click(Sender: TObject);
    procedure SREF02ExtratoBancrio1Click(Sender: TObject);
    procedure SREF03DisponibilidadeDiria1Click(Sender: TObject);
    procedure SREF04FluxodeCaixaGerencial1Click(Sender: TObject);
    procedure SREF05MovimentoAnaltico1Click(Sender: TObject);
    procedure SREF06MovimentaoporCentrodeCustos1Click(Sender: TObject);
    procedure SREF07MovimentaoporContaGerencial1Click(Sender: TObject);
    procedure SREF07MovimentaoporContaGerencial2Click(Sender: TObject);
    procedure SREF25FluxoMensalporContaGerencialeCentrodeCustos1Click(
      Sender: TObject);
    procedure SREF09ReceitaseDespesas1Click(Sender: TObject);
    procedure SREF10SaldodeContas1Click(Sender: TObject);
    procedure SREF11ConferenciadeMovimentaesBancriaseContabilidade1Click(
      Sender: TObject);
    procedure SREF14ExtratodeFinanceiroIndividual1Click(Sender: TObject);
    procedure SREF12FichaFinanceira1Click(Sender: TObject);
    procedure SREF13SaldodaFichaFinanceira1Click(Sender: TObject);
    procedure SREF24ResumodaFichaFinanceira1Click(Sender: TObject);
    procedure SREF15Oramento1Click(Sender: TObject);
    procedure SREF16ApuraodeResultados1Click(Sender: TObject);
    procedure SREF17RegistroDirio1Click(Sender: TObject);
    procedure SREF18FluxodeCaixa1Click(Sender: TObject);
    procedure SREF19PlanodeContas1Click(Sender: TObject);
    procedure SREF20ContasGerenciais1Click(Sender: TObject);
    procedure SREF22LimitedeCrdito1Click(Sender: TObject);
    procedure SREF21CotaodaMoeda1Click(Sender: TObject);
    procedure SRER23ControledeRegistrodePesagemporBalana1Click(Sender: TObject);
    procedure smiRTA08Click(Sender: TObject);
    procedure miSRB15Click(Sender: TObject);
    procedure smiSFUG02Click(Sender: TObject);
    procedure SFGR02QuebraTcnica1Click(Sender: TObject);
    procedure SFAR05AgendamentodeRelatrios1Click(Sender: TObject);
    procedure smiEnventosparaTitulosClick(Sender: TObject);
    procedure STAG19TipodeVeculo1Click(Sender: TObject);
    procedure SROM23Fluxo1Click(Sender: TObject);
    procedure SROM25VagoProduto1Click(Sender: TObject);
    procedure SROM24ProgramaoDiria1Click(Sender: TObject);
    procedure RMT12GerarManifestoPadroEDI1Click(Sender: TObject);
    procedure STAA09OrigemeDestinoEDI1Click(Sender: TObject);
    procedure SCRM01Contrato1Click(Sender: TObject);
    procedure SCRM02Adiantamentos1Click(Sender: TObject);
    procedure SCRM03Fixaes1Click(Sender: TObject);
    procedure SCRM04OpodeCompra1Click(Sender: TObject);
    procedure CRM07InformarValordeProdutos1Click(Sender: TObject);
    procedure SCRM09Visitas1Click(Sender: TObject);
    procedure SCRM11PsVendas1Click(Sender: TObject);
    procedure SCRM12TestedeQualidadenaAreia1Click(Sender: TObject);
    procedure SCRM15ProcessarPedidos1Click(Sender: TObject);
    procedure SCRM16RecebimentoEntrega1Click(Sender: TObject);
    procedure SCRC01FinalidadedoContrato1Click(Sender: TObject);
    procedure SROM26TransfernciadeRomaneioporContrato1Click(Sender: TObject);
    procedure smiSTAG06Click(Sender: TObject);
  private
    vbbLogged: Boolean;
    vslCodigoEmpresa: TStringList;
    vdhUltimaAtualizacaoMensagens: TDateTime;
    vdhAtualizarMensagens: TDateTime;
    vfrmMenu: TfrmTreeMenu;
    fbbForceClose: Boolean;
    fbbHomologacao: Boolean;
    vbbEmpresaCentralizada        : Boolean;
    vniEmpresaFinanceiro          : Integer;

    function impressora: Boolean;
    function LancarFormulario(psaFromulario: String): Boolean;
    procedure AtualizarBarraStatus;
    procedure setUnidadeCorporativa(pstrCodigoCompleto: String);

    procedure ValidarPropriedadesGlobais;
    procedure ExibirProfilerSQL();

  public
    FBasico: TclsBasico;
    property ibbHomologacao: Boolean read fbbHomologacao write fbbHomologacao;
  end;

const
  swcMinServerVersion = '6.8.1.1';

var
  frmMain: TfrmMain;

implementation

uses USobre, uLogin, UGrupoAcessso, ULibrary, uclsUsuario, uMensagens,
  RPT_CONTROLE_REGISTRO_PESAGEM,
  // Modulo de tabelas
  SAFRA_01,
  SILO_01,
  ROMANEIO_OPERACAO_01,
  MODELO_TABELAS_01,
  TABELA_SERVICO_01,
  TABELAS_02,
  EMBALAGEM_01,
  LOCAL_COLETA_01,
  PRODUTO_01,
  LOTES_01,
  NCM_01,
  PRODUTO_ACONDICIONAMENTO_01,
  VIGOR_01,
  UF_01,
  MUNICIPIO_01,
  OBSERVACAO_01,
  Unidade_01,
  FINALIDADE_FISCAL_01,
  SERIES_FISCAIS_01,
  CFOP_01,
  CST_A_01,
  CST_B_01,
  CLASSE_FUNRURAL_01,
  REGRAS_NOTA_FISCAL_01,
  PARAMETRIZACAO_ICMS_01,
  SERVICO_01,
  SERVICO_GRUPO_01,
  SERVICO_SUB_GRUPO_01,
  TABELA_SERVICO_VALOR_01,
  SERVICO_VALOR_01,
  SERVICO_OCORRENCIA_ROMANEIO_01,
  // Modulo de Pessoas
  UCadastroPessoas,
  // Modulo de Romaneio (Balança)
  PORTARIA_00,
  PESAGENS_RECENTES_00,
  LIMPAR_PESAGEM_00,
  ALTERAR_PESAGEM_00,
  GERACAO_NOTA_TRANSPORTE_00,
  uNotaFiscal_02,
  FRM_MONITOR_IMPRESSAO_AUTOMATICA,
  // Modulo de Romaneio
  PORTARIA_CONSULTA_00,
  ROMANEIO_01,
  CLASSIFICACAO_00,
  BLOQUEIO_01,
  WARRANT_01,
  PLACA_01,
  VALOR_MERCADO_01,
  CONTRATO_SERVICO_01,
  GRUPO_DEPOSITANTES_01,
  // Modulo de serviços
  CALCULAR_SERVICO_ROMANEIOS,
  CALCULAR_SERVICO_ROMANEIOS_QUINZENA,
  APAGAR_SERVICO_ROMANEIOS,
  FATURAR_SERVICOS,
  FICHA_SERVICOS_00,
  SERVICO_NOTA_01,
  COPIAR_SERVICO_NOTA,
  SERVICO_PRESTADO_01,
  // Modulo de Relatórios
  RPT_FRM_SAFRAS,
  RPT_FRM_SILOS,
  RPT_FRM_OPERACOES_ROMANEIO,
  RPT_FRM_TABELA_CLASSIFICACAO,
  RPT_FRM_EMBALAGENS,
  RPT_FRM_LOCAL_COLETA,
  RPT_FRM_PRODUTOS,
  RPT_FRM_VIGOR,
  RPT_FRM_PRODUTOS_LOTE,
  RPT_FRM_UF,
  RPT_FRM_MUNICIPIO,
  RPT_FRM_OBSERVACOES,
  RPT_FRM_FINALIDADE_FISCAL,
  RPT_FRM_SERIES_NOTA_FISCAL,
  RPT_FRM_CFOP,
  RPT_FRM_CSTA,
  RPT_FRM_CSTB,
  RPT_FRM_CLASSE_FUNRURAL,
  RPT_FRM_REGRAS_NOTA_FISCAL,
  RPT_FRM_PARAMETRIZACAO_ICMS,
  RPT_FRM_SERVICOS,
  RPT_FRM_SERVICO_GRUPO,
  RPT_FRM_SERVICO_SUBGRUPO,
  RPT_FRM_TABELA_PRECO_SERVICO,
  RPT_FRM_SERVICO_VALORES,
  RPT_FRM_OCORRENCIA_SERVICO_ROMANEIO,
  RPT_FRM_DEPOSITANTES,
  RPT_FRM_MOTORISTA,
  RPT_FRM_ETIQUETAS,
  RPT_TELEFONES,
  FrmRPT_FrmCadPessoasEmBranco,
  RPT_FRM_EXTRATO_DEPOSITANTE,
  RPT_FRM_RECIBO_DEPOSITO,
  RPT_FRM_ROMANEIOS_DIARIOS,
  RPT_FRM_ROMANEIOS_CANCELADOS,
  RPT_FRM_ROMANEIO_NF,
  RPT_FRM_ROMANEIOS_SEM_NOTA,
  RPT_FRM_EXTRATO_DEPOSITANTE_SIMPLIFICADO,
  RPT_FRM_ROMANEIOS_MEDIAS_MINIMAS,
  RPT_FRM_MEDIA_SACA,
  RPT_FRM_MEDIA_PONDERADA_REAL,
  RPT_FRM_VALOR_SALDO_DIARIO,
  RPT_FRM_CONTROLE_MOVIMENTACAO_DIARIA,
  RPT_FRM_PESAGENS,
  RPT_FRM_TEMPO_PESAGEM,
  RPT_FRM_SELECAO_NF_TRANSBORDO,
  RPT_FRM_EMBARQUES,
  RPT_FRM_EMBARQUES_COLETA,
  RPT_FRM_CARREGAMENTO_VAGOES,
  RPT_FRM_CONFERENCIA_FRETE,
  RPT_FRM_TRANSBORDO_SAIDA,
  RPT_FRM_BOLETIM_ESTOQUE,
  RPT_FRM_MEDIA_PONDERADA_GERAL,
  RPT_FRM_PRODUTIVIDADE_GLEBA,
  RPT_FRM_MAPA_MOVIMENTACAO_DIARIO,
  RPT_FRM_RESUMO_ESTOQUE,
  RPT_FRM_SALDO_PERIODO,
  RPT_FRM_COMPARATIVO_SAFRAS,
  RPT_FRM_SALDO_DETALHADO,
  RPT_FRM_RELATORIO_GERAL,
  RPT_FRM_SALDO_SILO,
  RPT_FRM_MOVIMENTACAO_MES,
  FRM_RPT_ULTIMAS_SAFRAS,
  RPT_FRM_SALDO_FISICO_FISCAL,
  RPT_FRM_BLOQUEIOS,
  CONSULTAR_SALDO_DEPOSITANTE_00,
  RPT_FRM_PRODUTOS_OPERACAO,
  RPT_FRM_TOTAIS_ROMANEIOS_EMITIDOS,
  RPT_FRM_NOTAS_FISCAIS_EMITIDAS,
  FrmRPT_NotasFiscaisMeste,
  RPT_FRM_NF_TOTAL_ITEM,
  RPT_FRM_SALDO_NOTA_FISCAL_ENTRADA,
  RPT_FRM_NFE_ROMANEIOS,
  FRM_RPT_NF_SERVICOS,
  RPT_FRM_PREVISAO_SERVICOS,
  RPT_FRM_DIFERENCA_ORIGEM_DESTINO,
  RPT_FRM_PESAGENS_TICKET_01,
  // RPT_FRM_PREVISAO_FATURAMENTO,
  RPT_FRM_REGRAS_TRIBUTARIAS_PRODUTO,
  RPT_FRM_TOTAL_NF_ITENS,
  RPT_FRM_ServPrest,
  RPT_FRM_EMBARQUES_VAGAO,
  RPT_FRM_CONTROLE_MOVIMENTACAO_PERIODO,

  LocalizarGruposUsuarios_01,
  uUsuarios_05,
  CONFIGURACOES,
  CONFIGURAR_BALANCA,
  CONFIGURAR_CLASSIFICACAO,
  CONFIGURAR_CLASSIFICACAO_IMPUREZA,
  CONFIGURAR_EMAIL,
  ImportacaoModelos_00,
  RPT_FRM_INDICES_DESCONTOS,
  BACKUP_00,
  PrintLayout_00,
  ATIVAR_SIASIMPLEX,
  RPT_FRM_EXTRATO_MOV_SIMPLIFICADO,

  RPT_FRM_ServicosPrestadosAnalitico,
  CALCULAR_SERVICOS,
  RPT_FRM_SALDO_SERVICOSPRESTADOS,
  RPT_FRM_ROMANEIOS_SEM_PORTARIA,
  RPT_FRM_ROMANEIOS_CANCELADOS_EXCEL,
  FRM_RPT_ROMANEIOS_SEM_PORTARIA_EXCEL,
  CONSULTAR_IMAGENS_PORTARIA_01,
  RPT_FRM_MOVIMENTACAO_CLIENTES,

  unImportarClientesNovaAgri,
  SALDO_FISCAL_ENTRADA_01,
  SALDO_FISCAL_SAIDA_01,
  INUTILIZACAO_NFE_01,
  FRM_localizarCartaCorrecao,
  FRM_RPT_DEMONSTRATIVO_MENSAL_ESTOQUE_GO,
  RPT_FRM_RELACAO_NF_ENTRADAS,
  RPT_FRM_RELACAO_NF_SAIDAS,
  RPT_FRM_BALANCA_FLUXO,
  VIA_TRANSPORTE_01,
  RPT_FRM_EMBARQUES_EXCEL,
  RPT_FRM_MAPA_QUEBRA, CONDICAO_PAGAMENTO_01, MAPA_CALCULO_SERVICO,
  ABONAR_SERVICOS_01,
  LOCALIZAR_ROMANEIOS_SEM_NOTA,
  RPT_FRM_TABELA_CLASSIFICACAO_ROMANEIO,
  RPT_FRM_SALDO_ROMANEIOS_ENTRADA_EXCEL, TRANSFERENCIA_ROMANEIO_DEPOSITANTE_00,
  TRANSFERENCIA_ROMANEIO_DEPOSITANTE_01, RELATORIO_DIFERENCA_CLASSIFICACAO,
  RELATORIO_FECHAMENTO_DIARIO, RPT_DIFERENCA_PESAGENS,
  RPT_FRM_DIFERENCA_PESAGEM, LIBERACAO_PESO_TRANSGENICO_00,
  LIBERACAO_PESO_TRANSGENICO_01, NOTA_FISCAL_TRANSPORTE_SAP_00,
  RPT_FRM_MOVIMENTACAO_ESTOQUE,
  PATIO_01,
  CARTAO_01,
  PROCESSO_01,
  RPT_FRM_SALDO_PRODUTO_DIARIO,
  NOTA_COMPLEMENTO_OPERACAO_00,
  ufrmNFComplementoSAP,
  TRANSFERECIA_SALDO_PARA_CONTRATO_00,
  CLASSIFICACAO_FINANCEIRA_01,
  CENTRO_CUSTOS_01,
  PLANO_CONTAS_01,
  CONTA_GERENCIAL_01,
  HISTORICO_01,
  CONTAS_01,
  BANCO_01,
  CONCILIACAO_BANCARIA_01, TITULOS_01, TITULOS_05, BAIXA_TITULOS_01,
  TITULOS_03, TRANSFERENCIA_00, ORCAMENTO_01, FINANCEIRO_01,
  IMPRESSAO_CHEQUE_00, IMPRESSAO_RECIBOS_00, MOEDA_VALOR_01, RPT_FRM_TITULOS,
  RPT_FRM_EXTRATO_BANCARIO, RPT_FRM_DISPONIBILIDADE_DIARIA,
  RPT_FRM_FLUXO_CAIXA_GERENCIAL, RPT_FRM_MOVIMENTO_ANALITICO,
  RPT_FRM_CENTRO_CUSTOS, RPT_FRM_TOTAIS_CONTA_GERENCIAL,
  RPT_FRM_ConsultaContasGerenciaisMesaMes, uReceitaseDespesas,
  RPT_FRM_SALDO_CONTAS, RPT_FRM_CONTA_BANCO_CONTABIL, RPT_FRM_FICHA_FINANCEIRA,
  RPT_FRM_SALDO_FICHA_FINANCEIRA, RPT_FRM_EXTRATO_FINANCEIRO_PESSOA,
  RPT_FRM_ORCAMENTO, RPT_FRM_Consulta_Apuracao_Resultados,
  RPT_FRM_Consulta_RegistroDiario, FLUXO_CAIXA_00, RPT_FRM_PLANO_CONTAS,
  RPT_FRM_CONTAS_GERENCIAIS, Frm_RPT_moedaT, FRM_RPT_LimiteCredito01,
  RPT_FRM_RESUMO_FICHA_FINANCEIRA, RPT_FRM_REF_025,
  RPT_CONTROLE_REGISTRO_PESAGEM_BALANCA, RPT_FRM_CARTAO,
  FRM_RPT_QUEBRA_TECNICA,
  CONSULTA_TIPOS_MOVIMENTOS,
  EVENTO_TITULO_01,
  PORTADOR_01,
  TIPO_VEICULO_01, FLUXO_01, VAGAO_PRODUTO_01
  , ListaManifestoPadrao,LocalizarOrigemDestino, CONTRATO_01, ADIANTAMENTO_01,
  FIXACAO_01, OPCAO_COMPRA_01, TABELA_PRECOS_01, VISITA_01, POS_VENDA_01, PEDIDO_01,
   PROCESSAR_PEDIDOS_00, ROMANEIO_PEDIDO_ENTREGA_01, FINALIDADE_CONTRATO_01,
   TRANSFERENCIA_ROMANEIO_CONTRATO_00, JUSTIFICATIVA_CANCELAMENTO_01;

{$R *.DFM}

function TfrmMain.impressora: Boolean;
/// verifica se o Sistema possui alguma impressora instalada criado por Rovilson em
///  27/12.
var
  P: Tprinter;
begin
  Result:=true;
  P:= Tprinter.Create;
  if P.Printers.Count = 0 then
  // se o S.O não possui nenhuma impressora instalada
  begin
    Application.MessageBox('O Sistema não possui nenhuma impressora Instalada',
      'Erro', MB_ICONERROR);
    Result := false;
    exit;
  end;
end;


function TfrmMain.LancarFormulario(psaFromulario: String): Boolean;
var
  lniCount: Integer;
begin
  Result:= false;
  if not impressora then       //verifica, se não existir nenhuma impressora padrão (mesmo que virtual) não inicia o formulario
  begin
    Result:=true;
    exit;
  end
  else
  begin
    psaFromulario := LowerCase(psaFromulario);
    for lniCount := MDIChildCount - 1 downto 0 do
    if (LowerCase(MDIChildren[lniCount].ClassName) = psaFromulario) then
    begin
      Result := true;
      MDIChildren[lniCount].WindowState := wsNormal;
      MDIChildren[lniCount].Show;
    end;
  end;
end;

procedure TfrmMain.miSRB15Click(Sender: TObject);
var
  lfrRomaneio: TfrmMonitorImpressaoAutomatica;
  lobCursor : TCursor;
begin
  lobCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
   if not LancarFormulario('TfrmMonitorImpressaoAutomatica') then
    begin
      lfrRomaneio := TfrmMonitorImpressaoAutomatica.Create(Nil);
      try
        lfrRomaneio.Ibasico := FBasico;
        lfrRomaneio.Inicializar;
        lfrRomaneio.Show;
      except
        on e: exception do
        begin
          MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      end;
    end;
  finally
    Screen.Cursor := lobCursor;
  end;
end;

procedure TfrmMain.AtualizarBarraStatus;
begin
  FBasico.SetaDadosStatusBar(BarraDeStatus, ibbHomologacao);
end;

procedure TfrmMain.aclSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FBasico := TclsBasico.Create;
  vslCodigoEmpresa := TStringList.Create;

  vbbLogged := false;
  fbbForceClose := false;

  Color := RGB(3, 68, 38);
  //Color := RGB(69, 140, 59);
  if (IniReadString(GetSIAINIFileName, 'ATUALIZACAO', 'Atualizar Versőes')
    = 'N') then
    // mnuAtualizarversoes.Checked := False
  else
  // mnuAtualizarversoes.Checked := True;

    if (IniReadString(GetSIAINIFileName, 'ATUALIZACAO', 'Tela Apresentaçăo')
    = 'N') then
    // mnuMostrarTeladeApresentao.Checked := False
  else
    // mnuMostrarTeladeApresentao.Checked := True;
end;

procedure TfrmMain.aclSobreExecute(Sender: TObject);
begin
  ExibirSobre(FBasico);
end;

procedure TfrmMain.smiEnventosparaTitulosClick(Sender: TObject);
var
  lobFormulario : TfrmLocalizarEventoTitulo;
begin
   if not LancarFormulario('TfrmLocalizarEventoTitulo') then
   begin
     lobFormulario         := TfrmLocalizarEventoTitulo.Create(Nil);
     lobFormulario.iBasico := FBasico;
     lobFormulario.Inicializar;
     lobFormulario.Show;
   end;
end;

procedure TfrmMain.FIC03CentrodeCustos1Click(Sender: TObject);
var
  lobFormulario : TfrmLocalizarCentroCustos;
begin
   if not LancarFormulario('TfrmLocalizarCentroCustos') then
   begin
      lobFormulario         := TfrmLocalizarCentroCustos.Create(Nil);
      lobFormulario.iBasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
   end;
end;

procedure TfrmMain.FIC04PlanodeContas1Click(Sender: TObject);
var
  lobFormulario : TfrmLocalizarPlanoContas;
begin
   if not LancarFormulario('TfrmLocalizarPlanoContas') then
   begin
     lobFormulario         := TfrmLocalizarPlanoContas.Create(Nil);
     lobFormulario.iBasico := FBasico;
     lobFormulario.Inicializar;
     lobFormulario.Show;
   end;
end;

procedure TfrmMain.FIC05ContasGerenciais1Click(Sender: TObject);
var
  lobFormulario : TfrmLocalizarContaGerencial;
begin
   if not LancarFormulario('TfrmLocalizarContaGerencial') then
   begin
     lobFormulario         := TfrmLocalizarContaGerencial.Create(Nil);
     lobFormulario.iBasico := FBasico;
     lobFormulario.Inicializar;
     lobFormulario.Show;
   end;

end;

procedure TfrmMain.FIC06Histricos1Click(Sender: TObject);
var
  lobFormulario : TfrmLocalizarHistoricoFinanceiro;
begin
   if not LancarFormulario('TfrmLocalizarHistoricoFinanceiro') then
   begin
     lobFormulario         := TfrmLocalizarHistoricoFinanceiro.Create(Nil);
     lobFormulario.iBasico := FBasico;
     lobFormulario.Inicializar;
     lobFormulario.Show;
   end;

end;

procedure TfrmMain.FIC07ContasBancrias1Click(Sender: TObject);
var
  lobFormulario : TfrmLocalizarContas;
begin
   if not LancarFormulario('TfrmLocalizarContas') then
   begin
     lobFormulario         := TfrmLocalizarContas.Create(Nil);
     lobFormulario.iBasico := FBasico;
     lobFormulario.Inicializar;
     lobFormulario.Show;
   end;

end;

procedure TfrmMain.FIC12ClassificaoFinanceira1Click(Sender: TObject);
var
  lobFormulario : TfrmLocalizarClassificacaoFinanceira;
begin
   if not LancarFormulario('TfrmLocalizarClassificacaoFinanceira') then
   begin
     lobFormulario         := TfrmLocalizarClassificacaoFinanceira.Create(Nil);
     lobFormulario.iBasico := FBasico;
     lobFormulario.Inicializar;
     lobFormulario.Show;
   end;
end;

procedure TfrmMain.FIM01MovimentaoBancria1Click(Sender: TObject);
var
  lobFormulario : TfrmLocalizarMovimentacaoBancaria;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarMovimentacaoBancaria') then
    begin
      //BANCO_01
      //BANCO_00
      lobFormulario         := TfrmLocalizarMovimentacaoBancaria.Create(Nil);
      lobFormulario.iBasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.FIM02ConciliaoBancria1Click(Sender: TObject);
var
  lbbContinuar  : Boolean;
  lsaMensagem   : String;
  lobFormulario : TfrmLocalizarConciliacaoBancaria;
begin
  try
    FBasico.MSGAguarde();
    lbbContinuar  := True;

    if vbbEmpresaCentralizada then
    begin
      if vniEmpresaFinanceiro<>FBasico.iutEmpresa.iniPessoa then
      begin
        lbbContinuar := False;
        lsaMensagem  := 'Financeiro centralizado em outra unidade corporativa.'+crlf;
      end;
    end;

    if lbbContinuar then
    begin
      if not LancarFormulario('TfrmLocalizarConciliacaoBancaria') then
      begin
        lobFormulario         := TfrmLocalizarConciliacaoBancaria.Create(Nil);
        lobFormulario.iBasico := FBasico;
        lobFormulario.Inicializar;
        lobFormulario.Show;
      end;
    end
    else
      MessageDlg(lsaMensagem,mtError,[mbOk],0);
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.FIM03ContasaPagareaReceberTtulos1Click(Sender: TObject);
var
  lobFormulario : TfrmLocalizarTitulo;
begin
  if not LancarFormulario('TfrmLocalizarTitulo') then
  begin
    lobFormulario         := TfrmLocalizarTitulo.Create(Nil);
    lobFormulario.iBasico := FBasico;
    lobFormulario.Show;
    lobFormulario.Refresh;
    lobFormulario.Inicializar;
  end;

end;

procedure TfrmMain.FIM04AlocarRecebimentodeChequesPagamentos1Click(
  Sender: TObject);
var
  lobFormulario : TfrmAlocarPagamentos;
  lbbContinuar  : Boolean;
  lsaMensagem   : String;
begin
  lbbContinuar  := True;

  if vbbEmpresaCentralizada then
  begin
    if vniEmpresaFinanceiro<>FBasico.iutEmpresa.iniPessoa then
    begin
      lbbContinuar := False;
      lsaMensagem  := 'Financeiro centralizado em outra unidade corporativa.'+crlf;
    end;
  end;

  if lbbContinuar then
  begin
    if not LancarFormulario('TfrmAlocarPagamentos') then
    begin
      lobFormulario         := TfrmAlocarPagamentos.Create(Nil);
      lobFormulario.iBasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  end
  else
    MessageDlg(lsaMensagem,mtError,[mbOk],0);

end;

procedure TfrmMain.FIM06BaixadeTtulosemGrupo1Click(Sender: TObject);
var
  lbbContinuar  : Boolean;
  lsaMensagem   : String;
  lobFormulario : TfrmLocalizarTitulosBaixas;
begin
  lbbContinuar  := True;

  if vbbEmpresaCentralizada then
  begin
    if vniEmpresaFinanceiro<>FBasico.iutEmpresa.iniPessoa then
    begin
      lbbContinuar := False;
      lsaMensagem  := 'Financeiro centralizado em outra unidade corporativa.'+crlf;
    end;
  end;

  if lbbContinuar then
  begin
    if not LancarFormulario('TfrmLocalizarTitulosBaixas') then
    begin
      lobFormulario         := TfrmLocalizarTitulosBaixas.Create(Nil);
      lobFormulario.iBasico := FBasico;
      lobFormulario.Show;
      lobFormulario.Refresh;
      lobFormulario.Inicializar;
    end;
  end
  else
    MessageDlg(lsaMensagem,mtError,[mbOk],0);

end;

procedure TfrmMain.FIM07LiberarTtulosPendentes1Click(Sender: TObject);
var
  lobFormulario :     TfrmLiberarTitulos;
begin
   if not LancarFormulario('TfrmLiberarTitulos') then
   begin
     lobFormulario         := TfrmLiberarTitulos.Create(Nil);
     lobFormulario.iBasico := FBasico;
     lobFormulario.Inicializar;
     lobFormulario.Show;
   end;

end;

procedure TfrmMain.ConfigurarTiposdeDocumentos1Click(Sender: TObject);
var
  lobFormulario : Tfrm_LocalizarTranferencia;
begin
   if not LancarFormulario('Tfrm_LocalizarTranferencia') then
   begin
     lobFormulario         := Tfrm_LocalizarTranferencia.Create(Nil);
     lobFormulario.iBasico := FBasico;
     lobFormulario.Inicializar;
     lobFormulario.Show;
   end;

end;

procedure TfrmMain.CRM07InformarValordeProdutos1Click(Sender: TObject);
var
  lfrmFormulario: TfrmLocalizarTabelaPrecos;
begin
  if not LancarFormulario('TfrmLocalizarTabelaPrecos') then
  begin
    lfrmFormulario:= TfrmLocalizarTabelaPrecos.Create(nil);
    try
      lfrmFormulario.iBasico := FBasico;
      lfrmFormulario.Show;
      lfrmFormulario.Refresh;
      lfrmFormulario.Inicializar;
    except
      on e : exception do
      begin
        FBasico.boxErro(e, Self.Caption);
      end;
    end;
  end;
end;

procedure TfrmMain.FIM09Oramento1Click(Sender: TObject);
var
  lobFormulario : TfrmLocalizarOrcamento;
  lbbContinuar  : Boolean;
  lsaMensagem   : String;
begin
  lbbContinuar  := True;

  if vbbEmpresaCentralizada then
  begin
    if vniEmpresaFinanceiro<>FBasico.iutEmpresa.iniPessoa then
    begin
      lbbContinuar := False;
      lsaMensagem  := 'Financeiro centralizado em outra unidade corporativa.'+crlf;
    end;
  end;

  if lbbContinuar then
  begin
    if not LancarFormulario('TfrmLocalizarOrcamento') then
    begin
      lobFormulario         := TfrmLocalizarOrcamento.Create(Nil);
      lobFormulario.iBasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  end
  else
    MessageDlg(lsaMensagem,mtError,[mbOk],0);

end;

procedure TfrmMain.FIM10FichaFinanceira1Click(Sender: TObject);
var
  lobFormulario : TfrmLocalizarFichaFinanceira;
begin
   if not LancarFormulario('TfrmLocalizarFichaFinanceira') then
   begin
     lobFormulario         := TfrmLocalizarFichaFinanceira.Create(Nil);
     lobFormulario.iBasico := FBasico;
     lobFormulario.Inicializar;
     lobFormulario.Show;
   end;
end;

procedure TfrmMain.FIM11ImpressodeCheques1Click(Sender: TObject);
var
  lobFormulario : TfrmImpressaoCheque;
begin
  if not LancarFormulario('TfrmImpressaoCheque') then
  begin
    try
      try
        lobFormulario := TfrmImpressaoCheque.Create(Nil);
        lobFormulario.iBasico := FBasico;
        lobFormulario.ibbCopiaCheque := False;
        lobFormulario.Inicializar;
        lobFormulario.ShowModal;
      except
      on e :exception do
        FBasico.boxErro(e.message,'Financeiro');
      end;
    finally
      FreeAndNil(lobFormulario);
    end;
  end;

end;

procedure TfrmMain.FIM12CpiadeCheques1Click(Sender: TObject);
var
  lobFormulario : TfrmImpressaoCheque;
begin
  if not LancarFormulario('TfrmImpressaoCheque') then
  begin
    try
      try
        lobFormulario := TfrmImpressaoCheque.Create(Nil);
        lobFormulario.iBasico := FBasico;
        lobFormulario.ibbCopiaCheque := True;
        lobFormulario.Inicializar;
        lobFormulario.ShowModal;
      except
      on e :exception do
        FBasico.boxErro(e.message,'Financeiro');
      end;
    finally
      FreeAndNil(lobFormulario);
    end;
  end;

end;

procedure TfrmMain.FIM13Recibos1Click(Sender: TObject);
var
  lobFormulario : TfrmImpressaoRecibos;
begin
   if not LancarFormulario('TfrmImpressaoRecibos') then
   begin
     lobFormulario         := TfrmImpressaoRecibos.Create(Nil);
     lobFormulario.iBasico := FBasico;
     lobFormulario.ibbCopiaCheque := True;
     lobFormulario.Inicializar;
     lobFormulario.ShowModal;
   end;

end;

procedure TfrmMain.FIM14CotaodeMoedas1Click(Sender: TObject);
var
   lfrFormulario : TfrmLocalizarMoedaValor;
begin
  lfrFormulario := TfrmLocalizarMoedaValor.Create(Nil);
  try
    lfrFormulario.iBasico := FBasico;
    lfrFormulario.Inicializar;
    lfrFormulario.Show;
  except
  on e : exception do
    begin
      ShowMessage( e.message );
    end;
  end;

end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if vbbLogged and not fbbForceClose then
    CanClose := (MessageDlg('Você tem certeza que deseja sair do aplicativo?',
      mtConfirmation, [mbYes, mbNo], 0) = idYes)
  else
    CanClose := true;

  // comentado para teste na vale
  // if CanClose and not Empty(fBasico.isaNomeUsuario) then
  // fBasico.TransactionLog('SIAStandard_Transactions.log');
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  {
    if assigned(vfrmMenu) then
    vfrmMenu.Free;
  }
  // vfrmLookupPlanoContas.Free;
  FBasico.Free;
  vslCodigoEmpresa.Free;
end;

procedure TfrmMain.ExibirProfilerSQL();
begin
  try
    if IniReadBool( GetSIAINIFileName,'DEBUG','EXIBIR PROFILER SQL') then
    begin
      smiSFUG02Click(self);
    end
    else
    begin
      IniWriteBool( GetSIAINIFileName,'DEBUG','EXIBIR PROFILER SQL',False);
    end;
  except
    on e: exception do
      begin
        hcCodeSite.SendException(e);
      end;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
var
  lsaMensagem, lsaUserName, lsaEmpresa: String;
  lniCount, lniItem: Integer;
  lbbNovoCalculoServico: Boolean;
  i: Integer;
begin
  if not vbbLogged then
  begin
    Timer1.Enabled := false;

    // MDIWallpaper1.Enabled := not IniReadBool( GetSIAINIFileName,'TELA PRINCIPAL','OCULTAR LOGOTIPO SIA');
    // if MDIWallpaper1.Enabled then
    // begin
    // IniWriteBool( GetSIAINIFileName,'TELA PRINCIPAL','OCULTAR LOGOTIPO SIA',False);
    // end;

    ExibirProfilerSQL();

    for i := 1 to ParamCount do
      hcCodeSite.Send('Param[' + IntToStr(i) + ']' + ParamStr(i));

    if ParamCount > 0 then
    begin
      if LeftString(ParamStr(1), 3) = '/U:' then
      begin
        lsaUserName := RightString(ParamStr(1), Length(ParamStr(1)) - 3);
      end;
    end;
    FBasico.AtualizarDictionary := true;
    if Login(FBasico, lsaUserName, lsaMensagem) then
    begin
      try
        FBasico.MSGAguarde(true, false);
        vbbLogged := true;
        lsaEmpresa := '';
        for lniCount := 0 to ParamCount do
        begin
          if LeftString(ParamStr(lniCount), 3) = '/E:' then
          begin
            lsaEmpresa := RightString(ParamStr(lniCount),
              Length(ParamStr(lniCount)) - 3);
          end;
        end;
        FBasico.CarregarEmpresas(cmbEmpresa.Items, vslCodigoEmpresa);
        if (vslCodigoEmpresa.Count > 0) then
        begin
          FBasico.LimparEmpresa;
          if empty(lsaEmpresa) then
          begin
            lsaEmpresa := FBasico.PropriedadeUsuario('EMPRESA_PADRAO');
            if empty(lsaEmpresa) then
            begin
              lsaEmpresa := AllTrim(FBasico.GetSystemDefault('GERAL',
                'EMPRESA_PADRAO', vslCodigoEmpresa[0]));
            end;
          end;
          lniItem := vslCodigoEmpresa.IndexOf(lsaEmpresa);
          if lniItem < 0 then
          begin
            lsaEmpresa := vslCodigoEmpresa[0];
            lniItem := 0;
          end;
          FBasico.SelecionarEmpresa(lsaEmpresa);
          cmbEmpresa.ItemIndex := lniItem;
          if FBasico.ValidateDataBaseVersion(true) or (DebugHook > 0) then
          begin
            FBasico.ValidateServerVersion(swcMinServerVersion,
              not ibbHomologacao, false, false);

            if not ibbHomologacao then
              FBasico.SetaDadosStatusBar(BarraDeStatus, ibbHomologacao);
            { BarraDeStatus.Panels[0].Text  := FBasico.isaNomeUsuario;
              BarraDeStatus.Panels[1].Text  := FBasico.isaNomeEstacao;
              BarraDeStatus.Panels[2].Text  := DateToStr(FBasico.GetSystemDate); }
            MakeMenu(FBasico, MainMenu, FBasico.iniGrupoUsuario);
            lbbNovoCalculoServico := true;
            // FBasico.GetSystemDefault('NOTAS_SERVICO', 'NOVO_CALCULO_SERVICO', 'N') = 'S';
            if lbbNovoCalculoServico then
            begin
              smiSSVC04.Visible := false;
              smiSSVC04.Enabled := false;
              smiSSVC05.Visible := false;
              smiSSVC05.Enabled := false;
              smiSSVC06.Visible := true;
              smiSSVC06.Enabled := true;
              smiSRES05.Enabled := true;
              smiSRES05.Visible := true;
            end
            else
            begin
              smiSSVC04.Visible := true;
              smiSSVC04.Enabled := true;
              smiSSVC05.Visible := true;
              smiSSVC05.Enabled := true;
              smiSSVC06.Visible := false;
              smiSSVC06.Enabled := false;
              smiSRES05.Enabled := false;
              smiSRES05.Visible := false;
            end;
            Timer1.Enabled := true;
            // ( FBasico.iniTimeOutMinutos>0); para verificar as mensagens
            vdhUltimaAtualizacaoMensagens := 0;
            vdhAtualizarMensagens := 0;
            SetMinute(vdhAtualizarMensagens,
              StrToIntDef(AllTrim(FBasico.GetSystemDefault('GERAL',
              'ATUALIZAR_MENSAGENS', '10')), 10));
            AtualizarBarraStatus;
            // prepara o menu
            vfrmMenu := TfrmTreeMenu.Create(Self);
            vfrmMenu.Ibasico := FBasico;
            vfrmMenu.Inicializar;
            vfrmMenu.Width := vfrmMenu.iniTamanhoMenu;
            vfrmMenu.Height := vfrmMenu.iniAlturaMenu;
            vfrmMenu.CarregarMenu('Simplex', MainMenu);
            vfrmMenu.Expandir;
          end
          else
          begin
            fbbForceClose := true;
            Close;
          end;
          ValidarPropriedadesGlobais;
        end
        else
        begin
          MessageDlg
            ('Năo foi possível encontrar o cadastro da empresa corrente! O aplicativo será finalizado!',
            mtError, [mbOk], 0);
          Close;
        end;
      finally
        FBasico.MSGAguarde(false, false);
      end;
    end
    else
      Close;
  end;

  if FBasico.DatabaseConnection.connected then
  begin
    FBasico.SetaDadosStatusBar(BarraDeStatus, ibbHomologacao);
    FBasico.MSGAguarde(false);

    FBasico.GetSystemDefault('BALANCA_FLUXO','HOST','localhost');
    FBasico.GetSystemDefault('BALANCA_FLUXO','PORT','8080');
    FBasico.GetSystemDefault('BALANCA_FLUXO','TCP_DATA_UPDATE_RATE','5000');
    FBasico.GetSystemDefault('BALANCA_FLUXO','UDP_DATA_UPDATE_RATE','1000');
    FBasico.GetSystemDefault('BALANCA_FLUXO','NUM_RELAY','0');
    FBasico.GetSystemDefault('BALANCA_FLUXO','NUM_SENSOR','4');
  end;

end;

procedure TfrmMain.cmbEmpresaChange(Sender: TObject);
begin
  if (FBasico <> Nil) then
  begin
    if FBasico.DatabaseConnection.Connected then
    begin
      FBasico.SelecionarEmpresa(vslCodigoEmpresa[cmbEmpresa.ItemIndex]);
      FBasico.ApplicationPaintInfo(Self, nil);
      FBasico.UpdateMainWindow(Self);
      FBasico.SetaDadosStatusBar(BarraDeStatus, ibbHomologacao);
      Self.Paint;
      ValidarPropriedadesGlobais;
    end;
  end;
end;

procedure TfrmMain.FormPaint(Sender: TObject);
begin
  FBasico.ApplicationPaintInfo(Self, nil);
end;

procedure TfrmMain.aclMensagensExecute(Sender: TObject);
var
  lobFormulario: TfrmMensagens;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmMensagens') then
    begin
      lobFormulario := TfrmMensagens.Create(Nil);
      try
        lobFormulario.Ibasico := FBasico;
        lobFormulario.Inicializar;
        lobFormulario.Show;
        lobFormulario.Refresh;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin

  FBasico.ApplicationTimeOut;
  if Time() - vdhUltimaAtualizacaoMensagens > vdhAtualizarMensagens then
  begin
    vdhUltimaAtualizacaoMensagens := Time();
    AtualizarBarraStatus;
  end;
end;

procedure TfrmMain.ValidarPropriedadesGlobais;
begin
  FBasico.GetSystemDefault('ROMANEIO', 'BLOQUEAR_EDICAO_NOTA', 'S', false,
    swcString, true);

  FBasico.GetSystemDefault('PORTARIA', 'CONFIRMAR_PESAGEM', 'N', false,
    swcString, true);

  FBasico.GetSystemDefault('PORTARIA', 'CAMERA_MJPEG_HOST', '', false,
    swcString, true);
  FBasico.GetSystemDefault('PORTARIA', 'CAMERA_MJPEG_USUARIO', '', false,
    swcString, true);
  FBasico.GetSystemDefault('PORTARIA', 'CAMERA_MJPEG_SENHA', '', false,
    swcString, true);
  FBasico.GetSystemDefault('PORTARIA', 'CAMERA_MJPEG', 'N', false,
    swcString, true);
  FBasico.GetSystemDefault('PORTARIA', 'ROB10_CLASSIFICAR_ROB13', 'N');
  FBasico.GetSystemDefault('PORTARIA', 'EXIGIR_TRANGENIA_FINALIZACAO', 'N');
  FBasico.GetSystemDefault('PORTARIA', 'CLASSIFICACAO_VARIACAO_MEDIA_PC', '0');
  FBasico.GetSystemDefault('NOTAS_SERVICO', 'BLOQUEAR_ROMANEIO_SEM_NOTA', 'N',
    false, swcString, true);

  FBasico.GetSystemDefault('NOTAS_SERVICO', 'SERIE', 'A-1');
  FBasico.GetSystemDefault('NOTAS_SERVICO', 'NUMERO_AUTOMATICO', 'S');
  FBasico.GetSystemDefault('NOTAS_SERVICO', 'PROXIMO_NUMERO', '1');
  FBasico.GetSystemDefault('NOTAS_SERVICO', 'ALIQ_ISSQN', '500');

  FBasico.GetSystemDefault('NOTA_FISCAL', 'IMPOSTOS_IRRF_PISO', '66700');
  FBasico.GetSystemDefault('NOTA_FISCAL', 'IMPOSTOS_IRRF_ALIQUOTA', '150');

  FBasico.GetSystemDefault('NOTA_FISCAL', 'IMPOSTOS_CS_PISO', '500000');
  FBasico.GetSystemDefault('NOTA_FISCAL', 'IMPOSTOS_CS_ALIQUOTA', '100');

  FBasico.GetSystemDefault('NOTA_FISCAL', 'IMPOSTOS_PIS_PISO', '500000');
  FBasico.GetSystemDefault('NOTA_FISCAL', 'IMPOSTOS_PIS_ALIQUOTA', '065');

  FBasico.GetSystemDefault('NOTA_FISCAL', 'IMPOSTOS_COFINS_PISO', '500000');
  FBasico.GetSystemDefault('NOTA_FISCAL', 'IMPOSTOS_COFINS_ALIQUOTA', '300');

  FBasico.GetSystemDefault('ROMANEIO', 'VALIDAR_CONSULTA_INTEGRACAO', 'N');
  FBasico.GetSystemDefault('ROMANEIO', 'VALIDAR_CONSULTA_INTEGRACAO_URL',
    'localhost');
  FBasico.GetSystemDefault('ROMANEIO',
    'VALIDAR_CONSULTA_INTEGRACAO_PORTA', '8080');
  FBasico.GetSystemDefault('NOTA_FISCAL', 'NFE_CARTA_CORRECAO_PRAZO', '30');

  FBasico.GetSystemDefault('ROMANEIO',
    'QUEBRA_TECNICA_QUINZENA_FECHADA_PARCIAL_FINAL', 'N');

  FBasico.GetSystemDefault('GERAL', 'ACTIVE_DIRECTORY_INTEGRADO', 'N');
  FBasico.GetSystemDefault('GERAL', 'ACTIVE_DIRECTORY_DOMINIO', '');

end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  FBasico.UpdateMainWindow(Self);
end;

procedure TfrmMain.smiTAA01Click(Sender: TObject);
var
  lfrSafras: TfrmLocalizarSafras;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarSafras') then
    begin
    lfrSafras := TfrmLocalizarSafras.Create(Nil);
    try
      lfrSafras.Ibasico := FBasico;
      lfrSafras.Caption := smiTAA01.Caption;
      lfrSafras.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
   end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiTAA02Click(Sender: TObject);
var
  lfrSilos: TfrmLocalizarSilos;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmlocalizarSilos') then
    begin
    lfrSilos := TfrmLocalizarSilos.Create(Nil);
    try
      lfrSilos.Ibasico := FBasico;
      lfrSilos.Caption := smiTAA02.Caption;
      lfrSilos.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiTAA03Click(Sender: TObject);
var
  lfrOperacoesRomaneios: TfrmLocalizarOperacoesRomaneios;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmlocalizarOperacoesRomaneios') then
    begin
    lfrOperacoesRomaneios := TfrmLocalizarOperacoesRomaneios.Create(Nil);
    try
      lfrOperacoesRomaneios.Ibasico := FBasico;
      lfrOperacoesRomaneios.Inicializar;
      lfrOperacoesRomaneios.Caption := smiTAA03.Caption;
      lfrOperacoesRomaneios.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiTAA04Click(Sender: TObject);
var
  lfrTabelaClassificacao: TfrmLocalizarTabelaClassificacao;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarTabelaClassificacao') then
    begin
    lfrTabelaClassificacao := TfrmLocalizarTabelaClassificacao.Create(Nil);
    try
      /// TABELAS_02
      /// TABELAS_00
      lfrTabelaClassificacao.Ibasico := FBasico;
      lfrTabelaClassificacao.Caption := smiTAA04.Caption;
      lfrTabelaClassificacao.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiTAP01Click(Sender: TObject);
var
  lfrProdutos: TfrmLocalizarProdutos;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmlocalizarProdutos') then
    begin
    lfrProdutos := TfrmLocalizarProdutos.Create(Nil);
    try
      lfrProdutos.Ibasico := FBasico;
      lfrProdutos.Caption := vfrmMenu.isaTituloFormulario;
      lfrProdutos.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiTAP02Click(Sender: TObject);
var
  lfrFormulario: TfrmLocalizarNCM;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmlocalizarNCM') then
    begin
    lfrFormulario := TfrmLocalizarNCM.Create(Nil);
    try
      lfrFormulario.Ibasico := FBasico;
      lfrFormulario.Caption := smiTAP02.Caption;
      lfrFormulario.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiTAG01Click(Sender: TObject);
var
  lobFormulario: TfrmLocalizarUF;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarUF') then
    begin
      lobFormulario := TfrmLocalizarUF.Create(Nil);
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Caption := smiTAG01.Caption;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiTAG02Click(Sender: TObject);
var
  lfrFormulario: TfrmLocalizarMunicipio;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario ('TfrmLocalizarMunicipio') then
    begin
    lfrFormulario := TfrmLocalizarMunicipio.Create(Nil);
    try
      lfrFormulario.Ibasico := FBasico;
      lfrFormulario.Inicializar;
      lfrFormulario.Caption := smiTAG02.Caption;
      lfrFormulario.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiTAG03Click(Sender: TObject);
var
  lfrFormulario: TfrmLocalizarObservacoes;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarObservacoes') then
    begin
    lfrFormulario := TfrmLocalizarObservacoes.Create(Nil);
    try
      lfrFormulario.Ibasico := FBasico;
      lfrFormulario.Caption := smiTAG03.Caption;
      lfrFormulario.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiPEC01Click(Sender: TObject);
var
  FCadastroPessoas: TFCadastroPessoas;
  i: Integer;
  Aberto: Boolean;
begin
  try
    FBasico.MSGAguarde();
    Aberto := false;
    for i := 0 to (MDIChildCount - 1) do
    begin
      if (MDIChildren[i] is TFCadastroPessoas) then
      begin
        Aberto := true;
        if (MDIChildren[i] as TFCadastroPessoas).WindowState <> wsNormal then
        begin
          (MDIChildren[i] as TFCadastroPessoas).WindowState :=
            wsNormal end else begin (MDIChildren[i] as TFCadastroPessoas).Show;
        end;
      end;
    end;
    if not Aberto then
    begin
      FCadastroPessoas := TFCadastroPessoas.Create(nil);
      FCadastroPessoas.Ibasico := FBasico;
      FCadastroPessoas.Caption := smiPEC01.Caption;
      FCadastroPessoas.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiPortadorClick(Sender: TObject);
var
  lobFormulario : TfrmLocalizarPortador;
begin
   if not LancarFormulario('TfrmLocalizarPortador') then
   begin
     lobFormulario         := TfrmLocalizarPortador.Create(Nil);
     lobFormulario.iBasico := FBasico;
     lobFormulario.Inicializar;
     lobFormulario.Show;
   end;

end;

procedure TfrmMain.smiROB01Click(Sender: TObject);
var
  lfrPortaria: TfrmPortaria;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmPortaria') then
    begin
      lfrPortaria := TfrmPortaria.Create(Nil);
      try
        lfrPortaria.Ibasico := FBasico;
        lfrPortaria.Show;
        frmPortaria := lfrPortaria;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiROB02Click(Sender: TObject);
var
  lobFormulario: TfrmLimparPesagem;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLimparPesagem') then
    begin
      lobFormulario := TfrmLimparPesagem.Create(Nil);
      try
        lobFormulario.Ibasico := FBasico;
        lobFormulario.Show;
        lobFormulario.Refresh;
        lobFormulario.Inicializar;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiROB03Click(Sender: TObject);
var
  lobFormulario: TfrmAlterarPesagem;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmAlterarPesagem') then
    begin
      lobFormulario := TfrmAlterarPesagem.Create(nil);
      try
        lobFormulario.Ibasico := FBasico;
        lobFormulario.Show;
        lobFormulario.Refresh;
        lobFormulario.Inicializar;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiROM01Click(Sender: TObject);
var
  lfrRomaneio: TfrmLocalizarRomaneio;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarRomaneio') then
    begin
      lfrRomaneio := TfrmLocalizarRomaneio.Create(Nil);
      try
        // ROMANEIO_01
        // ROMANEIO_00
        lfrRomaneio.Show;
        lfrRomaneio.Refresh;
        lfrRomaneio.Ibasico := FBasico;
        lfrRomaneio.Caption := smiROM01.Caption;
        lfrRomaneio.Inicializar;
      except
        on e: exception do
        begin
          MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiROM02Click(Sender: TObject);
var
  lfrFormulario: TfrmLocalizarPlaca;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarPlaca') then
    begin
      lfrFormulario := TfrmLocalizarPlaca.Create(nil);
      try
        lfrFormulario.Ibasico := FBasico;
        lfrFormulario.Caption := smiROM02.Caption;
        lfrFormulario.Show;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiROM03Click(Sender: TObject);
var
  lfrValorMercado: TfrmLocalizarValorMercado;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarValorMercado') then
    begin
      lfrValorMercado := TfrmLocalizarValorMercado.Create(Nil);
      try
        lfrValorMercado.Ibasico := FBasico;
        lfrValorMercado.Caption := smiROM03.Caption;
        lfrValorMercado.Show;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiCOF01Click(Sender: TObject);
var
  lobFormulario: TfrmLocalizarContratoServico;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarContratoServico') then
    begin
      lobFormulario := TfrmLocalizarContratoServico.Create(Nil);
      try
        lobFormulario.Ibasico := FBasico;
        lobFormulario.Inicializar;
        lobFormulario.Show;
        lobFormulario.Refresh;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.d1Click(Sender: TObject);
var
  lfrFormulario: TfrmRPT_CONTROLE_REGISTRO_PESAGEM;
begin
  try
    if not LancarFormulario('TfrmRPT_CONTROLE_REGISTRO_PESAGEM') then
    begin
      try
        FBasico.MSGAguarde();
        lfrFormulario := TfrmRPT_CONTROLE_REGISTRO_PESAGEM.Create(Nil);
//        lfrFormulario.Caption := SRER222.Caption;
        lfrFormulario.iBasico:= FBasico;
      except
        on e: exception do
        begin
          FBasico.MSGAguarde(false);
          FBasico.boxErro('Erro: ' + e.message, SRER211.Caption);
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;


procedure TfrmMain.dmiCOF02Click(Sender: TObject);
var
  lfrRelatorio: TfrmLocalizarGrupoDepositantes;
begin
  try
     FBasico.MSGAguarde();
     if not LancarFormulario('TfrmLocalizarGrupoDepositantes') then
     begin
        lfrRelatorio := TfrmLocalizarGrupoDepositantes.Create(nil);
        try
           if FBasico.PropriedadeUsuario('GRUPO_DEPOSITANTES') = 'S' then
           begin
              lfrRelatorio.Ibasico := FBasico;
              lfrRelatorio.Inicializar;
              lfrRelatorio.Caption := SPEC021.Caption;
              lfrRelatorio.Show; // Modal;
           end
           else
           begin
              MessageDlg('Acesso negado. Contacte o administrador do sistema!',mtError, [mbOk], 0);
           end;
        except
          on e: exception do
          begin
             ShowMessage(e.message);
          end;
        end;
     end;
  finally
     FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRTA01Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_SAFRA;
begin
            try
              FBasico.MSGAguarde();
              if not LancarFormulario('TfrmRPT_SAFRA') then
              begin
                lobFormulario := TfrmRPT_SAFRA.Create(Nil);
                lobFormulario.Caption := smiRTA01.Caption;
                lobFormulario.Ibasico := FBasico;
                lobFormulario.Inicializar;
                lobFormulario.Show;
              end;
            finally
              FBasico.MSGAguarde(false);
            end;
end;

procedure TfrmMain.smiRTA02Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_Silos;
begin
        try
          FBasico.MSGAguarde();
          if not LancarFormulario('TfrmRPT_Silos') then
          begin
            lobFormulario := TfrmRPT_Silos.Create(Nil);
            lobFormulario.Caption := smiRTA02.Caption;
            lobFormulario.Ibasico := FBasico;
            lobFormulario.Inicializar;
            lobFormulario.Show;
          end;
        finally
          FBasico.MSGAguarde(false);
        end;

end;

procedure TfrmMain.smiRTA03Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_OperacoesRomaneio;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_OperacoesRomaneio') then
    begin
      lobFormulario := TfrmRPT_OperacoesRomaneio.Create(Nil);
      lobFormulario.Caption := smiRTA03.Caption;
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRTA04Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_TabelaClassificacao;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_TabelaClassificacao') then
    begin
      lobFormulario := TfrmRPT_TabelaClassificacao.Create(nil);
      lobFormulario.Caption := smiRTA04.Caption;
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRTP01Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_Produtos;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_Produtos') then
    begin
      lobFormulario := TfrmRPT_Produtos.Create(nil);
      lobFormulario.Caption := smiRTP01.Caption;
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRTG01Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_Municipio;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_Municipio') then
    begin
      lobFormulario := TfrmRPT_Municipio.Create(Nil);
      lobFormulario.Caption := smiRTG01.Caption;
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiREP01Click(Sender: TObject);
var
  lfrmListagem: TfrmRPT_Pessoa;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_Pessoa') then
    begin
      lfrmListagem := TfrmRPT_Pessoa.Create(Nil);
      try
        try
          lfrmListagem.Caption := vfrmMenu.isaTituloFormulario;
          lfrmListagem.Ibasico := FBasico;
          lfrmListagem.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lqrListagem.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiREP02Click(Sender: TObject);
var
  lfrmRelatorio: TqrptTelefones;
begin
//todas as rotinas de formularios chamam    a linha:
//   if not LancarFormulario('TfrmRPT_SAFRA') then , ou seja, todas chamam o mesmo formulario
// dentro dessa rotina (LançarFormulario) foi feito um tratamento para quando o S.O
// não possuir nenhuma impressora padrão. Aqui, esse tratamento teve que ser replicado porque,
// este relatorio foge dos padrões
  if not impressora then
     exit
  else
  begin
              try
                FBasico.MSGAguarde();
                //if not LancarFormulario ('TqrptTelefones') then
               // begin
                lfrmRelatorio := TqrptTelefones.Create(Nil);
                try
                  try
                    // lfrmRelatorio.Caption := smiREP02.Caption;
                    lfrmRelatorio.Ibasico := FBasico;
                    lfrmRelatorio.CreateObjects;
                    lfrmRelatorio.Inicializar;
                    lfrmRelatorio.Preview;
                  except
                    on e: exception do
                      MessageDlg(e.message, mtError, [mbOk], 0);
                  end;
                finally
                  lfrmRelatorio.DestroyObjects;
                  lfrmRelatorio.Free;
                 // end;
                end;
              finally
                FBasico.MSGAguarde(false);
              end;
  end; //fim do else da impressora
end;

procedure TfrmMain.smiRER01Click(Sender: TObject);
var
  lfrExtrato: TfrmRPT_ExtratoDepositante;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_ExtratoDepositante') then
    begin
      lfrExtrato := TfrmRPT_ExtratoDepositante.Create(Nil);
      try
        try
          // RPT_FRM_EXTRATO_DEPOSITANTE;
          lfrExtrato.Caption := smiRER01.Caption;
          lfrExtrato.Ibasico := FBasico;
          lfrExtrato.Show;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRER02Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_RomaneiosDiarios;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_RomaneiosDiarios') then
    begin
      lfrRelatorio := TfrmRPT_RomaneiosDiarios.Create(Nil);
      try
        try
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Show; // Modal;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRER03Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_RomaneiosCancelados;
  // lstMensagem: String;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_RomaneiosCancelados') then
    begin
      lfrRelatorio := TfrmRPT_RomaneiosCancelados.Create(Nil);
      try
        try
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Show; // Modal;
          lfrRelatorio.Inicializar;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRER04Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_ControleMovimentacaoDiaria;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_ControleMovimentacaoDiaria') then
    begin
      lfrRelatorio := TfrmRPT_ControleMovimentacaoDiaria.Create(Nil);
      try
        try
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Show; // Modal;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRER05Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_PesagensTicket;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_PesagensTicket') then
    begin
      try
        lobFormulario := TfrmRPT_PesagensTicket.Create(Nil);
        lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
        lobFormulario.Ibasico := FBasico;
        lobFormulario.Inicializar;
        lobFormulario.Show;
      except
        on e: exception do
        begin
          ShowMessage(e.message);
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRMT10Click(Sender: TObject);
var
  lfrManifestoPadrao: TfrmGerarManifestoPadrao;
  lstrMensagem: String;
begin
  try
    FBasico.MSGAguarde();
    lstrMensagem := '';

    if FBasico.ValidateServerVersion('6.7.9.180', true, true, true) then
    begin
      if not LancarFormulario('TfrmGerarManifestoPadrao') then
      begin
        lfrManifestoPadrao := TfrmGerarManifestoPadrao.Create(Nil);
        try
          try
            lfrManifestoPadrao.Caption := vfrmMenu.isaTituloFormulario;
            lfrManifestoPadrao.Ibasico := FBasico;
            if lfrManifestoPadrao.Inicializar(lstrMensagem) then
              lfrManifestoPadrao.Show
            else
              FBasico.boxErro(lstrMensagem, 'SiaStandard');
          except
            on e: exception do
              FBasico.boxErro(e.message, 'SiaStandard');
          end;
        finally
          // lfrExtrato.Free;
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRMT11Click(Sender: TObject);
var
  lfrExtrato: TfrmRPT_EmbarquesVagao;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_EmbarquesVagao') then
    begin
      lfrExtrato := TfrmRPT_EmbarquesVagao.Create(Nil);
      try
        try
          lfrExtrato.Ibasico := FBasico;
          lfrExtrato.Caption := vfrmMenu.isaTituloFormulario;
          lfrExtrato.Show;
          lfrExtrato.Inicializar;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRMT12Click(Sender: TObject);
// var
// lfrFormulario: TfrmRPT_EmbarquesExcel;
// lstMensagem: String;
begin
  // SIA-8693
  { if not LancarFormulario('TfrmRPT_EmbarquesExcel') then
    begin
    try
    try
    lfrFormulario := TfrmRPT_EmbarquesExcel.Create(Nil);
    lfrFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lfrFormulario.Ibasico := FBasico;
    lfrFormulario.Inicializar(lstMensagem);
    lfrFormulario.Show;
    except
    on e: exception do
    MessageDlg(e.message, mtError, [mbOk], 0);
    end;
    finally
    // lfrmFormulario.Free;
    end;
    end; }
end;

procedure TfrmMain.smiRRP02Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_TEMPO_PESAGEM;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_TEMPO_PESAGEM') then
    begin
      lfrRelatorio := TfrmRPT_TEMPO_PESAGEM.Create(Nil);
      try
        try
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Show;
          lfrRelatorio.Inicializar;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.REF01Ttulos1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_Titulos;
begin
  if not LancarFormulario('TfrmRPT_Titulos') then
  begin
    lobFormulario := TfrmRPT_Titulos.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.RMT12GerarManifestoPadroEDI1Click(Sender: TObject);
var
  frmListaManifestos: TfrmListaManifestos;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('frmListaManifestos') then
    begin
      frmListaManifestos := TfrmListaManifestos.Create(Nil);
      try
        frmListaManifestos.Ibasico := FBasico;
        frmListaManifestos.Inicializar();
        frmListaManifestos.Show;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.ROB10Portaria1Click(Sender: TObject);
var
  lobFormulario: TfrmPortariaConsulta;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmPortariaConsulta') then
    begin
      lobFormulario := TfrmPortariaConsulta.Create(Nil);
      try
        lobFormulario.Caption := ROB10Portaria1.Caption;
        lobFormulario.Ibasico := FBasico;
        lobFormulario.onChangeUnidadeCorporativa := setUnidadeCorporativa;
        lobFormulario.Inicializar;
        lobFormulario.Show;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.setUnidadeCorporativa(pstrCodigoCompleto: String);
begin
  cmbEmpresa.ItemIndex := vslCodigoEmpresa.IndexOf(AllTrim(pstrCodigoCompleto));
  cmbEmpresaChange(nil);
end;

procedure TfrmMain.RRO07MediadeProdutividadeporGleba1Click(Sender: TObject);
var
  lfrExtrato: TfrmRPT_ProdutividadeGlebas;
begin
  { * alterado o nome do caption de "RRO03 - Media de Produtividade por Gleba"  * }
  { * > para: >> SRRO07 - Media de Produtividade por Gleba                      * }
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_ProdutividadeGlebas') then
    begin
      lfrExtrato := TfrmRPT_ProdutividadeGlebas.Create(Nil);
      try
        try
          lfrExtrato.Caption := vfrmMenu.isaTituloFormulario;
          lfrExtrato.Ibasico := FBasico;
          lfrExtrato.Inicializar;
          lfrExtrato.Show;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.RRR161Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_DiferencaOrigemDestino;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_DiferencaOrigemDestino') then
    begin
      lfrRelatorio := TfrmRPT_DiferencaOrigemDestino.Create(Nil);
      try
        try
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Show; // Modal;
          lfrRelatorio.Inicializar;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.RRT01SeleodeNotasFiscaisparaTransbordo1Click
  (Sender: TObject);
var
  lfrExtrato: TfrmRPT_SelecaoNFTransbordo;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_SelecaoNFTransbordo') then
    begin
      lfrExtrato := TfrmRPT_SelecaoNFTransbordo.Create(Nil);
      try
        try
          lfrExtrato.Ibasico := FBasico;
          lfrExtrato.Show;
          lfrExtrato.Inicializar;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.SCRC01FinalidadedoContrato1Click(Sender: TObject);
var
  lfrmFormulario: TfrmLocalizarContratoFinalidade;
begin
  if not LancarFormulario('TfrmLocalizarContratoFinalidade') then
  begin
    lfrmFormulario:= TfrmLocalizarContratoFinalidade.Create(nil);
    try
      lfrmFormulario.iBasico := FBasico;
      lfrmFormulario.Show;
      lfrmFormulario.Refresh;
      lfrmFormulario.Inicializar;
    except
      on e :exception do
      begin
        FBasico.boxErro(e, Self.Caption);
      end;
    end;
  end;
end;

procedure TfrmMain.SCRM01Contrato1Click(Sender: TObject);
var
  lfrmFormulario: TfrmLocalizarContrato;
begin
  if not LancarFormulario('TfrmLocalizarContrato') then
  begin
    lfrmFormulario := TfrmLocalizarContrato.Create(nil);
    try
      lfrmFormulario.iBasico := FBasico;
      lfrmFormulario.Show;
      lfrmFormulario.Refresh;
      lfrmFormulario.Inicializar;
    except
      on e : exception do
      begin
        FBasico.boxErro(e, Self.Caption);
      end;
    end;
  end;
end;

procedure TfrmMain.SCRM02Adiantamentos1Click(Sender: TObject);
var
  lfrmFormulario: TfrmLocalizarAdiantamento;
begin
  if not LancarFormulario('TfrmLocalizarAdiantamento') then
  begin
    lfrmFormulario := TfrmLocalizarAdiantamento.Create(nil);
    try
      lfrmFormulario.iBasico := FBasico;
      lfrmFormulario.Show;
      lfrmFormulario.Refresh;
      lfrmFormulario.Inicializar;
    except
      on e : exception do
      begin
        FBasico.boxErro(e, Self.Caption);
      end;
    end;
  end;
end;

procedure TfrmMain.SCRM03Fixaes1Click(Sender: TObject);
var
  lfrmFormulario: TfrmLocalizarFixacao;
begin
  if not LancarFormulario('TfrmLocalizarFixacao') then
  begin
    lfrmFormulario := TfrmLocalizarFixacao.Create(nil);
    try
      lfrmFormulario.iBasico := FBasico;
      lfrmFormulario.Caption := vfrmMenu.isaTituloFormulario;
      lfrmFormulario.Show;
      lfrmFormulario.Refresh;
      lfrmFormulario.Inicializar;
    except
      on e : exception do
      begin
        FBasico.boxErro(e, Self.Caption);
      end;
    end;
  end;
end;

procedure TfrmMain.SCRM04OpodeCompra1Click(Sender: TObject);
var
  lfrmFormulario : TfrmLocalizarOpcaoCompra;
begin
  if not LancarFormulario('TfrmLocalizarOpcaoCompra') then
  begin
    lfrmFormulario := TfrmLocalizarOpcaoCompra.Create(nil);
    try
      lfrmFormulario.iBasico := FBasico;
      lfrmFormulario.Show;
      lfrmFormulario.Refresh;
      lfrmFormulario.Inicializar;
    except
      on e : exception do
      begin
        FBasico.boxErro(e, Self.Caption);
      end;
    end;
  end;
end;

procedure TfrmMain.SCRM09Visitas1Click(Sender: TObject);
var
 lfrmVisita : TfrmLocalizarVisita;
begin
  if not LancarFormulario('TfrmLocalizarVisita') then
  begin
    lfrmVisita := TfrmLocalizarVisita.Create(nil) ;
    try
      lfrmVisita.iBasico := FBasico;
      lfrmVisita.inicializar;
      lfrmVisita.Show;
    except
      on e : exception do
      begin
        FBasico.boxErro(e, Self.Caption);
      end;
    end;
  end;
end;

procedure TfrmMain.SCRM11PsVendas1Click(Sender: TObject);
var
  lfrmFormulario: TfrmLocalizarPosVenda;
begin
  if not LancarFormulario('TfrmLocalizarPosVenda') then
  begin
    lfrmFormulario := TfrmLocalizarPosVenda.Create(nil);
    try
      lfrmFormulario.iBasico := FBasico;
      lfrmFormulario.Show;
      lfrmFormulario.Refresh;
      lfrmFormulario.Inicializar;
    except
      on e : exception do
      begin
        FBasico.boxErro(e, Self.Caption);
      end;
    end;
  end;
end;

procedure TfrmMain.SCRM12TestedeQualidadenaAreia1Click(Sender: TObject);
var
  lfrmFormulario: TfrmLocalizarPedido;
begin
  if not LancarFormulario('TfrmLocalizarPedido') then
  begin
    lfrmFormulario := TfrmLocalizarPedido.Create(nil);
    try
      lfrmFormulario.iBasico := FBasico;
      lfrmFormulario.Inicializar;
      lfrmFormulario.Show;
    except
      on e : exception do
      begin
        FBasico.boxErro(e, Self.Caption);
      end;
    end;
  end;
end;

procedure TfrmMain.SCRM15ProcessarPedidos1Click(Sender: TObject);
var
  lfrmFormulario: TfrmProcessarPedidos;
begin
  if not LancarFormulario('TfrmProcessarPedidos') then
  begin
    lfrmFormulario := TfrmProcessarPedidos.Create(nil);
    try
      lfrmFormulario.iBasico := FBasico;
      lfrmFormulario.Inicializar;
      lfrmFormulario.Show;
    except
      on e : exception do
      begin
        FBasico.boxErro(e, Self.Caption);
      end;
    end;
  end;
end;

procedure TfrmMain.SCRM16RecebimentoEntrega1Click(Sender: TObject);
var
  lfrmFormulario: TfrmLocalizarRomaneioPedidoEntrega;
begin
  if not LancarFormulario('TfrmLocalizarRomaneioPedidoEntrega') then
  begin
    lfrmFormulario := TfrmLocalizarRomaneioPedidoEntrega.Create(nil);
    try
      lfrmFormulario.iBasico := FBasico;
      lfrmFormulario.Show;
      lfrmFormulario.Refresh;
      lfrmFormulario.Inicializar;
    except
      on e : exception do
      begin
        FBasico.boxErro(e, Self.Caption);
      end;
    end;
  end;
end;

procedure TfrmMain.smiRRT01Click(Sender: TObject);
var
  lfrExtrato: TfrmRPT_SelecaoNFTransbordo;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_SelecaoNFTransbordo') then
    begin
      lfrExtrato := TfrmRPT_SelecaoNFTransbordo.Create(Nil);
      try
        try
          lfrExtrato.Caption := vfrmMenu.isaTituloFormulario;
          lfrExtrato.Ibasico := FBasico;
          lfrExtrato.Show;
          lfrExtrato.Inicializar;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiRRT02Click(Sender: TObject);
var
  lfrExtrato: TfrmRPT_Embarques;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_Embarques') then
    begin
      lfrExtrato := TfrmRPT_Embarques.Create(Nil);
      try
        try
          lfrExtrato.Caption := vfrmMenu.isaTituloFormulario;
          lfrExtrato.Ibasico := FBasico;
          lfrExtrato.Show;
          lfrExtrato.Inicializar;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiRRT03Click(Sender: TObject);
var
  lfrExtrato: TfrmRPT_EmbarquesColeta;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_EmbarquesColeta') then
    begin
      lfrExtrato := TfrmRPT_EmbarquesColeta.Create(Nil);
      try
        try
          lfrExtrato.Caption := vfrmMenu.isaTituloFormulario;
          lfrExtrato.Ibasico := FBasico;
          lfrExtrato.Show;
          lfrExtrato.Inicializar;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiRRT04Click(Sender: TObject);
var
  lfrExtrato: TfrmRPT_CarregamentoVagoes;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_CarregamentoVagoes') then
    begin
      lfrExtrato := TfrmRPT_CarregamentoVagoes.Create(Nil);
      try
        try
          lfrExtrato.Caption := vfrmMenu.isaTituloFormulario;
          lfrExtrato.Ibasico := FBasico;
          lfrExtrato.Show;
          lfrExtrato.Inicializar;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiRRT05Click(Sender: TObject);
var
  lfrExtrato: TfrmRPT_ConferenciaFrete;
begin
  try
    FBasico.MSGAguarde();
    lfrExtrato := TfrmRPT_ConferenciaFrete.Create(Nil);
    try
      try
        lfrExtrato.Caption := vfrmMenu.isaTituloFormulario;
        lfrExtrato.Ibasico := FBasico;
        lfrExtrato.Show;
        lfrExtrato.Inicializar;
      except
        on e: exception do
        begin
          ShowMessage(e.message);
        end;
      end;
    finally
      // lfrExtrato.Free;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRRT06Click(Sender: TObject);
var
  lobFormulario: TfrmTransbordoSaida;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmTransbordoSaida') then
    begin
      lobFormulario := TfrmTransbordoSaida.Create(Nil);
      lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRRO01Click(Sender: TObject);
var
  lfrMedia: TfrmRPT_BoletimEstoque;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_BoletimEstoque') then
    begin
      lfrMedia := TfrmRPT_BoletimEstoque.Create(Nil);
      try
        try
          lfrMedia.Caption := vfrmMenu.isaTituloFormulario;
          lfrMedia.Ibasico := FBasico;
          lfrMedia.Show;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiRRO02Click(Sender: TObject);
var
  lfrMedia: TfrmRPT_MediaPonderadaGeral;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_MediaPonderadaGeral') then
    begin
      lfrMedia := TfrmRPT_MediaPonderadaGeral.Create(Nil);
      try
        try
          lfrMedia.Caption := vfrmMenu.isaTituloFormulario;
          lfrMedia.Ibasico := FBasico;
          lfrMedia.Show;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiRRO03Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_SaldoPeriodo;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_SaldoPeriodo') then
    begin
      lfrRelatorio := TfrmRPT_SaldoPeriodo.Create(Nil);
      try
        try
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Show; // Modal;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiRRO04Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_SaldoDetalhado;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_SaldoDetalhado') then
    begin
      lfrRelatorio := TfrmRPT_SaldoDetalhado.Create(Nil);
      try
        try
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Show; // Modal;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiRRO5Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_MovimentacaoMes;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_MovimentacaoMes') then
    begin
      lfrRelatorio := TfrmRPT_MovimentacaoMes.Create(Nil);
      try
        try
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Inicializar;
          lfrRelatorio.Show;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiFUF02Click(Sender: TObject);
var
  lfrFormulario: TfrmGrupoAcesso;
begin
  try
    FBasico.MSGAguarde();
    lfrFormulario := TfrmGrupoAcesso.Create(Nil);
    try
      try
        lfrFormulario.Caption := vfrmMenu.isaTituloFormulario;
        lfrFormulario.Ibasico := FBasico;
        lfrFormulario.pMainMenu := MainMenu;
        lfrFormulario.Inicializar;
        lfrFormulario.ShowModal;
      except
        on e: exception do
        begin
          ShowMessage(e.message);
        end;
      end;
    finally
      lfrFormulario.Free;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiSFCG04Click(Sender: TObject);
var
  lfrmFormulario: TfrmImagemLogo;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmImagemLogo') then
    begin
    lfrmFormulario := TfrmImagemLogo.Create(Nil);
    try
      try
        lfrmFormulario.Caption := vfrmMenu.isaTituloFormulario;
        lfrmFormulario.Ibasico := FBasico;
        lfrmFormulario.Show;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    finally
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSIA01Click(Sender: TObject);
begin
  ExibirSobre(FBasico);
end;

procedure TfrmMain.smiSIA02Click(Sender: TObject);
var
  lfrmLogin: TfrmLogin;
begin
  try
    FBasico.MSGAguarde();
    lfrmLogin := TfrmLogin.Create(Nil);
    try
      try
        lfrmLogin.Ibasico := FBasico;
        lfrmLogin.ibbNovoCodigo := true;
        lfrmLogin.VerifySoftwareLicence;
        FormShow(Sender);
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    finally
      lfrmLogin.Free;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiSIA03Click(Sender: TObject);
begin
  ShellExecute(Self.WindowHandle, 'open', swcChatWebAddress, nil, nil,
    SW_SHOWNORMAL);
end;

procedure TfrmMain.smiSNFM01Click(Sender: TObject);
var
  lobFormulario: TfrmLocalizarNF;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarNF') then
    begin
      lobFormulario := TfrmLocalizarNF.Create(Nil);
      try
        // uNotaFiscal_02
        // uNotaFiscal_01
        lobFormulario.Ibasico := FBasico;
        lobFormulario.Caption := smiSNFM01.Caption;
        lobFormulario.Show;
        lobFormulario.Refresh;
        lobFormulario.Inicializar;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiSNFM02Click(Sender: TObject);
var
  lobFormulario: TfrmLocalizarSaldoFiscalInicial;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarSaldoFiscalInicial') then
    begin
      lobFormulario := TfrmLocalizarSaldoFiscalInicial.Create(Nil);
      try
        lobFormulario.Ibasico := FBasico;
        lobFormulario.Caption := smiSNFM02.Caption;
        lobFormulario.Show;
        lobFormulario.Refresh;
        lobFormulario.Inicializar;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiSNFM03Click(Sender: TObject);
var
  lobFormulario: TfrmLocalizarBaixaSaldoFiscal;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarBaixaSaldoFiscal') then
    begin
      lobFormulario := TfrmLocalizarBaixaSaldoFiscal.Create(Nil);
      try
        lobFormulario.Ibasico := FBasico;
        lobFormulario.Caption := smiSNFM03.Caption;
        lobFormulario.Show;
        lobFormulario.Refresh;
        lobFormulario.Inicializar;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiSNFM04Click(Sender: TObject);
var
  lobNFPendentes: TfrmLocalizarInutlizacaoNFe;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarInutlizacaoNFe') then
    begin
      lobNFPendentes := TfrmLocalizarInutlizacaoNFe.Create(Nil);
      lobNFPendentes.Caption := smiSNFM04.Caption;
      lobNFPendentes.Ibasico := FBasico;
      lobNFPendentes.Inicializar;
      lobNFPendentes.Show;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiSNFM05Click(Sender: TObject);
var
  FRM_localizarCartaCorrecao: TLocalizarCartaCorrecao;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TLocalizarCartaCorrecao') then
    begin
      Screen.Cursor := crHourGlass;
      FRM_localizarCartaCorrecao := TLocalizarCartaCorrecao.Create(nil);
      FRM_localizarCartaCorrecao.Caption := smiSNFM05.Caption;
      FRM_localizarCartaCorrecao.Repaint;
      FRM_localizarCartaCorrecao.Ibasico := FBasico;
      FRM_localizarCartaCorrecao.Inicializar;
      FRM_localizarCartaCorrecao.Empresa := FBasico.iutEmpresa.iniPessoa;
      FRM_localizarCartaCorrecao.FormStyle := fsMDIChild;
      Screen.Cursor := crArrow;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiSNFM06Click(Sender: TObject);
var
  lfrFormulario: TfrmNotaFiscalTransporteSAPConsulta;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmNotaFiscalTransporteSAPConsulta') then
    begin
      lfrFormulario := TfrmNotaFiscalTransporteSAPConsulta.Create(Nil);
      try
        try
          lfrFormulario.Ibasico := FBasico;
          lfrFormulario.Caption := smiSNFM06.Caption;
          lfrFormulario.Inicializar;
     //    lfrFormulario.Show;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.SNFM07EmitirNotadeComplementoSAP1Click(Sender: TObject);
var
  lfrFormulario: TfrmNFComplementoSAP;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmNFComplementoSAP') then
    begin
      lfrFormulario := TfrmNFComplementoSAP.Create(Nil);
      try
        try
          lfrFormulario.Ibasico := FBasico;
          lfrFormulario.Caption := SNFM07EmitirNotadeComplementoSAP1.Caption;
          lfrFormulario.Inicializar;
          lfrFormulario.Show;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;


procedure TfrmMain.smiSRB12Click(Sender: TObject);
var
  lfrFormulario: TfrmClassificacao;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmClassificacao') then
    begin
      lfrFormulario := TfrmClassificacao.Create(Nil);
      try
        try
          lfrFormulario.Ibasico := FBasico;
          lfrFormulario.Caption := smiSRB12.Caption;
          lfrFormulario.iniTicket := 0;
          lfrFormulario.Inicializar;
          lfrFormulario.Show; // Modal;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRB13Click(Sender: TObject);
var
  lfrRelatorio: TfrmCONSULTAR_IMAGENS_PORTARIA_01;
  pstMensagem: String;
begin
  try
    FBasico.MSGAguarde();
    pstMensagem := '';
    if not LancarFormulario('TfrmCONSULTAR_IMAGENS_PORTARIA_01') then
    begin
      lfrRelatorio := TfrmCONSULTAR_IMAGENS_PORTARIA_01.Create(Nil);
      try
        try
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Caption := smiSRB13.Caption;
          if lfrRelatorio.Inicializar(pstMensagem) then
            lfrRelatorio.Show
          else
            FBasico.boxErro(pstMensagem, Self.Caption);
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRB14Click(Sender: TObject);
var
  lfrFormulario: TfrmBalancaFluxo;
  lstMensagem: String;
begin
  try
    FBasico.MSGAguarde();
    if FBasico.ValidateServerVersion('6.7.9.219', true, true, true) then
    begin
      if not LancarFormulario('TfrmBalancaFluxo') then
      begin
        try
          try
            lfrFormulario := TfrmBalancaFluxo.Create(Nil);
            lfrFormulario.Caption := smiSRB14.Caption;
            lfrFormulario.Ibasico := FBasico;
            lfrFormulario.Inicializar(lstMensagem);
            lfrFormulario.Show;
          except
            on e: exception do
              MessageDlg(e.message, mtError, [mbOk], 0);
          end;
        finally
          // lfrmFormulario.Free;
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSREN01Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_NotasFiscaisEmitidas;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_NotasFiscaisEmitidas') then
    begin
      lfrRelatorio := TfrmRPT_NotasFiscaisEmitidas.Create(Nil);
      try
        try
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Show; // ShowModal;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSREN02Click(Sender: TObject);
var
  lrptSaldos: TfrmRPT_SaldoNotaFiscalEntrada;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_SaldoNotaFiscalEntrada') then
    begin
      lrptSaldos := TfrmRPT_SaldoNotaFiscalEntrada.Create(Nil);
      try
        try
          lrptSaldos.Ibasico := FBasico;
          lrptSaldos.Caption := vfrmMenu.isaTituloFormulario;
          lrptSaldos.Show; // ShowModal;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lrptSaldos.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSREN03Click(Sender: TObject);
var
  lrptSaldos: TfrmRPT_NFERomaneios;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_NFERomaneios') then
    begin
      lrptSaldos := TfrmRPT_NFERomaneios.Create(Nil);
      try
        try
          lrptSaldos.Ibasico := FBasico;
          lrptSaldos.Caption := vfrmMenu.isaTituloFormulario;
          lrptSaldos.Show; // ShowModal;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lrptSaldos.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRER07Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_ControleMovimentacaoDiaria;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_ControleMovimentacaoDiaria') then
    begin
      lfrRelatorio := TfrmRPT_ControleMovimentacaoDiaria.Create(Nil);
      try
        try
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Show; // Modal;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRER08Click(Sender: TObject);
var
  lfrExtratoMovSimplificado: TfrmExtratoMovimentacaoSimplificado;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmExtratoMovimentacaoSimplificado') then
    begin
      lfrExtratoMovSimplificado := TfrmExtratoMovimentacaoSimplificado.
        Create(Nil);
      try
        try
          lfrExtratoMovSimplificado.Ibasico := FBasico;
          lfrExtratoMovSimplificado.Caption := vfrmMenu.isaTituloFormulario;
          lfrExtratoMovSimplificado.Inicializar;
          lfrExtratoMovSimplificado.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRER09Click(Sender: TObject);
var
  lfrRelatorio: Tfrm_RPTControleMovimentacaoPeriodo;
begin
  try
    FBasico.MSGAguarde();
    if FBasico.ValidateServerVersion('6.7.9.180', true, true, true) then
    begin
      if not LancarFormulario('Tfrm_RPTControleMovimentacaoPeriodo') then
      begin
        lfrRelatorio := Tfrm_RPTControleMovimentacaoPeriodo.Create(Nil);
        try
          try
            lfrRelatorio.Ibasico := FBasico;
            lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
            lfrRelatorio.Show; // Modal;
          except
            on e: exception do
            begin
              ShowMessage(e.message);
            end;
          end;
        finally
          // lfrRelatorio.Free;
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRER10Click(Sender: TObject);
var
  lfrFormulario: TfrmRPT_RomaneiosSemPortaria;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_RomaneiosSemPortaria') then
    begin
      try
        try
          lfrFormulario := TfrmRPT_RomaneiosSemPortaria.Create(Nil);
          lfrFormulario.Caption := vfrmMenu.isaTituloFormulario;
          lfrFormulario.Ibasico := FBasico;
          lfrFormulario.Inicializar;
          lfrFormulario.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lfrmFormulario.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRER11Click(Sender: TObject);
var
  lfrFormulario: TfrmRPT_RomaneiosCanceladosExcel;
  lstMensagem: String;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_RomaneiosCanceladosExcel') then
    begin
      try
        try
          // RPT_FRM_ROMANEIOS_CANCELADOS_EXCEL
          lfrFormulario := TfrmRPT_RomaneiosCanceladosExcel.Create(Nil);
          lfrFormulario.Caption := vfrmMenu.isaTituloFormulario;
          lfrFormulario.Ibasico := FBasico;
          lfrFormulario.Inicializar(lstMensagem);
          lfrFormulario.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lfrmFormulario.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiSRER12Click(Sender: TObject);
var
  lfrFormulario: TfrmRPT_RomaneiosSemPortariaExcel;
  lstMensagem: String;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_RomaneiosSemPortariaExcel') then
    begin
      try
        try
          lfrFormulario := TfrmRPT_RomaneiosSemPortariaExcel.Create(Nil);
          lfrFormulario.Caption := vfrmMenu.isaTituloFormulario;
          lfrFormulario.Ibasico := FBasico;
          lfrFormulario.Inicializar(lstMensagem);
          lfrFormulario.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lfrmFormulario.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiSRER13Click(Sender: TObject);
var
  lfrFormulario: TfrmRTP_MovimentacaoClientes;
  lstMensagem: String;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRTP_MovimentacaoClientes') then
    begin
      try
        try
          lfrFormulario := TfrmRTP_MovimentacaoClientes.Create(Nil);
          lfrFormulario.Caption := vfrmMenu.isaTituloFormulario;
          lfrFormulario.Ibasico := FBasico;
          lfrFormulario.Inicializar(lstMensagem);
          lfrFormulario.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lfrmFormulario.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRER14Click(Sender: TObject);
var
  lfrExtrato: TfrmMapaQuebra;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmMapaQuebra') then
    begin
      lfrExtrato := TfrmMapaQuebra.Create(Nil);
      try
        try
          lfrExtrato.Ibasico := FBasico;
          lfrExtrato.Caption := vfrmMenu.isaTituloFormulario;
          lfrExtrato.Inicializar;
          lfrExtrato.Show;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRER15Click(Sender: TObject);
var
  lfrExtrato: TfrmRPT_FRM_TABELA_CLASSIFICACAO_ROMANEIO;
  pstMensagem: String;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_FRM_TABELA_CLASSIFICACAO_ROMANEIO') then
    begin
      lfrExtrato := TfrmRPT_FRM_TABELA_CLASSIFICACAO_ROMANEIO.Create(Nil);
      try
        try
          lfrExtrato.Ibasico := FBasico;
          lfrExtrato.Caption := vfrmMenu.isaTituloFormulario;
          lfrExtrato.Inicializar(pstMensagem);
          lfrExtrato.Show;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrExtrato.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRER16Click(Sender: TObject);
var
  lfrRelatorio: TfrmSaldoRomaneiosEntrada;
  lstrMensagem: String;
begin
  try
    FBasico.MSGAguarde();
    lstrMensagem := '';

    if FBasico.ValidateServerVersion('7.8.9.142', true, true, true) or
      (DebugHook = 1) then
    begin
      if not LancarFormulario('TfrmSaldoRomaneiosEntrada') then
      begin
        lfrRelatorio := TfrmSaldoRomaneiosEntrada.Create(Nil);
        try
          try
            lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
            lfrRelatorio.Ibasico := FBasico;
            if lfrRelatorio.Inicializar(lstrMensagem) then
              lfrRelatorio.Show
            else
              FBasico.boxErro(lstrMensagem, 'SiaStandard');
          except
            on e: exception do
              FBasico.boxErro(e.message, 'SiaStandard');
          end;
        finally
          // lfrExtrato.Free;
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRES01Click(Sender: TObject);
var
  lfrFormulario: TfrmRPT_NotasServicos;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_NotasServicos') then
    begin
      try
        try
          lfrFormulario := TfrmRPT_NotasServicos.Create(Nil);
          lfrFormulario.Caption := vfrmMenu.isaTituloFormulario;
          lfrFormulario.Ibasico := FBasico;
          lfrFormulario.Inicializar;
          lfrFormulario.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lfrmFormulario.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRES02Click(Sender: TObject);
var
  lfrmFormulario: TfrmRPT_PrevisaoServicos;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_PrevisaoServicos') then
    begin
      lfrmFormulario := TfrmRPT_PrevisaoServicos.Create(Nil);
      try
        try
          lfrmFormulario.Caption := vfrmMenu.isaTituloFormulario;
          lfrmFormulario.Ibasico := FBasico;
          lfrmFormulario.Show;
          lfrmFormulario.Refresh;
          lfrmFormulario.Inicializar;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lfrmFormulario.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRES03Click(Sender: TObject);
var
  lfrFormulario: TfrmRPT_TotalItens;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_TotalItens') then
    begin
    lfrFormulario := TfrmRPT_TotalItens.Create(Nil);
    lfrFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lfrFormulario.Ibasico := FBasico;
    lfrFormulario.Inicializar;
    lfrFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRES04Click(Sender: TObject);
var
  lobFormulario: Tfrm_rpt_ServPrest;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('Tfrm_rpt_ServPrest') then
    begin
      lobFormulario := Tfrm_rpt_ServPrest.Create(Nil);
      lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRES05Click(Sender: TObject);
var
  lfrmFormulario: TfrmSaldoServicosPrestados;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmSaldoServicosPrestados') then
    begin
      lfrmFormulario := TfrmSaldoServicosPrestados.Create(Nil);
      try
        try
          lfrmFormulario.Caption := vfrmMenu.isaTituloFormulario;
          lfrmFormulario.Ibasico := FBasico;
          lfrmFormulario.Show;
          lfrmFormulario.Refresh;
          lfrmFormulario.Inicializar;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiSRES06Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_ServicosPrestadosAnalitico;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_ServicosPrestadosAnalitico') then
    begin
      lobFormulario := TfrmRPT_ServicosPrestadosAnalitico.Create(Nil);
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRES07Click(Sender: TObject);
var
  lfrFormulario: TfrmRTP_RelatorioServicosAnalitico;
  // lstMensagem: String;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRTP_RelatorioServicosAnalitico') then
    begin
      try
        try
          lfrFormulario := TfrmRTP_RelatorioServicosAnalitico.Create(Nil);
          lfrFormulario.Caption := vfrmMenu.isaTituloFormulario;
          lfrFormulario.Ibasico := FBasico;
          lfrFormulario.Inicializar;
          lfrFormulario.Show;
        except
          on e: exception do
            MessageDlg('Erro ao inicializar relatório.' + e.message, mtError,
              [mbOk], 0);
        end;
      finally
        // lfrmFormulario.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiSRES08Click(Sender: TObject);
var
  lfrLancamentos: TfrmCalculoMapaServicos;
begin
  if not LancarFormulario('TfrmCalculoMapaServicos') then
  begin
    try
      try
        // MAPA_CALCULO_SERVICO
        FBasico.MSGAguarde();
        lfrLancamentos := TfrmCalculoMapaServicos.Create(nil);
        lfrLancamentos.Ibasico := FBasico;
        lfrLancamentos.Caption := smiSRES08.Caption;
        lfrLancamentos.Inicializar;
        lfrLancamentos.Show;
      except
        on e: exception do
          MessageDlg('Erro ao inicializar relatório.' + e.message, mtError,
            [mbOk], 0);
      end;
    finally
      FreeAndNil(frmCalculoMapaServicos);
      FBasico.MSGAguarde(false);
    end;
  end;
end;

procedure TfrmMain.smiSRND01Click(Sender: TObject);
var
  lfrLancamentos: TfrmRPT_DemonstrativoEstoqueGO;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_DemonstrativoEstoqueGO') then
    begin
      lfrLancamentos := TfrmRPT_DemonstrativoEstoqueGO.Create(Nil);
      try
        try
          // FRM_RPT_DEMONSTRATIVO_MENSAL_ESTOQUE_GO
          lfrLancamentos.Ibasico := FBasico;
          lfrLancamentos.Caption := vfrmMenu.isaTituloFormulario;
          lfrLancamentos.Inicializar;
          lfrLancamentos.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false)
  end;
end;

procedure TfrmMain.smiSRND02Click(Sender: TObject);
var
  lfrLancamentos: TfrmRPT_RelacaoNFEntradas;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_RelacaoNFEntradas') then
    begin
      lfrLancamentos := TfrmRPT_RelacaoNFEntradas.Create(Nil);
      try
        try
          lfrLancamentos.Ibasico := FBasico;
          lfrLancamentos.Caption := vfrmMenu.isaTituloFormulario;
          lfrLancamentos.Inicializar;
          lfrLancamentos.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRND03Click(Sender: TObject);
var
  lfrLancamentos: TfrmRPT_RelacaoNFSaidas;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_RelacaoNFSaidas') then
    begin
      lfrLancamentos := TfrmRPT_RelacaoNFSaidas.Create(Nil);
      try
        try
          lfrLancamentos.Ibasico := FBasico;
          lfrLancamentos.Caption := vfrmMenu.isaTituloFormulario;
          lfrLancamentos.Inicializar;
          lfrLancamentos.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSROM06Click(Sender: TObject);
var
  lfrPortaria: TfrmLocalizarBaixasRomaneios;
begin
  if not LancarFormulario('TfrmLocalizarBaixasRomaneios') then
  begin
    lfrPortaria := TfrmLocalizarBaixasRomaneios.Create(Nil);
    try
      lfrPortaria.Ibasico := FBasico;
      lfrPortaria.Caption := vfrmMenu.isaTituloFormulario;
      lfrPortaria.Show;
    except
      on e: exception do
        MessageDlg(e.message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TfrmMain.smiSROM07Click(Sender: TObject);
var
  lobFormulario: TfrmLocalizarContratoServico;
begin
  try
  Fbasico.MSGAguarde();
  if not LancarFormulario('TfrmLocalizarContratoServico') then
  begin
    lobFormulario := TfrmLocalizarContratoServico.Create(Nil);
    try
      lobFormulario.Ibasico := FBasico;
      lobFormulario.ibolDesabilitarUsoWord := ibbHomologacao;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    //  lobFormulario.Refresh;
    except
      on e: exception do
        MessageDlg(e.message, mtError, [mbOk], 0);
    end;
  end;
  finally
    Fbasico.MSGAguarde(False);
end;
end;

procedure TfrmMain.smiSROM21Click(Sender: TObject);
var
  lobFormulario: TfrmLocalizarTransferenciaRomaneioDepositante;
begin
  try
  Fbasico.MSGAguarde();
  if not LancarFormulario('TfrmLocalizarTransferenciaRomaneioDepositante') then
  begin
    lobFormulario := TfrmLocalizarTransferenciaRomaneioDepositante.Create(Nil);
    try
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    except
      on e: exception do
        MessageDlg(e.message, mtError, [mbOk], 0);
    end;
  end;
  finally
    FBasico.MSGAguarde(false);
end;
end;

procedure TfrmMain.smiSROM22Click(Sender: TObject);
var
  lobFormulario: TfrmLocalizarTransferenciaSaldoContrato;
begin
  try
  Fbasico.MSGAguarde();
  if not LancarFormulario('TfrmLocalizarTransferenciaSaldoContrato') then
  begin
    lobFormulario := TfrmLocalizarTransferenciaSaldoContrato.Create(Nil);
    try
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    except
      on e: exception do
        MessageDlg(e.message, mtError, [mbOk], 0);
    end;
  end;
  finally
    FBasico.MSGAguarde(false);
end;
end;

procedure TfrmMain.smiSRRO08Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_SaldoFisicoFiscal;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_SaldoFisicoFiscal') then
    begin
      lfrRelatorio := TfrmRPT_SaldoFisicoFiscal.Create(Nil);
      try
        try
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Inicializar;
          lfrRelatorio.Show; // Modal;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrMapaDiario.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSRRO09Click(Sender: TObject);
var
  lfrmSaldoProdutoDiario: TfrmSaldoProdutoDiario;
  lstrMensagem: String;
begin
  try
    FBasico.MSGAguarde();
    lstrMensagem := '';

    if FBasico.ValidateServerVersion('7.8.171.0', true, true, true) then
    begin
      if not LancarFormulario('TfrmSaldoProdutoDiario') then
      begin
        lfrmSaldoProdutoDiario := TfrmSaldoProdutoDiario.Create(Nil);
        try
          try
            lfrmSaldoProdutoDiario.Caption := vfrmMenu.isaTituloFormulario;
            lfrmSaldoProdutoDiario.Ibasico := FBasico;
            if lfrmSaldoProdutoDiario.Inicializar(lstrMensagem) then
              lfrmSaldoProdutoDiario.Show
            else
              FBasico.boxErro(lstrMensagem, 'SiaStandard');
          except
            on e: exception do
              FBasico.boxErro(e.message, 'SiaStandard');
          end;
        finally
          // lfrExtrato.Free;
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSTAF01Click(Sender: TObject);
var
  lfrFormulario: TfrmLocalizarFinalidadeFiscal;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarFinalidadeFiscal') then
    begin
    lfrFormulario := TfrmLocalizarFinalidadeFiscal.Create(Nil);
    try
      // if (vfrmMenu.TreeView1.Selected <> nil) then
      // lfrFormulario.Caption := Copy(vfrmMenu.TreeView1.Selected.Text, 1, 5) + ' - Localizar ' + Copy(vfrmMenu.TreeView1.Selected.Text, 8, Length(vfrmMenu.TreeView1.Selected.Text));
      lfrFormulario.Ibasico := FBasico;
      lfrFormulario.Caption := smiSTAF01.Caption;
      lfrFormulario.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSTAF02Click(Sender: TObject);
var
  lfrFormulario: TfrmLocalizarSeries;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarSeries') then
    begin
    lfrFormulario := TfrmLocalizarSeries.Create(Nil);
    try
      // if (vfrmMenu.TreeView1.Selected <> nil) then
      // lfrFormulario.Caption := Copy(vfrmMenu.TreeView1.Selected.Text, 1, 5) + ' - Localizar ' + Copy(vfrmMenu.TreeView1.Selected.Text, 8, Length(vfrmMenu.TreeView1.Selected.Text));
      lfrFormulario.Ibasico := FBasico;
      lfrFormulario.Caption := smiSTAF02.Caption;
      lfrFormulario.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSTAF03Click(Sender: TObject);
var
  lfrFormulario: TfrmLocalizarCFOP;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarCFOP') then
    begin
    lfrFormulario := TfrmLocalizarCFOP.Create(Nil);
    try
      // if (vfrmMenu.TreeView1.Selected <> nil) then
      // lfrFormulario.Caption := Copy(vfrmMenu.TreeView1.Selected.Text, 1, 5) + ' - Localizar ' + Copy(vfrmMenu.TreeView1.Selected.Text, 8, Length(vfrmMenu.TreeView1.Selected.Text));
      lfrFormulario.Ibasico := FBasico;
      lfrFormulario.Caption := smiSTAF03.Caption;
      lfrFormulario.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSTAF04Click(Sender: TObject);
var
  lobFormulario: TfrmLocalizarParametrizacaoICMS;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarParametrizacaoICMS') then
    begin
      lobFormulario := TfrmLocalizarParametrizacaoICMS.Create(Nil);
      // if (vfrmMenu.TreeView1.Selected <> nil) then
      // lobFormulario.Caption := Copy(vfrmMenu.TreeView1.Selected.Text, 1, 5) + ' - Localizar ' + Copy(vfrmMenu.TreeView1.Selected.Text, 8, Length(vfrmMenu.TreeView1.Selected.Text));
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Caption := smiSTAF04.Caption;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSTAF05Click(Sender: TObject);
var
  lobFormulario : TfrmNOTA_COMPLEMENTO_OPERACAO_00;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmNOTA_COMPLEMENTO_OPERACAO_00') then
    begin
      lobFormulario         := TfrmNOTA_COMPLEMENTO_OPERACAO_00.Create(Nil);
      lobFormulario.Caption := smiSTAF05.Caption;
      lobFormulario.iBasico := fBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSTAC01Click(Sender: TObject);
var
  lfrFormulario: TfrmLocalizarCondicaoPagamento;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarCondicaoPagamento') then
    begin
    lfrFormulario := TfrmLocalizarCondicaoPagamento.Create(Nil);
    try
      // CONDICAO_PAGAMENTO_00
      // CONDICAO_PAGAMENTO_01
      lfrFormulario.Ibasico := FBasico;
      lfrFormulario.Caption := smiSTAC01.Caption;
      lfrFormulario.Inicializar;
      lfrFormulario.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSTAS01Click(Sender: TObject);
var
  lfrFormulario: TfrmLocalizarServico;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarServico') then
    begin
    lfrFormulario := TfrmLocalizarServico.Create(Nil);
    try
      // SERVICO_01
      // SERVICO_00
      lfrFormulario.Ibasico := FBasico;
      lfrFormulario.Inicializar;
      lfrFormulario.Caption := smiSTAS01.Caption;
      lfrFormulario.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSTAS02Click(Sender: TObject);
var
  lfrFormulario: TfrmLocalizarServicoGrupo;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarServicoGrupo') then
    begin
    lfrFormulario := TfrmLocalizarServicoGrupo.Create(Nil);
    try
      // SERVICO_GRUPO_01
      // SERVICO_GRUPO_00
      lfrFormulario.Ibasico := FBasico;
      lfrFormulario.Inicializar;
      lfrFormulario.Caption := smiSTAS02.Caption;
      lfrFormulario.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSTAS05Click(Sender: TObject);
var
  lfrFormulario: TfrmLocalizarServicoValores;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarServicoValores') then
    begin
    lfrFormulario := TfrmLocalizarServicoValores.Create(Nil);
    try
      // SERVICO_VALOR_01
      // SERVICO_VALOR_00
      lfrFormulario.Ibasico := FBasico;
      lfrFormulario.Inicializar;
      lfrFormulario.Caption := smiSTAS05.Caption;
      lfrFormulario.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSTAS06Click(Sender: TObject);
var
  lfrmFormulario: TfrmLocalizarServicoOcorrenciaRomaneio;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarServicoOcorrenciaRomaneio') then
    begin
      lfrmFormulario := TfrmLocalizarServicoOcorrenciaRomaneio.Create(Nil);
      try
        try
          // SERVICO_OCORRENCIA_ROMANEIO_01
          // SERVICO_OCORRENCIA_ROMANEIO_00
          lfrmFormulario.Ibasico := FBasico;
          lfrmFormulario.Inicializar;
          lfrmFormulario.Caption := smiSTAS06.Caption;
          lfrmFormulario.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lfrmFormulario.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiFUF01Click(Sender: TObject);
var
  lfrmUsuarios: TfrmGruposUsuarios;
begin
  try
    FBasico.MSGAguarde();
    if not(LancarFormulario('TfrmGruposUsuarios')) then
    begin
      lfrmUsuarios := TfrmGruposUsuarios.Create(Self);
      try
        lfrmUsuarios.Caption := vfrmMenu.isaTituloFormulario;
        lfrmUsuarios.Ibasico := FBasico;
        lfrmUsuarios.Inicializar;
        lfrmUsuarios.Show;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiFUF03Click(Sender: TObject);
var
  lfrmUsuarios: TfrmConexoesAtivas;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmConexoesAtivas') then
    begin
      lfrmUsuarios := TfrmConexoesAtivas.Create(Self);
      try
        lfrmUsuarios.Caption := vfrmMenu.isaTituloFormulario;
        lfrmUsuarios.Ibasico := FBasico;
        lfrmUsuarios.Inicializar;
        lfrmUsuarios.Show;
      except
        on e: exception do
        begin
          MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiFCG01Click(Sender: TObject);
var
  lfrFormulario: TfrmConfiguracoes;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmConfiguracoes') then
    begin
      lfrFormulario := TfrmConfiguracoes.Create(Self);
      try
        lfrFormulario.Caption := vfrmMenu.isaTituloFormulario;
        lfrFormulario.Ibasico := FBasico;
        lfrFormulario.Inicializar;
        lfrFormulario.Show;
      except
        on e: exception do
          MessageDlg(e.message, mtError, [mbOk], 0);
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiFCG02Click(Sender: TObject);
var
  lfrmFormulario: TfrmConfigurarBalanca;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmConfigurarBalanca') then
    begin
      lfrmFormulario := TfrmConfigurarBalanca.Create(Self);
      try
        lfrmFormulario.Caption := vfrmMenu.isaTituloFormulario;
        lfrmFormulario.Ibasico := FBasico;
        lfrmFormulario.Show;
      except
        on e: exception do
        begin
          MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiFCF03Click(Sender: TObject);
var
  lfrFormulario: TfrmConfiguradorDeImpressao;
  lsaTempConfig: String;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmConfiguradorDeImpressao') then
    begin
      lfrFormulario := TfrmConfiguradorDeImpressao.Create(Self);
      lfrFormulario.Ibasico := FBasico;
      lsaTempConfig := GetTempDir + 'PRNROMAN.CNF';

      lfrFormulario.Inicializar('romaneio', lsaTempConfig, 80, 63, false);

      lfrFormulario.AdicionarMenu('texto', ['UMIDADE:', 'IMPUREZA:', 'ARDIDO:',
        'PARTIDO:', 'VERDE:', 'QUIRERA:', 'AVARIADO:', 'PH:', 'SACARIA:',
        'PORTARIA:', 'TICKET BALANCA:', 'PESO BRUTO:', 'TARA:', 'PESO LIQUIDO:',
        'NOTA FISCAL TRANSITO:']);

      lfrFormulario.AdicionarMenu('empresa', ['no_razao_social', 'no_endereco',
        'no_complemento', 'cd_documento', 'no_endereco_numero',
        'no_endereco_bairro', 'no_endereco_cep', 'no_endereco_municipio',
        'no_endereco_uf', 'no_endereco_pais', 'no_inscricao_estadual']);

      lfrFormulario.AdicionarMenu('rom_classificacao',
        ['cd_desconto_qualidade', 'no_desconto_qualidade', 'pc_indice_desconto',
        'pc_abatimento_desconto', 'qt_kg_peso_desconto']);

      lfrFormulario.AdicionarMenu('romaneio_depositante',
        ['cd_pessoa_depositante', 'no_pessoa_depositante',
        'cd_documento_depositante', 'cd_endereco_pessoa_depositante',
        'no_endereco_pessoa_depositante', 'no_municipio_pessoa_depositante',
        'cd_uf_pessoa_depositante', 'cd_cep_pessoa_depositante',
        'cd_inscricao_estadual_depositante', 'cd_pessoa_produtor',
        'no_pessoa_produtor', 'cd_documento_produtor',
        'cd_endereco_pessoa_produtor', 'no_endereco_pessoa_produtor',
        'no_municipio_pessoa_produtor', 'cd_uf_pessoa_produtor',
        'cd_cep_pessoa_produtor', 'cd_inscricao_estadual_produtor',
        'cd_serie_nota_fiscal', 'cd_numero_nota_fiscal', 'cd_cfop', 'no_cfop',
        'cd_cfop_livro_fiscal', 'dh_nota_fiscal', 'qt_peso_nota_fiscal',
        'cd_unidade_peso_nota_fiscal', 'vl_unitario_nota_fiscal',
        'cd_unidade_valor_nota_fiscal', 'vl_total_nota_fiscal',
        'vl_base_icms_nota_fiscal', 'pc_icms_nota_fiscal',
        'vl_icms_nota_fiscal',

        'qt_kg_bruto', 'qt_kg_tara',

        'qt_kg_peso_bruto_proporcional', 'qt_kg_peso_tara_proporcional',
        'qt_kg_liquido_umido', 'qt_kg_liquido_seco', 'qt_kg_descontos']);

      lfrFormulario.AdicionarMenu('romaneio_produto',
        ['cd_romaneio', 'cd_safra', 'cd_silo', 'texto_tipo_romaneio',
        'X_tipo_entrada', 'X_tipo_saida', 'cd_ticket_pesagem', 'cd_portaria',
        'dh_movimento', 'cd_produto', 'no_produto', 'cd_ncm',
        'no_via_transporte', 'no_operacao', 'dh_primeira_pesagem',
        'dh_segunda_pesagem', 'qt_kg_peso_bruto', 'qt_kg_peso_tara',
        'qt_kg_peso_desconto', 'qt_kg_peso_liquido_umido',
        'qt_kg_peso_liquido_seco', 'no_motorista', 'cd_placa_vagao',
        'cd_identidade_motorista', 'pc_umidade', 'pc_abatimento_umidade',
        'qt_kg_umidade', 'pc_impureza', 'pc_abatimento_impureza',
        'qt_kg_impureza', 'pc_ardido', 'pc_abatimento_ardido', 'qt_kg_ardido',
        'pc_partido', 'pc_abatimento_partido', 'qt_kg_partido', 'pc_verde',
        'pc_abatimento_verde', 'qt_kg_verde', 'pc_quirera',
        'pc_abatimento_quirera', 'qt_kg_quirera', 'pc_avariado',
        'pc_abatimento_avariado', 'qt_kg_avariado', 'pc_ph', 'qt_kg_sacaria',
        'tx_observacao', 'ic_cancelado', 'nu_graos_inteiros',
        'nu_graos_quebrados', 'nu_graos_renda', 'data_inclusao',
        'hora_inclusao', 'no_transportadora', 'no_endereco_transportadora',
        'no_municipio_transportadora', 'cd_uf_transportadora',
        'cd_doc_id_transportadora', 'no_ie_transportadora', 'no_login_inclusao',
        'dh_inclusao', 'no_login_edicao', 'dh_edicao']);

      lfrFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRTA05Click(Sender: TObject);
var
  lfrDescontos: TfrmRPT_IndicesDescontos;
begin

  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_IndicesDescontos') then
    begin
      lfrDescontos := TfrmRPT_IndicesDescontos.Create(Nil);
      try
        try
          lfrDescontos.Caption := smiRTA05.Caption;
          lfrDescontos.Ibasico := FBasico;
          lfrDescontos.Show;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrDescontos.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.SFAR05AgendamentodeRelatrios1Click(Sender: TObject);
var
  pstrComando, pstParametros, pstrNome : String;
begin
  pstrNome := 'jobscheduler';
  pstrComando := ExtractFilePath(Application.ExeName)+'\siacon.screen.service.exe';
  pstParametros := '"' + pstrNome + '"' + ' ' +
                   FBasico.isaConnectionName + ' ' +
                   IntToStr(fbasico.iutEmpresa.iniPessoa) + ' ' +
                   IntToStr(fbasico.iutEmpresa.iniEndereco);
  try
    ShellExecute(Handle, nil, Pchar(pstrComando), Pchar(pstParametros), nil, SW_SHOWNORMAL);
  except
    on e: exception do
    begin
      ShowMessage('Erro: ' + e.Message);
    end;
  end;
end;

procedure TfrmMain.SFBA01BACKUP1Click(Sender: TObject);
var
  lfrFormulario: TfrmBackup;
  lbbContinuar: Boolean;
  lsaPath: String;
begin
  // Execute( 'Backup.exe', FBasico.isaNomeUsuario, FBasico.iutEmpresa.iniPessoa, FBasico.iutEmpresa.iniEndereco );
  lfrFormulario := TfrmBackup.Create(Nil);
  lbbContinuar := false;
  try
    try
      writelog1('TfrmCopiaSeguranca:Inicio');
      lsaPath := IncludeTrailingPathDelimiter(GetWinDir);
      writelog1('Procurando gds32.dll');
      if not fileexists(lsaPath + 'gds32.dll') then
      begin
        writelog1('Năo existe em ' + lsaPath);
        lsaPath := IncludeTrailingPathDelimiter(GetWinSysDir);
        if not fileexists(lsaPath + 'gds32.dll') then
        begin
          writelog1('Năo existe em ' + lsaPath);
          lsaPath := IncludeTrailingPathDelimiter
            (ExtractFilePath(Application.ExeName));
          if not fileexists(lsaPath + 'gds32.dll') then
          begin
            writelog1('Năo existe em ' + lsaPath);
          end
          else
          begin
            lbbContinuar := true;
          end;
        end
        else
        begin
          lbbContinuar := true;
        end;
      end
      else
      begin
        lbbContinuar := true;
      end;
      if (FBasico.isDBMSSQLServer or FBasico.isDBMSSQLServer2005) or
        (FBasico.iutDatabaseType = swcInterbase) then
      begin
        writelog1('TfrmCopiaSeguranca:Base de Dados Permitida');
        // if (FBasico.isDBMSSQLServer) then
        // begin
        // if (uppercase(FBasico.isaServerName) <> uppercase(FBasico.isaNomeEstacao)) then
        // begin
        // lbbContinuar := False;
        // MessageDlg('O backup de dados do banco de dados deve ser feito no servidor.',mtError,[mbOk],0);
        // end;
        // end;

        if lbbContinuar then
        begin
          writelog1('TfrmCopiaSeguranca:Iniciando Selecao de Pasta');
          writelog1('TfrmCopiaSeguranca:Automático? Nao');
          // writelog1('TfrmCopiaSeguranca:Pasta       '+vsaDiretorioDestino);

          lfrFormulario.Ibasico := FBasico;
          lfrFormulario.isaNomeBancoDeDados := FBasico.isaDatabaseName;
          lfrFormulario.isaNomeServidor := FBasico.isaServerName;
          lfrFormulario.isaNomeUsuario := FBasico.isaDbUserName;
          lfrFormulario.isaSenhaUsuario := FBasico.isaDbUserPassword;
          lfrFormulario.isSqlServer := FBasico.isDBMSSQLServer;
          lfrFormulario.isSQLServer2005 := FBasico.isDBMSSQLServer2005;
          lfrFormulario.ibbAutomatico := false;
          // lfrFormulario.isaDiretorioDestino  := vsaDiretorioDestino;

          { if vbbAutomatico then
            begin
            writelog1('TfrmCopiaSeguranca:inicializando automático');
            lfrFormulario.Inicializar;
            end
            else begin }
          writelog1('TfrmCopiaSeguranca:Exibindo selecao de pasta');
          lfrFormulario.ShowModal;
          // end;

        end
        else
        begin
          MessageDlg
            ('Verifique a existęncia do arquivo "GDS32.DLL" na pasta do SIA ou do Windows',
            mtError, [mbOk], 0);
        end;
      end
      else
      begin
        writelog1(
          'TfrmCopiaSeguranca:A cópia de segurança da sua base de dados deve ser feita pelo gerenciador do banco de dados!');
        MessageDlg
          ('A cópia de segurança da sua base de dados deve ser feita pelo gerenciador do banco de dados!',
          mtError, [mbOk], 0);
      end;
    except
      on e: exception do
        MessageDlg(e.message, mtError, [mbOk], 0);
    end;
  finally
    lfrFormulario.Free;
  end;
end;

procedure TfrmMain.CMF04AtualizarVerses1Click(Sender: TObject);
var
  { lsaUnzipDLL, } lsaZipDLL, lsaLocalPath: String;
  lfrmVersoes: TfrmAtualizaVersoes;
begin
  try
    FBasico.MSGAguarde();
    if FBasico.GetSystemDefault('GERAL', 'SIA_SIMPLEX', 'S') = 'S' then
    begin
      lsaLocalPath := IncludeTrailingPathDelimiter
        (ExtractFilePath(Application.ExeName));
      lsaZipDLL := AllTrim(GetFileVersion(lsaLocalPath + swcZIPDLL));
      if (lsaZipDLL = swcZIPDLLVersao) then
      begin
        lfrmVersoes := TfrmAtualizaVersoes.Create(Nil);
        try
          lfrmVersoes.Ibasico := FBasico;
          lfrmVersoes.Inicializar;
          lfrmVersoes.ShowModal;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      end;
    end
    else
    begin
      MessageDlg('Para que possa atualizar a versăo do SIA Standard,' + char(13)
        + 'o ative no menu SFCG03 - Ativar SIA Standard', mtInformation,
        [mbOk], 0);
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.SFSN03SiaNet1Click(Sender: TObject);
begin
  if FBasico.GetSystemDefault('GERAL', 'SIA_SIMPLEX', 'S') = 'S' then
  begin
    Execute('SIANET.exe', FBasico.isaNomeUsuario, FBasico.iutEmpresa.iniPessoa,
      FBasico.iutEmpresa.iniEndereco)
  end
  else
  begin
    MessageDlg('Para que possa atualizar o SIA Standard,' + char(13) +
      'o ative no menu SFCG03 - Ativar Sia Standard', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmMain.SFCG03AtivarSiaSimplex1Click(Sender: TObject);
var
  lfrmAtivarSiaSimplex: TfrmAtivarSiaSimplex;
begin
  try
    FBasico.MSGAguarde();
    lfrmAtivarSiaSimplex := TfrmAtivarSiaSimplex.Create(Nil);
    try
      lfrmAtivarSiaSimplex.Caption := vfrmMenu.isaTituloFormulario;
      lfrmAtivarSiaSimplex.Ibasico := FBasico;
      lfrmAtivarSiaSimplex.ShowModal;
    except
      on e: exception do
        MessageDlg(e.message, mtError, [mbOk], 0);
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.SFGR02QuebraTcnica1Click(Sender: TObject);
var
  lobFormulario: TfrmRPTQuebraTecnica;
begin
  if not LancarFormulario('TfrmRPTQuebraTecnica') then
  begin
    lobFormulario := TfrmRPTQuebraTecnica.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;
end;

procedure TfrmMain.SFIC08TiposdeDocumentosBancrios1Click(Sender: TObject);
var
  lobFormulario :     TfrmConsultaTiposDocumentos;
begin
   if not LancarFormulario('TfrmConsultaTiposDocumentos') then
   begin
     lobFormulario         := TfrmConsultaTiposDocumentos.Create(Nil);
     lobFormulario.iBasico := FBasico;
     lobFormulario.Inicializar;
     lobFormulario.Show;
   end;
end;

procedure TfrmMain.smiSFNO04Click(Sender: TObject);
var
  lfrFormulario: TfrmImportarClientesNovaAgri;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmImportarClientesNovaAgri') then
    begin
      try
        try
          lfrFormulario := TfrmImportarClientesNovaAgri.Create(Self);
          lfrFormulario.Hide;
          lfrFormulario.Ibasico := FBasico;
          lfrFormulario.ShowModal;
        Except
          on e: exception do
          begin
            FBasico.boxAlerta(e.message, Self.Caption);
          end;
        end;
      finally
        FreeAndNil(lfrFormulario);
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSFUG02Click(Sender: TObject);
var
  lfrProfilerSQL : TfrmLogSQL;
begin
  try
    if not LancarFormulario('TfrmLogSQL') then
    begin
    lfrProfilerSQL := TfrmLogSQL.Create(Nil);
    try
      lfrProfilerSQL.Ibasico := FBasico;
      lfrProfilerSQL.Inicializar;
      lfrProfilerSQL.Caption := smiSFUG02.Caption;
      lfrProfilerSQL.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
   end;
  finally
  end;
end;

procedure TfrmMain.SFRO01GrupodeDepositantes1Click(Sender: TObject);
var
  lfrRelatorio: TfrmLocalizarGrupoDepositantes;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarGrupoDepositantes') then
    begin
      lfrRelatorio := TfrmLocalizarGrupoDepositantes.Create(Nil);
      try
        try
          if FBasico.PropriedadeUsuario('GRUPO_DEPOSITANTES') = 'S' then
          begin
            lfrRelatorio.Ibasico := FBasico;
            lfrRelatorio.Inicializar;
            lfrRelatorio.Show; // Modal;
          end
          else
          begin
            lfrRelatorio.Free;
            MessageDlg('Acesso negado. Contacte o administrador do sistema!',
              mtError, [mbOk], 0);
          end;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSFGF01Click(Sender: TObject);
var
  lfrFormulario: TfrmConfiguradorDeImpressao;
  lsaTempConfig: String;
begin
  lfrFormulario := TfrmConfiguradorDeImpressao.Create(Nil);
  lfrFormulario.Ibasico := FBasico;
  lsaTempConfig := GetTempDir + 'PRNNFS.CNF';

  lfrFormulario.Inicializar('nota_servico', lsaTempConfig, 80, 63, false);

  lfrFormulario.AdicionarMenu('texto', ['PRESTACAO DE SERVICOS', 'A VISTA',
    'PERIODO:1', 'PERIODO:2', 'DE:1', 'DE:2', 'ATE:1', 'ATE:2', 'DESCONTO:',
    'ACRESCIMO:', 'CDA:', 'SILO:', 'TAXA:', 'SERVICO:', 'MOEDA:', 'P.SERV.',
    'A GRANEL', 'GN', 'UNICO']);

  lfrFormulario.AdicionarMenu('empresa', ['razaosocial', 'nomefantasia',
    'documento', 'endereco', 'endcomplemento', 'endnumero', 'endbairro',
    'endcep', 'endmunicipio', 'enduf', 'endpais', 'inscricaoestadual',
    'regjuntacomercial', 'telefone', 'fax', 'email']);

  lfrFormulario.AdicionarMenu('nota_fiscal_servico',
    ['cd_serie_servico:1', 'cd_nota_fiscal_servico:1', 'cd_serie_servico:2',
    'cd_nota_fiscal_servico:2', 'cd_serie_servico:3',
    'cd_nota_fiscal_servico:3', 'cd_pessoa', 'cd_endereco_pessoa', 'no_pessoa',
    'cd_documento_pessoa', 'no_endereco_pessoa', 'no_municipio_pessoa',
    'no_setor_pessoa', 'cd_uf_pessoa', 'cd_cep_pessoa', 'cd_inscricao_estadual',
    'pessoa_telefone', 'no_pessoa_c_ordem', 'cd_documento_pessoa_c_ordem',
    'no_endereco_pessoa_c_ordem', 'no_municipio_pessoa_c_ordem',
    'cd_uf_pessoa_c_ordem', 'cd_inscricao_estadual_c_ordem', 'cd_produto',
    'no_produto', 'cd_ncm', 'cd_safra', 'cd_silo', 'cd_cda', 'cd_quinzena',
    'cd_banco', 'cd_agencia', 'no_banco', 'no_agencia', 'cd_contrato_servico',
    'dh_emissao', 'dh_emissao:1', 'dia_emissao', 'mes_emissao', 'ano_emissao',
    'dh_vencimento', 'dia_vencimento', 'mes_vencimento', 'ano_vencimento',
    'hh_impressao', 'dh_extorno', 'qt_impresso', 'pc_issqn', 'vl_issqn',
    'vl_issqn:2', 'vl_tributados', 'vl_isentos', 'vl_acrescimo', 'vl_desconto',
    'vl_sub_total:1', 'vl_sub_total:2', 'vl_sub_total_desc:1',
    'vl_sub_total_desc:2', 'vl_total_nota', 'vl_total:1', 'vl_total:2',
    'vl_total:3', 'no_imposto_retido', 'vl_imposto_retido', 'dh_inicio_periodo',
    'dh_fim_periodo', 'ic_cancelado', 'cd_silo', 'tx_vl_extenso',
    'tx_observacoes', 'tx_msg_linha1', 'tx_msg_linha2', 'tx_msg_linha3',
    'no_login_inclusao', 'dh_inclusao', 'no_login_edicao', 'dh_edicao']);
  lfrFormulario.AdicionarMenu('nota_servico_item',
    ['cd_item', 'cd_tabela_servicos', 'no_tabela_servicos', 'cd_taxa_servicos',
    'no_taxa_servicos',

    'no_produto', 'cd_ncm', 'cd_safra', 'cd_produto_codigo_externo',

    'qt_quantidade', 'cd_unidade_quantidade', 'vl_unitario', 'cd_unidade_valor',
    'vl_total', 'vl_final', 'qt_quantidade_vl_total', 'qt_quantidade_vl_final',
    'pc_issqn', 'vl_issqn', 'nu_volumes', 'no_complemento',
    'vl_desconto_complemento', 'vl_acrescimo_complemento', 'pc_taxa',
    'vl_unitario_ou_taxa', 'vl_sub_total_taxa', 'UND/MOEDA:', 'MOEDA/UND:']);
  lfrFormulario.Show;
end;

procedure TfrmMain.smiSRER17Click(Sender: TObject);
var
  lfrLancamentos: TfrmRelatorioFechamentoDiario;
begin
  if not LancarFormulario('TfrmRelatorioFechamentoDiario') then
  begin
    try
      FBasico.MSGAguarde();
      /// RELATORIO_FECHAMENTO_DIARIO
      try
        lfrLancamentos := TfrmRelatorioFechamentoDiario.Create(nil);
        lfrLancamentos.Ibasico := FBasico;
        lfrLancamentos.Caption := smiSRER17.Caption;
        lfrLancamentos.Inicializar;
        lfrLancamentos.Show;
      except
        on e: exception do
          MessageDlg('Erro ao inicializar relatório.' + e.message, mtError,
            [mbOk], 0);
      end;
    finally
      FreeAndNil(frmRelatorioFechamentoDiario);
      FBasico.MSGAguarde(false);
    end;
  end;
end;

procedure TfrmMain.smiSRER18Click(Sender: TObject);
var
  lfrLancamentos: TfrmRelatorioDiferencaClassificacao;
begin
  if not LancarFormulario('TfrmRelatorioDiferencaClassificacao') then
  begin
    try
      FBasico.MSGAguarde();
      /// RELATORIO_DIFERENCA_CLASSIFICACAO
      try
        lfrLancamentos := TfrmRelatorioDiferencaClassificacao.Create(nil);
        lfrLancamentos.Ibasico := FBasico;
        lfrLancamentos.Caption := smiSRER18.Caption;
        lfrLancamentos.Inicializar;
        lfrLancamentos.Show;
      except
        on e: exception do
          MessageDlg('Erro ao inicializar relatório.' + e.message, mtError,
            [mbOk], 0);
      end;
    finally
      FreeAndNil(frmRelatorioDiferencaClassificacao);
      FBasico.MSGAguarde(false);
    end;
  end;
end;

procedure TfrmMain.smiSRER20Click(Sender: TObject);
var
  lobFormulario: TfrmLocalizarLiberacaoPesoRetidoTransgenia;
begin
  try
  Fbasico.MSGAguarde();
  if not LancarFormulario('TfrmLocalizarLiberacaoPesoRetidoTransgenia') then
  begin
    lobFormulario := TfrmLocalizarLiberacaoPesoRetidoTransgenia.Create(Nil);
    try
      lobFormulario.Ibasico := FBasico;
      lobFormulario.isaFormTitulo := vfrmMenu.isaTituloFormulario;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    except
      on e: exception do
        MessageDlg(e.message, mtError, [mbOk], 0);
    end;
  end;
  finally
    Fbasico.MSGAguarde(False);
end;
end;



procedure TfrmMain.SREF02ExtratoBancrio1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_ExtratoBancario;
begin
  if not LancarFormulario('TfrmRPT_ExtratoBancario') then
  begin
    lobFormulario := TfrmRPT_ExtratoBancario.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF03DisponibilidadeDiria1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_DisponibilidadeDiaria;
begin
  if not LancarFormulario('TfrmRPT_DisponibilidadeDiaria') then
  begin
    lobFormulario := TfrmRPT_DisponibilidadeDiaria.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF04FluxodeCaixaGerencial1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_FluxoCaixaGerencial;
begin
  if not LancarFormulario('TfrmRPT_FluxoCaixaGerencial') then
  begin
    lobFormulario := TfrmRPT_FluxoCaixaGerencial.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF05MovimentoAnaltico1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_MovimentoAnalitico;
begin
  if not LancarFormulario('TfrmRPT_MovimentoAnalitico') then
  begin
    lobFormulario := TfrmRPT_MovimentoAnalitico.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF06MovimentaoporCentrodeCustos1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_CentroCustos;
begin
  if not LancarFormulario('TfrmRPT_CentroCustos') then
  begin
    lobFormulario := TfrmRPT_CentroCustos.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF07MovimentaoporContaGerencial1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_ContasGerenciais;
begin
  if not LancarFormulario('TfrmRPT_ContasGerenciais') then
  begin
    lobFormulario := TfrmRPT_ContasGerenciais.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF07MovimentaoporContaGerencial2Click(Sender: TObject);
var
  lobFormulario: TfrmConsultaContasGerenciaisMesaMes;
begin
  if not LancarFormulario('TfrmConsultaContasGerenciaisMesaMes') then
  begin
    lobFormulario := TfrmConsultaContasGerenciaisMesaMes.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF09ReceitaseDespesas1Click(Sender: TObject);
var
  lobFormulario: TfrmReceitaseDespesas;
begin
  if not LancarFormulario('frmReceitaseDespesas') then
  begin
    lobFormulario := TfrmReceitaseDespesas.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF10SaldodeContas1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_SaldoContas;
begin
  if not LancarFormulario('TfrmRPT_SaldoContas') then
  begin
    lobFormulario := TfrmRPT_SaldoContas.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF11ConferenciadeMovimentaesBancriaseContabilidade1Click(
  Sender: TObject);
var
  lfrRelatorio: TfrmRPT_ContaBancoContabil;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_ContaBancoContabil') then
    begin
      lfrRelatorio := TfrmRPT_ContaBancoContabil.Create(Nil);
      try
        try
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Inicializar;
          lfrRelatorio.Show; // Modal;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.SREF12FichaFinanceira1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_FichaFinanceira;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_FichaFinanceira') then
    begin
      lobFormulario := TfrmRPT_FichaFinanceira.Create(Nil);
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.SREF13SaldodaFichaFinanceira1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_SaldoFichaFinanceira;
begin
  if not LancarFormulario('TfrmRPT_SaldoFichaFinanceira') then
  begin
    lobFormulario := TfrmRPT_SaldoFichaFinanceira.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF14ExtratodeFinanceiroIndividual1Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_ExtratoFinanceiroPessoa;
begin
  try
    FBasico.MSGAguarde();
    lfrRelatorio := TfrmRPT_ExtratoFinanceiroPessoa.Create(Nil);
    try
      try
        lfrRelatorio.Ibasico := FBasico;
        lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
        lfrRelatorio.Inicializar;
        lfrRelatorio.Show;
      except
        on e: exception do
        begin
          ShowMessage(e.message);
        end;
      end;
    finally
      // lfrExtrato.Free;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.SREF15Oramento1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_Orcamento;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_Orcamento') then
    begin
      lobFormulario := TfrmRPT_Orcamento.Create(Nil);
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.SREF16ApuraodeResultados1Click(Sender: TObject);
var
  lobFormulario: TfrmConsultaApuracaoResultados;
begin
  if not LancarFormulario('TfrmConsultaApuracaoResultados') then
  begin
    lobFormulario := TfrmConsultaApuracaoResultados.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF17RegistroDirio1Click(Sender: TObject);
var
  lobFormulario: TfrmConsultaRegistroDiario;
begin
  if not LancarFormulario('TfrmConsultaRegistroDiario') then
  begin
    lobFormulario := TfrmConsultaRegistroDiario.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF18FluxodeCaixa1Click(Sender: TObject);
var
  lobFormulario: TfrmFluxoCaixa;
begin
  if not LancarFormulario('TfrmFluxoCaixa') then
  begin
    lobFormulario := TfrmFluxoCaixa.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF19PlanodeContas1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_PlanoContas;
begin
  if not LancarFormulario('TfrmRPT_PlanoContas') then
  begin
    lobFormulario := TfrmRPT_PlanoContas.Create(Nil);
    lobFormulario.Ibasico := FBasico;
    lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
    lobFormulario.Inicializar;
    lobFormulario.Show;
  end;

end;

procedure TfrmMain.SREF20ContasGerenciais1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_Contas_Gerenciais;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_Contas_Gerenciais') then
    begin
      lobFormulario := TfrmRPT_Contas_Gerenciais.Create(Nil);
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.SREF21CotaodaMoeda1Click(Sender: TObject);
var
  lobFormulario: TFrmRPT_CotacaoMoedas;
begin
  if not LancarFormulario('TFrmRPT_CotacaoMoedas') then
  begin
    lobFormulario := TFrmRPT_CotacaoMoedas.Create(Nil);
    try
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
      lobFormulario.Inicializar;
      lobFormulario.Show;
      lobFormulario.Refresh;
    except
      on e: exception do
        MessageDlg(e.message, mtError, [mbOk], 0);
    end;
  end;

end;

procedure TfrmMain.SREF22LimitedeCrdito1Click(Sender: TObject);
var
  lobFormulario: TFrmRpt_LimiteCredito;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TFrmRpt_LimiteCredito') then
    begin
      lobFormulario := TFrmRpt_LimiteCredito.Create(Nil);
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.SREF24ResumodaFichaFinanceira1Click(Sender: TObject);
var
  lobFormulario: TfrmRPT_ResumoFichaFinanceira;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_ResumoFichaFinanceira') then
    begin
      lobFormulario := TfrmRPT_ResumoFichaFinanceira.Create(Nil);
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.SREF25FluxoMensalporContaGerencialeCentrodeCustos1Click(
  Sender: TObject);
var
  lobFormulario: TfrmRPT_REF025;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_REF025') then
    begin
      lobFormulario := TfrmRPT_REF025.Create(Nil);
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.SRER19DemonstrativodePesagem1Click(Sender: TObject);
var
  lobFormulario: TfrmRPTDiferencaPesagem;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPTDiferencaPesagem') then
    begin
      try
        // RPT_FRM_DIFERENCA_PESAGEM
        // RPT_DIFERENCA_PESAGENS
        lobFormulario := TfrmRPTDiferencaPesagem.Create(Nil);
        lobFormulario.Ibasico := FBasico;
        lobFormulario.Caption := vfrmMenu.isaTituloFormulario;
        lobFormulario.Inicializar;
        lobFormulario.Show;
      except
        on e: exception do
        begin
          ShowMessage(e.message);
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.SRER211Click(Sender: TObject);
var
  lfrFormulario: TfrmRTP_MovimentacaoEstoque;
begin
  try
    if not LancarFormulario('TfrmRTP_MovimentacaoEstoque') then
    begin
      try
        FBasico.MSGAguarde();
        lfrFormulario := TfrmRTP_MovimentacaoEstoque.Create(Nil);
        lfrFormulario.Caption := SRER211.Caption;
        lfrFormulario.Inicializar(FBasico);
      except
        on e: exception do
        begin
          FBasico.MSGAguarde(false);
          FBasico.boxErro('Erro: ' + e.message, SRER211.Caption);
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.SRER23ControledeRegistrodePesagemporBalana1Click(
  Sender: TObject);
var
  lfrFormulario: TfrmRPT_CONTROLE_REGISTRO_PESAGEM_BALANCA;
begin
  try

    if not LancarFormulario('TfrmRPT_CONTROLE_REGISTRO_PESAGEM_BALANCA') then
    begin
      try
        FBasico.MSGAguarde();
        lfrFormulario := TfrmRPT_CONTROLE_REGISTRO_PESAGEM_BALANCA.Create(nil);
        lfrFormulario.Inicializar(FBasico);
      except
        on e: exception do
        begin
          FBasico.MSGAguarde(false);
          FBasico.boxErro('Erro: ' + e.message, SRER211.Caption);
        end;
      end;
    end;

  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.SROM04OrdemdeCarga1Click(Sender: TObject);
var
  lfrFormulario: TfrmLocalizarOrdemCarga;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarOrdemCarga') then
    begin
      lfrFormulario := TfrmLocalizarOrdemCarga.Create(Nil);
      try
        lfrFormulario.Ibasico := FBasico;
        lfrFormulario.Caption := SROM04OrdemdeCarga1.Caption;
        lfrFormulario.Show;
      except
        on e: exception do
        begin
          ShowMessage(e.message);
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.SROM05BloqueiodeSaldo1Click(Sender: TObject);
var
  lfrBloqueio: TfrmLocalizarBloqueioDeSaldo;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarBloqueioDeSaldo') then
    begin
      lfrBloqueio := TfrmLocalizarBloqueioDeSaldo.Create(Nil);
      try
        lfrBloqueio.Show;
        lfrBloqueio.Refresh;
        lfrBloqueio.Ibasico := FBasico;
        lfrBloqueio.Caption := SROM05BloqueiodeSaldo1.Caption;
        lfrBloqueio.Inicializar;
      except
        on e: exception do
        begin
          ShowMessage(e.message);
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.SROM23Fluxo1Click(Sender: TObject);
var
   lobFormulario: TfrmLocalizaFLuxo;
begin
   try
      Fbasico.MSGAguarde();
      if not LancarFormulario('TfrmLocalizaFLuxo') then
      begin
         lobFormulario := TfrmLocalizaFLuxo.Create(Nil);
         try
            lobFormulario.Ibasico := FBasico;
            lobFormulario.Inicializar;
            lobFormulario.Show;
         except
            on e: exception do
            begin
               MessageDlg(e.message, mtError, [mbOk], 0);
            end;
         end;
      end;
   finally
     FBasico.MSGAguarde(false);
   end;
end;

procedure TfrmMain.SROM25VagoProduto1Click(Sender: TObject);
var
   lobFormulario:TfrmLocalizaProdutoVagao;
begin
   try
      Fbasico.MSGAguarde();
      if not LancarFormulario('TfrmLocalizaProdutoVagao') then
      begin
         lobFormulario := TfrmLocalizaProdutoVagao.Create(Nil);
         try
            lobFormulario.Ibasico := FBasico;
            lobFormulario.Inicializar;
            lobFormulario.Show;
         except
            on e: exception do
            begin
               MessageDlg(e.message, mtError, [mbOk], 0);
            end;
         end;
      end;
   finally
     FBasico.MSGAguarde(false);
   end;
end;


procedure TfrmMain.SROM26TransfernciadeRomaneioporContrato1Click(
  Sender: TObject);
var
  lobFormulario: TfrmLocalizarTransferenciaRomaneioContrato;
begin
  try
  Fbasico.MSGAguarde();
  if not LancarFormulario('TfrmLocalizarTransferenciaRomaneioContrato') then
  begin
    lobFormulario := TfrmLocalizarTransferenciaRomaneioContrato.Create(Nil);
    try
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    except
      on e: exception do
        MessageDlg(e.message, mtError, [mbOk], 0);
    end;
  end;
  finally
    FBasico.MSGAguarde(false);
end;
end;

procedure TfrmMain.SROM24ProgramaoDiria1Click(Sender: TObject);
var
   lobFormulario: TfrmLocalizaProgramacaoDiaria;
begin
   try
      Fbasico.MSGAguarde();
      if not LancarFormulario('TfrmLocalizaProgramacaoDiaria') then
      begin
         lobFormulario := TfrmLocalizaProgramacaoDiaria.Create(Nil);
         try
            lobFormulario.Ibasico := FBasico;
            lobFormulario.Inicializar;
            lobFormulario.Show;
         except
            on e: exception do
            begin
               MessageDlg(e.message, mtError, [mbOk], 0);
            end;
         end;
      end;
   finally
     FBasico.MSGAguarde(false);
   end;

end;


procedure TfrmMain.SRRO06SaldoGeraldeDepositantes1Click(Sender: TObject);
var
  lfrRelatorio: TfrmRPT_RelatorioGeral;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_RelatorioGeral') then
    begin
      lfrRelatorio := TfrmRPT_RelatorioGeral.Create(Nil);
      try
        try
          lfrRelatorio.Caption := vfrmMenu.isaTituloFormulario;
          lfrRelatorio.Ibasico := FBasico;
          lfrRelatorio.Show; // Modal;
        except
          on e: exception do
          begin
            ShowMessage(e.message);
          end;
        end;
      finally
        // lfrRelatorio.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiRTA08Click(Sender: TObject);
var
  lfrCartao: TfrmRPT_FRM_CARTAO;
begin

  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmRPT_FRM_CARTAO') then
    begin
      lfrCartao := TfrmRPT_FRM_CARTAO.Create(Nil);
      try
        lfrCartao.Caption := smiRTA08.Caption;
        lfrCartao.Ibasico := FBasico;
        lfrCartao.Inicializar;
        lfrCartao.Show;
      except
        on e: exception do
        begin
          ShowMessage(e.message);
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.smiSSVC08Click(Sender: TObject);
var
  lfrmServico: TfrmFaturarServicos;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmFaturarServicos') then
    begin
      lfrmServico := TfrmFaturarServicos.Create(nil);
      try
        try
          lfrmServico.Ibasico := FBasico;
          lfrmServico.Caption := smiSSVC08.Caption;
          lfrmServico.Inicializar;
          lfrmServico.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSSVC09Click(Sender: TObject);
var
  lfrmServico: TfrmFichaServicos;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmFichaServicos') then
    begin
      lfrmServico := TfrmFichaServicos.Create(Nil);
      try
        try
          lfrmServico.Ibasico := FBasico;
          lfrmServico.Caption := smiSSVC09.Caption;
          lfrmServico.Inicializar;
          lfrmServico.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSSVC10Click(Sender: TObject);
var
  lfrmFormulario: TfrmABONAR_SERVICOS_01;
  lstMensagem: String;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmABONAR_SERVICOS_01') then
    begin
      lfrmFormulario := TfrmABONAR_SERVICOS_01.Create(Nil);
      try
        try
          lfrmFormulario.Ibasico := FBasico;
          lfrmFormulario.Caption := smiSSVC10.Caption;
          lfrmFormulario.Inicializar(lstMensagem);
          lfrmFormulario.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lfrmFormulario.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSSVC03Click(Sender: TObject);
var
  lfrmFormulario: TfrmLocalizarServicoPrestado;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarServicoPrestado') then
    begin
      lfrmFormulario := TfrmLocalizarServicoPrestado.Create(Nil);
      try
        try
          lfrmFormulario.Ibasico := FBasico;
          lfrmFormulario.Caption := smiSSVC03.Caption;
          lfrmFormulario.Inicializar;
          lfrmFormulario.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
        // lfrmFormulario.Free;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSSVC04Click(Sender: TObject);
var
  lfrmServico: TfrmCalcularServicoRomaneios;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmCalcularServicoRomaneios') then
    begin
      lfrmServico := TfrmCalcularServicoRomaneios.Create(Nil);
      try
        try
          lfrmServico.Ibasico := FBasico;
          lfrmServico.Caption := smiSSVC04.Caption;
          lfrmServico.Inicializar;
          lfrmServico.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSSVC05Click(Sender: TObject);
var
  lfrmServico: TfrmCalcularServicosQuinzenais;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmCalcularServicosQuinzenais') then
    begin
      lfrmServico := TfrmCalcularServicosQuinzenais.Create(Nil);
      try
        try
          lfrmServico.Ibasico := FBasico;
          lfrmServico.Caption := smiSSVC05.Caption;
          lfrmServico.Inicializar;
          lfrmServico.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSSVC06Click(Sender: TObject);
var
  lfrmServico: TfrmCalcularServicos;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmCalcularServicos') then
    begin
      lfrmServico := TfrmCalcularServicos.Create(Nil);
      try
        try
          // CALCULAR_SERVICOS
          lfrmServico.Ibasico := FBasico;
          lfrmServico.Caption := smiSSVC06.Caption;
          lfrmServico.Inicializar;
          lfrmServico.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSSVC07Click(Sender: TObject);
var
  lfrmServico: TfrmApagarServicosRomaneios;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmApagarServicosRomaneios') then
    begin
      lfrmServico := TfrmApagarServicosRomaneios.Create(Nil);
      try
        try
          lfrmServico.Ibasico := FBasico;
          lfrmServico.Caption := smiSSVC07.Caption;
          lfrmServico.Inicializar;
          lfrmServico.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSSVC01Click(Sender: TObject);
var
  lfrmServico: TfrmLocalizarServicoNota;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarServicoNota') then
    begin
      lfrmServico := TfrmLocalizarServicoNota.Create(Nil);
      try
        try
          // SERVICO_NOTA_01
          // SERVICO_NOTA_00
          lfrmServico.Ibasico := FBasico;
          lfrmServico.Caption := smiSSVC01.Caption;
          lfrmServico.Inicializar;
          lfrmServico.Show;
        except
          on e: exception do
            MessageDlg(e.message, mtError, [mbOk], 0);
        end;
      finally
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.STAA04OperaodePesagem1Click(Sender: TObject);
var
  lobFormulario: TfrmLocalizarOperacaoPesagem;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarOperacaoPesagem') then
    begin
      lobFormulario := TfrmLocalizarOperacaoPesagem.Create(Nil);
      lobFormulario.Caption := STAA04OperaodePesagem1.Caption;
      lobFormulario.Ibasico := FBasico;
      lobFormulario.Inicializar;
      lobFormulario.Show;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.STAA06Ptios1Click(Sender: TObject);
var
  lfrPatios : TfrmLocalizarPatios;
begin
  try
    fBasico.MSGAguarde();
    lfrPatios := TfrmLocalizarPatios.Create(Nil);
    try
      if (vfrmMenu.TreeView1.Selected <> nil) then
         lfrPatios.Caption := Copy(vfrmMenu.TreeView1.Selected.Text, 1, 5) + ' - Localizar ' + Copy(vfrmMenu.TreeView1.Selected.Text, 8, Length(vfrmMenu.TreeView1.Selected.Text));
      lfrPatios.iBasico := FBasico;
      lfrPatios.Show;
    except
    on e : exception do
      begin
        ShowMessage( e.message );
      end;
    end;
  finally
    fBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.STAA07Cartes1Click(Sender: TObject);
var
  lfrCartoes : TfrmLocalizarCartoes;
begin
  try
    fBasico.MSGAguarde();
    lfrCartoes := TfrmLocalizarCartoes.Create(Nil);
    try
      if (vfrmMenu.TreeView1.Selected <> nil) then
         lfrCartoes.Caption := Copy(vfrmMenu.TreeView1.Selected.Text, 1, 5) + ' - Localizar ' + Copy(vfrmMenu.TreeView1.Selected.Text, 8, Length(vfrmMenu.TreeView1.Selected.Text));
      lfrCartoes.iBasico := FBasico;
      lfrCartoes.Show;
    except
    on e : exception do
      begin
        ShowMessage( e.message );
      end;
    end;
  finally
    fBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.STAA08Processos1Click(Sender: TObject);
var
  lfrProcessos : TfrmLocalizarProcessos;
begin
  try
    fBasico.MSGAguarde();
    lfrProcessos := TfrmLocalizarProcessos.Create(Nil);
    try
      //PROCESSO_01
      //PROCESSO_00
      if (vfrmMenu.TreeView1.Selected <> nil) then
         lfrProcessos.Caption := Copy(vfrmMenu.TreeView1.Selected.Text, 1, 5) + ' - Localizar ' + Copy(vfrmMenu.TreeView1.Selected.Text, 8, Length(vfrmMenu.TreeView1.Selected.Text));
      lfrProcessos.iBasico := FBasico;
      lfrProcessos.Show;
    except
    on e : exception do
      begin
        ShowMessage( e.message );
      end;
    end;
  finally
    fBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.STAA09OrigemeDestinoEDI1Click(Sender: TObject);
var
  frmLocalizaOrigemDestino: TfrmLocalizaOrigemDestino;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('frmLocalizaOrigemDestino') then
    begin
    frmLocalizaOrigemDestino := TfrmLocalizaOrigemDestino.Create(Nil);
    try
      frmLocalizaOrigemDestino.Ibasico := FBasico;
      frmLocalizaOrigemDestino.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.STAG04UnidadesdeMedida1Click(Sender: TObject);
var
  lfrVigor: TFrmLocalizarUnidade;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TFrmLocalizarUnidade') then
    begin
    lfrVigor := TFrmLocalizarUnidade.Create(Nil);
    try
      lfrVigor.Ibasico := FBasico;
      lfrVigor.Caption := STAG04UnidadesdeMedida1.Caption;
      lfrVigor.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;

end;

procedure TfrmMain.STAG05UnidadesdeMedida1Click(Sender: TObject);
var
  lfrVia: TfrmLocalizarViaTransporte;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TfrmLocalizarViaTransporte') then
    begin
    lfrVia := TfrmLocalizarViaTransporte.Create(Nil);
    try
      lfrVia.Ibasico := FBasico;
      lfrVia.Caption := STAG05UnidadesdeMedida1.Caption;
      lfrVia.Show;
    except
      on e: exception do
      begin
        ShowMessage(e.message);
      end;
    end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.smiSTAG06Click(Sender: TObject);
var
  lFrmJUSTIFICATIVA_CANCELAMENTO_01: TFrmJUSTIFICATIVA_CANCELAMENTO_01;
begin
  try
    FBasico.MSGAguarde();
    if not LancarFormulario('TFrmJUSTIFICATIVA_CANCELAMENTO_01') then
    begin
      lFrmJUSTIFICATIVA_CANCELAMENTO_01 := TFrmJUSTIFICATIVA_CANCELAMENTO_01.Create(nil);
      try
        lFrmJUSTIFICATIVA_CANCELAMENTO_01.iobjBasico := FBasico;
        lFrmJUSTIFICATIVA_CANCELAMENTO_01.Inicializar;
        lFrmJUSTIFICATIVA_CANCELAMENTO_01.Caption := smiSTAG06.Caption;
        lFrmJUSTIFICATIVA_CANCELAMENTO_01.Show;
      except
        on e: exception do
        begin
          ShowMessage(e.message);
        end;
      end;
    end;
  finally
    FBasico.MSGAguarde(false);
  end;
end;

procedure TfrmMain.STAG19TipodeVeculo1Click(Sender: TObject);
var
  lobFormulario : TfrmLocalizarTipoVeiculo;
begin
   try
      fBasico.MSGAguarde();
      lobFormulario := TfrmLocalizarTipoVeiculo.Create(Nil);
      try
         if (vfrmMenu.TreeView1.Selected <> nil) then
         begin
            lobFormulario.Caption := Copy(vfrmMenu.TreeView1.Selected.Text, 1, 6) + ' - Localizar ' + Copy(vfrmMenu.TreeView1.Selected.Text, 8, Length(vfrmMenu.TreeView1.Selected.Text));
         end;
         lobFormulario.iBasico := FBasico;
         lobFormulario.Inicializar;
         lobFormulario.Show;
      except on e : exception do
         begin
            ShowMessage( e.message );
         end;
      end;
   finally
      FBasico.MSGAguarde(false);
   end;

end;

end.
