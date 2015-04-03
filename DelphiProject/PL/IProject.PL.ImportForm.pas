unit IProject.PL.ImportForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ComObj, System.Generics.Collections,
  IProject.Entities;

type
  TImportForm = class(TForm)
    btnImport: TButton;
    edtPath: TEdit;
    odlgOpenFile: TOpenDialog;
    btnBrowser: TButton;
    procedure btnBrowserClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportForm: TImportForm;
  FFileName : String;
implementation

{$R *.dfm}


procedure TImportForm.btnBrowserClick(Sender: TObject);
begin
   odlgOpenFile := TOpenDialog.Create(Self);
     if odlgOpenFile.Execute then
     begin
      FFileName := odlgOpenFile.FileName;
      edtPath.Text := FFileName;
     end;
end;
procedure ValidateData( interviewee : TInterviewee);
begin

end;

procedure TImportForm.btnImportClick(Sender: TObject);
const
  xlCellTypeLastCell = $0000000B;
var
  XLApp, Sheet: OLEVariant;
  RangeMatrix: Variant;
  x, y, k, r: Integer;
  Temp : String;
  ImportList : TList<TInterviewee>;
  Interviewee : TInterviewee;
begin
  // Create Excel-OLE Object
  XLApp := CreateOleObject('Excel.Application');
  try
    // Hide Excel
    XLApp.Visible := False;

    // Open the Workbook
    XLApp.Workbooks.Open(edtPath.Text);

    // Sheet := XLApp.Workbooks[1].WorkSheets[1];
    Sheet := XLApp.ActiveSheet;

    // In order to know the dimension of the WorkSheet, i.e the number of rows
    // and the number of columns, we activate the last non-empty cell of it

    Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
    // Get the value of the last row
    x := XLApp.ActiveCell.Row;
    // Get the value of the last column
    y := XLApp.ActiveCell.Column;

    // Assign the Variant associated with the WorkSheet to the Delphi Variant


    //  Define the loop for filling in the TStringGrid
    ImportList := TList<TInterviewee>.Create();
    for r:=2 to X do
      begin
        if r = 1 then continue;

        Interviewee := TInterviewee.Create();
        for k:=2 to Y do
        begin
           Temp := XLApp.ActiveSheet.Cells[r,k].Value;
           case k of
            2 : Interviewee.Name := Temp;
            3 : Interviewee.Position :=  Temp;
            4 : Interviewee.JobRank := Temp;
            5 : Interviewee.InteviewDate := Temp;
            6 : Interviewee.Status := Temp;
            7 : Interviewee.OnboardDate := Temp;
            8 : Interviewee.InterviewerName := Temp;
            9 : Interviewee.Note := Temp;
            10 : Interviewee.Nominator := Temp;
            11: Interviewee.Cv := Temp;
          end;
          {ValidateData(Interviewee); }
          ImportList.Add(Interviewee);
        end;
      end;


    // Unassign the Delphi Variant Matrix
    RangeMatrix := Unassigned;

  finally
    // Quit Excel
    if not VarIsEmpty(XLApp) then
    begin
      // XLApp.DisplayAlerts := False;
      XLApp.Quit;
      XLAPP := Unassigned;
      Sheet := Unassigned;
    end;
  end;
end;



end.
