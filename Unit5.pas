unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,unit6,
  Dialogs, StdCtrls, pngimage, jpeg, ExtCtrls,unit9,db,login, MPlayer;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    MediaPlayer1: TMediaPlayer;
    Timer1: TTimer;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    function dbconnect:boolean;
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
frmlogin.Show;
form5.Hide;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
form6.Show;
form5.Hide;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

function TForm5.dbconnect: boolean;
var
constr:string;
Servername,dbname:string;
begin
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
MediaPlayer1.FileName:=GetCurrentDir+'\Begining.mp3';
MediaPlayer1.Enabled:=True;
Timer1.Enabled:=true;
MediaPlayer1.Open;
MediaPlayer1.Play;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
MediaPlayer1.Rewind;
MediaPlayer1.Play;
end;

end.
