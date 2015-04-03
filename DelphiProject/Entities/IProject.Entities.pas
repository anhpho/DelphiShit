unit IProject.Entities;


interface
type
  TInterviewee = class
     private
      FId : Integer;
      FName : String;
      FPosition : String;
      FPositionId : Integer;
      FJobRank : String;
      FJobRankId : Integer;
      FInteviewDate : String;
      FStatus : String;
      FStatusId : integer;
      FOnboardDate : string;
      FInterviewerName : string;
      FNote : string;
      FNominator : string;
      FCv : string;

     public
      property Id : Integer read FId write FId;
      property Name : string read FName write FName;
      property Position : string read FPosition write FPosition;
      property PositionId : integer read FPositionId write FPositionId;
      property JobRank : string read FJobRank write FJobRank;
      property JobRankId : integer read FJobRankId write FJobRankId;
      property InteviewDate : string read FInteviewDate write FInteviewDate;
      property Status : string read FStatus write FStatus;
      property StatusId : integer read FStatusId write FStatusId;
      property OnboardDate : string read FOnboardDate write FOnboardDate;
      property InterviewerName : string read FInterviewerName write FInterviewerName;
      property Note : string read FNote write FNote;
      property Nominator : string read FNominator write FNominator;
      property Cv : string read FCv write FCv;
  end;

  TJobRank = class
    private
      FId : integer;
      FName : string;
      FPositionId : integer;
    public
      property Id : integer read FId write FId;
      property Name : string read FName write FName;
      property PositionId : integer read FPositionId write FPositionId;
  end;

  TPosition = class
    private
      FId : integer;
      FName : string;
    public
      property Id : integer read FId write FId;
      property Name : string read FName write FName;
  end;

   TStatus = class
     private
      FId : integer;
      FName : string;
     public
      property Id : integer read  FId write FId;
      property Name : string read FName write FName;
   end;

implementation

end.
