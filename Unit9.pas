unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, jpeg, ExtCtrls;

type
  TForm9 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Image1: TImage;
    Edit1: TEdit;
    But4: TButton;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
var
xname:string;
begin
xname:=ADOTable1['Username'];
ADOTable1.Delete;
ADOTable2.Locate('Username',xname,[]);
ADOTable2.Delete;
end;

procedure TForm9.Button2Click(Sender: TObject);
var
i:integer;
age,average:real;
begin
age:=0;
ADOTable1.DisableControls;
ADOTable1.First;
for I := 1 to ADOTable1.RecordCount do
begin
age:=age+ADOTable1['Age'];
ADOTable1.Next;
end;
ADOTable1.EnableControls;
average:=Round(age/ADOTable1.RecordCount);
ShowMessage('Average Age is '+FloatToStr(average) );
end;

procedure TForm9.Button3Click(Sender: TObject);
var
i:integer;
begin

ADOTable1.DisableControls;
ADOTable1.First;
for I := 1 to ADOTable1.RecordCount do
begin
ADOTable1.Edit;
ADOTable1['Age']:=ADOTable1['Age']+1;
ADOTable1.Post;
ADOTable1.Next;
end;
ADOTable1.EnableControls;
end;

procedure TForm9.Button4Click(Sender: TObject);
var
name,name1,played:string;
tmyfile:textfile;
sline:string;
begin
memo1.Clear;
name1:=Edit1.Text;
if ADOTable2.Locate('Username',name1,[]) then
begin
  name:=ADOTable2['Username'];
  played:=inttostr(ADOTable2['Games Played']);
  AssignFile(tmyfile,name+played+'.rtf');
try
  reset(tmyfile)
except
showmessage('File is missing');
exit;
end;
while not eof(tmyfile) do
begin
  Readln(tmyfile,sline);
  Memo1.Lines.Add(sline);
end;
end;

end;

procedure TForm9.Button5Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
ADOConnection1.Connected:=false;
ADOConnection1.ConnectionString:=GetCurrentDir+'\dbplayers.mdb';
ADOConnection1.Connected:=true;
ADOTable1.Active:=true;
ADOTable2.Active:=true;
DataSource1.Enabled:=true;
DataSource2.Enabled:=true;
end;

end.
