unit ISProject.BL.ImportData;

interface
uses
  IProject.Entities, System.Generics.Collections;
const
  naValue = 0;
type
  TImportData = class(TObject)
    private
      function GetStatus( status : string; lstStatus : TList<TStatus>) : Integer;
      procedure ValidatePositionAndJobRank( interviewee : TInterviewee; lstPosition : TList<TPosition>; lstJobRank : TList<TJobRank>);

    public
      procedure ValidateInverviewee( interviewee : TInterviewee);
  end;

implementation
 procedure TImportData.ValidateInverviewee(interviewee: TInterviewee);
 var
  lstStatus : TList<TStatus>;
  lstPosition : TList<TPosition>;
  lstJobRank : TList<TJobRank>;
  I, id : integer;
  status : string;

 begin
  status := interviewee.Status;


 end;

 function TImportData.GetStatus( status : string; lstStatus : TList<TStatus>) : Integer;
 var
  I : integer;
 begin
  Result := naValue;
  for I := 1 to lstStatus.Count do
  begin
    if( lstStatus[I].Name = status) then
    begin
      Result := lstStatus[I].Id;
      break;
    end;
  end;

 end;
 procedure ValidatePositionAndJobRank( interviewee : TInterviewee; lstPosition : TList<TPosition>; lstJobRank : TList<TJobRank>);
 var
  position, jobrank: string;
  positionId, jobrankId : integer;
  I : integer;
 begin
  position := interviewee.Position;
  interviewee.Position := naValue;
  for I := 1 to lstPosition.Count do
  begin
    if( lstPosition[I].Name = position) then
    begin
      interviewee.PositionId := lstPosition[I].Id;
      break;
    end;
  end;

  jobrank := interviewee.JobRank;
  interviewee.JobRankId := naValue;
  for I := 1 to lstPosition.Count do
  begin
    if( lstJobRank[I].Name = jobrank) and ( interviewee.PositionId = lstJobRank[I].PositionId  ) then
    begin
      interviewee.JobRankId := lstJobRank[I].Id;
      break;
    end;
  end;
 end;

end.
