program ISProject;





uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  Interviewee in 'DAL\Interviewee.pas',
  IntervieweeLogic in 'BuzLayer\IntervieweeLogic.pas',
  IProject.Entities in 'Entities\IProject.Entities.pas',
  IProject.PL.ImportForm in 'PL\IProject.PL.ImportForm.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
