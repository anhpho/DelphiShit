unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, StdCtrls, ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    gridInterviewees: TDBGrid;
    Label1: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    adoConnectionMainConnection: TADOConnection;
    adoTableInterviewees: TADOTable;
    dataSourceInterviewees: TDataSource;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Report1: TMenuItem;
    ImportFromExcelFile1: TMenuItem;
    Exit1: TMenuItem;
    procedure ImportFromExcelFile1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  projectPath:String;
begin
  projectPath := Application.GetNamePath();
end;

procedure TForm1.ImportFromExcelFile1Click(Sender: TObject);
begin
  //Import from Excel File

end;

end.
