unit ISProject.DAL.Repositories;

interface
uses
  System.Classes,
  System.Generics.Collections,
  Data.Win.ADODB,
  System.Rtti;
type
  TRepositoryBase<T> = class
    protected
      FForm: TComponent;
      FConnection :  TADOConnection;
      FInsertSPName, FUpdateSPName, FDeleteSPName, FGetAllSPName : string;

    public
      function GetAll():TList<T>; Virtual;
      procedure Insert( entity : T); Virtual;
      procedure Update( entity : T); Virtual;
      procedure Delete( id : integer); Virtual;

      constructor Create( connection : TADOConnection; form: TComponent; tableName : string);
  end;
implementation
  constructor TRepositoryBase<T>.Create( connection : TADOConnection; form: TComponent; tableName : string);
  begin
      Self.FInsertSPName := 'sp_' + tableName + '_Insert';
      Self.FUpdateSPName := 'sp_' + tableName + '_Update';
      Self.FDeleteSPName := 'sp_' + tableName + '_Delete';
      Self.FGetAllSPName := 'sp_' + tableName + '_GetAll';

      self.FForm := form;
      self.FConnection := connection;
  end;
   function TRepositoryBase<T>.GetAll():TList<T>;
   var
    storedProcedure : TADOStoredProc;
    LContext: TRttiContext;
    LClass : TRttiInstanceType;
    fields : TArray<TRttiField>;
   begin
     TADOStoredProc.Create(Self.FForm);
     storedProcedure.ProcedureName :=  Self.FGetAllSPName;
     storedProcedure.Prepared;
     storedProcedure.Open();

     { Obtain the RTTI context }
    LContext := TRttiContext.Create;

    { Obtain type information for the TTest class }
    LClass := LContext.GetType(T) as TRttiInstanceType;

    fields := LClass.GetFields();
   end;
end.
