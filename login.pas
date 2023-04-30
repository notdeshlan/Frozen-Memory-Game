unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls,unit9,db,unit2;

type
  Tfrmlogin = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;
  sname,spassword:string;

implementation
{$R *.dfm}
uses unit5;

procedure Tfrmlogin.Button1Click(Sender: TObject);
var
username:string;
begin
username:=Edit1.Text;
spassword:=Edit2.Text;
with unit9.Form9 do
begin
  if ADOTable1.Locate('Username',username,[]) then
  begin
    sname:=username;
    if ADOTable1['Password']=spassword then
    begin
      showmessage('Welcome '+sname);
      frmlogin.Hide;
      form2.show;
    end else
    showmessage('Incorrect Username or Password');
  end else
  showmessage('User Does not exist');
end;
with unit9.Form9 do
begin
  DBGrid1.Visible:=false;
  DBGrid2.Visible:=false;
  Button1.Visible:=false;
  Button2.Visible:=false;
  Button3.Visible:=false;
end;
end;

procedure Tfrmlogin.Button2Click(Sender: TObject);
begin
if Edit3.Text='1234' then
 begin
   showmessage('Welcome Admin');
   form9.Show;
   with unit9.Form9 do
   begin
     DBGrid1.Visible:=true;
     DBGrid2.Visible:=true;
     Button1.Visible:=true;
     Button2.Visible:=true;
     Button3.Visible:=true;
   end;
 end else
 showmessage('Password is incorrect');
end;

procedure Tfrmlogin.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tfrmlogin.Button4Click(Sender: TObject);
begin
Form5.Show;
frmlogin.Hide;
end;

procedure Tfrmlogin.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then
begin
 Edit2.PasswordChar:=#0;
end;
if CheckBox1.Checked=false then
begin
 Edit2.PasswordChar:='*';
end;

end;

procedure Tfrmlogin.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked=true then
begin
  Edit3.PasswordChar:=#0;
end;
 if CheckBox2.Checked=false then
begin
  Edit3.PasswordChar:='*';
end;
end;

end.
