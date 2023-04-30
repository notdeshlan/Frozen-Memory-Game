unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, math, unit9, db;

type

  TForm4 = class(TForm)
    ImgA: TImage;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img13: TImage;
    img17: TImage;
    img14: TImage;
    img18: TImage;
    img19: TImage;
    img15: TImage;
    img16: TImage;
    img20: TImage;
    img10: TImage;
    img12: TImage;
    img9: TImage;
    img11: TImage;
    c1: TImage;
    c2: TImage;
    c3: TImage;
    c4: TImage;
    c5: TImage;
    c6: TImage;
    c7: TImage;
    c8: TImage;
    c9: TImage;
    c10: TImage;
    d1: TImage;
    d2: TImage;
    d3: TImage;
    d4: TImage;
    d5: TImage;
    d6: TImage;
    d7: TImage;
    d8: TImage;
    d9: TImage;
    d10: TImage;
    Button4: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Shuffle1(var aArray; aItemcount, aitemsize: integer);

    procedure FormCreate(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure img11Click(Sender: TObject);
    procedure img12Click(Sender: TObject);
    procedure img13Click(Sender: TObject);
    procedure img14Click(Sender: TObject);
    procedure img15Click(Sender: TObject);
    procedure img16Click(Sender: TObject);
    procedure img17Click(Sender: TObject);
    procedure img18Click(Sender: TObject);
    procedure img19Click(Sender: TObject);
    procedure img20Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure img6Click(Sender: TObject);
    procedure img7Click(Sender: TObject);
    procedure img8Click(Sender: TObject);
    procedure img9Click(Sender: TObject);
    procedure img10Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ImgAMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }

  public
    { Public declarations }
    click: integer;
  end;

var
  Form4: TForm4;
  aItemcount, aitemsize: integer;
  c: array [1 .. 10] of integer;
  d: array [1 .. 10] of integer;
  points: integer;
  pairsmatched: integer;
  timesplayed: string;

implementation

uses login;
{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  Application.Terminate;
end;

{ procedure TForm4.Button3Click(Sender: TObject);
  var
  a:array[1..10]of integer;
  i:ShortInt;
  begin
  randomize;
  for I := low(a) to high(a) do
  a[i]:=i;
  shuffle1(a,high(a),SizeOf(integer));
  for I := 1 to high(a) - 1 do
  begin
  c[1]:=a[1];
  c[2]:=a[2];
  c[3]:=a[3];
  c[4]:=a[4];
  c[5]:=a[5];
  c[6]:=a[6];
  c[7]:=a[7];
  c[8]:=a[8];
  c[9]:=a[9];
  c[10]:=a[10];

  end;

  if c[1]=1 then
  begin
  c1.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_1.jpg');
  end;
  if c[1]=2 then
  begin
  c1.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_3.jpg');
  end;
  if c[1]=3 then
  begin
  c1.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_4.jpg');
  end;
  if c[1]=4 then
  begin
  c1.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_5.jpg');
  end;
  if c[1]=5 then
  begin
  c1.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_6.jpg');
  end;
  if c[1]=6 then
  begin
  c1.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_7.jpg');
  end;
  if c[1]=7 then
  begin
  c1.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_8.jpg');
  end;
  if c[1]=8 then
  begin
  c1.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_9.jpg');
  end;
  if c[1]=9 then
  begin
  c1.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_10.jpg');
  end;
  if c[1]=10 then
  begin
  c1.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_11.jpg');
  end;

  if c[2]=1 then
  begin
  c2.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_1.jpg');
  end;
  if c[2]=2 then
  begin
  c2.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_3.jpg');
  end;
  if c[2]=3 then
  begin
  c2.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_4.jpg');
  end;
  if c[2]=4 then
  begin
  c2.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_5.jpg');
  end;
  if c[2]=5 then
  begin
  c2.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_6.jpg');
  end;
  if c[2]=6 then
  begin
  c2.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_7.jpg');
  end;
  if c[2]=7 then
  begin
  c2.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_8.jpg');
  end;
  if c[2]=8 then
  begin
  c2.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_9.jpg');
  end;
  if c[2]=9 then
  begin
  c2.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_10.jpg');
  end;
  if c[2]=10 then
  begin
  c2.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_11.jpg');
  end;

  if c[3]=1 then
  begin
  c3.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_1.jpg');
  end;
  if c[3]=2 then
  begin
  c3.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_3.jpg');
  end;
  if c[3]=3 then
  begin
  c3.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_4.jpg');
  end;
  if c[3]=4 then
  begin
  c3.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_5.jpg');
  end;
  if c[3]=5 then
  begin
  c3.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_6.jpg');
  end;
  if c[3]=6 then
  begin
  c3.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_7.jpg');
  end;
  if c[3]=7 then
  begin
  c3.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_8.jpg');
  end;
  if c[3]=8 then
  begin
  c3.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_9.jpg');
  end;
  if c[3]=9 then
  begin
  c3.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_10.jpg');
  end;
  if c[3]=10 then
  begin
  c3.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_11.jpg');
  end;
  if c[4]=1 then
  begin
  c4.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_1.jpg');
  end;
  if c[4]=2 then
  begin
  c4.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_3.jpg');
  end;
  if c[4]=3 then
  begin
  c4.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_4.jpg');
  end;
  if c[4]=4 then
  begin
  c4.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_5.jpg');
  end;
  if c[4]=5 then
  begin
  c4.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_6.jpg');
  end;
  if c[4]=6 then
  begin
  c4.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_7.jpg');
  end;
  if c[4]=7 then
  begin
  c4.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_8.jpg');
  end;
  if c[4]=8 then
  begin
  c4.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_9.jpg');
  end;
  if c[4]=9 then
  begin
  c4.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_10.jpg');
  end;
  if c[4]=10 then
  begin
  c4.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_11.jpg');
  end;

  if c[5]=1 then
  begin
  c5.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_1.jpg');
  end;
  if c[5]=2 then
  begin
  c5.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_3.jpg');
  end;
  if c[5]=3 then
  begin
  c5.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_4.jpg');
  end;
  if c[5]=4 then
  begin
  c5.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_5.jpg');
  end;
  if c[5]=5 then
  begin
  c5.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_6.jpg');
  end;
  if c[5]=6 then
  begin
  c5.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_7.jpg');
  end;
  if c[5]=7 then
  begin
  c5.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_8.jpg');
  end;
  if c[5]=8 then
  begin
  c5.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_9.jpg');
  end;
  if c[5]=9 then
  begin
  c5.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_10.jpg');
  end;
  if c[5]=10 then
  begin
  c5.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_11.jpg');
  end;

  if c[6]=1 then
  begin
  c6.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_1.jpg');
  end;
  if c[6]=2 then
  begin
  c6.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_3.jpg');
  end;
  if c[6]=3 then
  begin
  c6.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_4.jpg');
  end;
  if c[6]=4 then
  begin
  c6.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_5.jpg');
  end;
  if c[6]=5 then
  begin
  c6.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_6.jpg');
  end;
  if c[6]=6 then
  begin
  c6.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_7.jpg');
  end;
  if c[6]=7 then
  begin
  c6.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_8.jpg');
  end;
  if c[6]=8 then
  begin
  c6.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_9.jpg');
  end;
  if c[6]=9 then
  begin
  c6.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_10.jpg');
  end;
  if c[6]=10 then
  begin
  c6.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_11.jpg');
  end;
  if c[7]=1 then
  begin
  c7.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_1.jpg');
  end;
  if c[7]=2 then
  begin
  c7.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_3.jpg');
  end;
  if c[7]=3 then
  begin
  c7.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_4.jpg');
  end;
  if c[7]=4 then
  begin
  c7.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_5.jpg');
  end;
  if c[7]=5 then
  begin
  c7.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_6.jpg');
  end;
  if c[7]=6 then
  begin
  c7.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_7.jpg');
  end;
  if c[7]=7 then
  begin
  c7.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_8.jpg');
  end;
  if c[7]=8 then
  begin
  c7.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_9.jpg');
  end;
  if c[7]=9 then
  begin
  c7.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_10.jpg');
  end;
  if c[7]=10 then
  begin
  c7.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_11.jpg');
  end;

  if c[8]=1 then
  begin
  c8.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_1.jpg');
  end;
  if c[8]=2 then
  begin
  c8.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_3.jpg');
  end;
  if c[8]=3 then
  begin
  c8.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_4.jpg');
  end;
  if c[8]=4 then
  begin
  c8.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_5.jpg');
  end;
  if c[8]=5 then
  begin
  c8.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_6.jpg');
  end;
  if c[8]=6 then
  begin
  c8.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_7.jpg');
  end;
  if c[8]=7 then
  begin
  c8.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_8.jpg');
  end;
  if c[8]=8 then
  begin
  c8.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_9.jpg');
  end;
  if c[8]=9 then
  begin
  c8.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_10.jpg');
  end;
  if c[8]=10 then
  begin
  c8.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_11.jpg');
  end;

  if c[9]=1 then
  begin
  c9.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_1.jpg');
  end;
  if c[9]=2 then
  begin
  c9.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_3.jpg');
  end;
  if c[9]=3 then
  begin
  c9.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_4.jpg');
  end;
  if c[9]=4 then
  begin
  c9.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_5.jpg');
  end;
  if c[9]=5 then
  begin
  c9.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_6.jpg');
  end;
  if c[9]=6 then
  begin
  c9.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_7.jpg');
  end;
  if c[9]=7 then
  begin
  c9.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_8.jpg');
  end;
  if c[9]=8 then
  begin
  c9.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_9.jpg');
  end;
  if c[9]=9 then
  begin
  c9.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_10.jpg');
  end;
  if c[9]=10 then
  begin
  c9.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_11.jpg');
  end;
  if c[10]=1 then
  begin
  c10.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_1.jpg');
  end;
  if c[10]=2 then
  begin
  c10.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_3.jpg');
  end;
  if c[10]=3 then
  begin
  c10.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_4.jpg');
  end;
  if c[10]=4 then
  begin
  c10.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_5.jpg');
  end;
  if c[10]=5 then
  begin
  c10.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_6.jpg');
  end;
  if c[10]=6 then
  begin
  c10.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_7.jpg');
  end;
  if c[10]=7 then
  begin
  c10.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_8.jpg');
  end;
  if c[10]=8 then
  begin
  c10.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_9.jpg');
  end;
  if c[10]=9 then
  begin
  c10.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_10.jpg');
  end;
  if c[10]=10 then
  begin
  c10.Picture.LoadFromFile('New Doc 2019-07-20 17.27.03_11.jpg');
  end;




  end; }

procedure TForm4.FormActivate(Sender: TObject);
var
  a: array [1 .. 10] of integer;
  i: ShortInt;
  b: array [1 .. 10] of integer;
  s: integer;
begin
  points := 0;
  Timer1.Enabled := true;
  randomize;
  for i := low(a) to high(a) do
    a[i] := i;
  Shuffle1(a, high(a), SizeOf(integer));
  for i := 1 to high(a) - 1 do
  begin
    c[1] := a[1];
    c[2] := a[2];
    c[3] := a[3];
    c[4] := a[4];
    c[5] := a[5];
    c[6] := a[6];
    c[7] := a[7];
    c[8] := a[8];
    c[9] := a[9];
    c[10] := a[10];

    if c[1] = 1 then
    begin
      c1.Picture.LoadFromFile('1.jpg');
    end;
    if c[1] = 2 then
    begin
      c1.Picture.LoadFromFile('2.jpg');
    end;
    if c[1] = 3 then
    begin
      c1.Picture.LoadFromFile('3.jpg');
    end;
    if c[1] = 4 then
    begin
      c1.Picture.LoadFromFile('4.jpg');
    end;
    if c[1] = 5 then
    begin
      c1.Picture.LoadFromFile('5.jpg');
    end;
    if c[1] = 6 then
    begin
      c1.Picture.LoadFromFile('6.jpg');
    end;
    if c[1] = 7 then
    begin
      c1.Picture.LoadFromFile('7.jpg');
    end;
    if c[1] = 8 then
    begin
      c1.Picture.LoadFromFile('8.jpg');
    end;
    if c[1] = 9 then
    begin
      c1.Picture.LoadFromFile('9.jpg');
    end;
    if c[1] = 10 then
    begin
      c1.Picture.LoadFromFile('10.jpg');
    end;

    if c[2] = 1 then
    begin
      c2.Picture.LoadFromFile('1.jpg');
    end;
    if c[2] = 2 then
    begin
      c2.Picture.LoadFromFile('2.jpg');
    end;
    if c[2] = 3 then
    begin
      c2.Picture.LoadFromFile('3.jpg');
    end;
    if c[2] = 4 then
    begin
      c2.Picture.LoadFromFile('4.jpg');
    end;
    if c[2] = 5 then
    begin
      c2.Picture.LoadFromFile('5.jpg');
    end;
    if c[2] = 6 then
    begin
      c2.Picture.LoadFromFile('6.jpg');
    end;
    if c[2] = 7 then
    begin
      c2.Picture.LoadFromFile('7.jpg');
    end;
    if c[2] = 8 then
    begin
      c2.Picture.LoadFromFile('8.jpg');
    end;
    if c[2] = 9 then
    begin
      c2.Picture.LoadFromFile('9.jpg');
    end;
    if c[2] = 10 then
    begin
      c2.Picture.LoadFromFile('10.jpg');
    end;

    if c[3] = 1 then
    begin
      c3.Picture.LoadFromFile('1.jpg');
    end;
    if c[3] = 2 then
    begin
      c3.Picture.LoadFromFile('2.jpg');
    end;
    if c[3] = 3 then
    begin
      c3.Picture.LoadFromFile('3.jpg');
    end;
    if c[3] = 4 then
    begin
      c3.Picture.LoadFromFile('4.jpg');
    end;
    if c[3] = 5 then
    begin
      c3.Picture.LoadFromFile('5.jpg');
    end;
    if c[3] = 6 then
    begin
      c3.Picture.LoadFromFile('6.jpg');
    end;
    if c[3] = 7 then
    begin
      c3.Picture.LoadFromFile('7.jpg');
    end;
    if c[3] = 8 then
    begin
      c3.Picture.LoadFromFile('8.jpg');
    end;
    if c[3] = 9 then
    begin
      c3.Picture.LoadFromFile('9.jpg');
    end;
    if c[3] = 10 then
    begin
      c3.Picture.LoadFromFile('10.jpg');
    end;
    if c[4] = 1 then
    begin
      c4.Picture.LoadFromFile('1.jpg');
    end;
    if c[4] = 2 then
    begin
      c4.Picture.LoadFromFile('2.jpg');
    end;
    if c[4] = 3 then
    begin
      c4.Picture.LoadFromFile('3.jpg');
    end;
    if c[4] = 4 then
    begin
      c4.Picture.LoadFromFile('4.jpg');
    end;
    if c[4] = 5 then
    begin
      c4.Picture.LoadFromFile('5.jpg');
    end;
    if c[4] = 6 then
    begin
      c4.Picture.LoadFromFile('6.jpg');
    end;
    if c[4] = 7 then
    begin
      c4.Picture.LoadFromFile('7.jpg');
    end;
    if c[4] = 8 then
    begin
      c4.Picture.LoadFromFile('8.jpg');
    end;
    if c[4] = 9 then
    begin
      c4.Picture.LoadFromFile('9.jpg');
    end;
    if c[4] = 10 then
    begin
      c4.Picture.LoadFromFile('10.jpg');
    end;

    if c[5] = 1 then
    begin
      c5.Picture.LoadFromFile('1.jpg');
    end;
    if c[5] = 2 then
    begin
      c5.Picture.LoadFromFile('2.jpg');
    end;
    if c[5] = 3 then
    begin
      c5.Picture.LoadFromFile('3.jpg');
    end;
    if c[5] = 4 then
    begin
      c5.Picture.LoadFromFile('4.jpg');
    end;
    if c[5] = 5 then
    begin
      c5.Picture.LoadFromFile('5.jpg');
    end;
    if c[5] = 6 then
    begin
      c5.Picture.LoadFromFile('6.jpg');
    end;
    if c[5] = 7 then
    begin
      c5.Picture.LoadFromFile('7.jpg');
    end;
    if c[5] = 8 then
    begin
      c5.Picture.LoadFromFile('8.jpg');
    end;
    if c[5] = 9 then
    begin
      c5.Picture.LoadFromFile('9.jpg');
    end;
    if c[5] = 10 then
    begin
      c5.Picture.LoadFromFile('10.jpg');
    end;

    if c[6] = 1 then
    begin
      c6.Picture.LoadFromFile('1.jpg');
    end;
    if c[6] = 2 then
    begin
      c6.Picture.LoadFromFile('2.jpg');
    end;
    if c[6] = 3 then
    begin
      c6.Picture.LoadFromFile('3.jpg');
    end;
    if c[6] = 4 then
    begin
      c6.Picture.LoadFromFile('4.jpg');
    end;
    if c[6] = 5 then
    begin
      c6.Picture.LoadFromFile('5.jpg');
    end;
    if c[6] = 6 then
    begin
      c6.Picture.LoadFromFile('6.jpg');
    end;
    if c[6] = 7 then
    begin
      c6.Picture.LoadFromFile('7.jpg');
    end;
    if c[6] = 8 then
    begin
      c6.Picture.LoadFromFile('8.jpg');
    end;
    if c[6] = 9 then
    begin
      c6.Picture.LoadFromFile('9.jpg');
    end;
    if c[6] = 10 then
    begin
      c6.Picture.LoadFromFile('10.jpg');
    end;
    if c[7] = 1 then
    begin
      c7.Picture.LoadFromFile('1.jpg');
    end;
    if c[7] = 2 then
    begin
      c7.Picture.LoadFromFile('2.jpg');
    end;
    if c[7] = 3 then
    begin
      c7.Picture.LoadFromFile('3.jpg');
    end;
    if c[7] = 4 then
    begin
      c7.Picture.LoadFromFile('4.jpg');
    end;
    if c[7] = 5 then
    begin
      c7.Picture.LoadFromFile('5.jpg');
    end;
    if c[7] = 6 then
    begin
      c7.Picture.LoadFromFile('6.jpg');
    end;
    if c[7] = 7 then
    begin
      c7.Picture.LoadFromFile('7.jpg');
    end;
    if c[7] = 8 then
    begin
      c7.Picture.LoadFromFile('8.jpg');
    end;
    if c[7] = 9 then
    begin
      c7.Picture.LoadFromFile('9.jpg');
    end;
    if c[7] = 10 then
    begin
      c7.Picture.LoadFromFile('10.jpg');
    end;

    if c[8] = 1 then
    begin
      c8.Picture.LoadFromFile('1.jpg');
    end;
    if c[8] = 2 then
    begin
      c8.Picture.LoadFromFile('2.jpg');
    end;
    if c[8] = 3 then
    begin
      c8.Picture.LoadFromFile('3.jpg');
    end;
    if c[8] = 4 then
    begin
      c8.Picture.LoadFromFile('4.jpg');
    end;
    if c[8] = 5 then
    begin
      c8.Picture.LoadFromFile('5.jpg');
    end;
    if c[8] = 6 then
    begin
      c8.Picture.LoadFromFile('6.jpg');
    end;
    if c[8] = 7 then
    begin
      c8.Picture.LoadFromFile('7.jpg');
    end;
    if c[8] = 8 then
    begin
      c8.Picture.LoadFromFile('8.jpg');
    end;
    if c[8] = 9 then
    begin
      c8.Picture.LoadFromFile('9.jpg');
    end;
    if c[8] = 10 then
    begin
      c8.Picture.LoadFromFile('10.jpg');
    end;

    if c[9] = 1 then
    begin
      c9.Picture.LoadFromFile('1.jpg');
    end;
    if c[9] = 2 then
    begin
      c9.Picture.LoadFromFile('2.jpg');
    end;
    if c[9] = 3 then
    begin
      c9.Picture.LoadFromFile('3.jpg');
    end;
    if c[9] = 4 then
    begin
      c9.Picture.LoadFromFile('4.jpg');
    end;
    if c[9] = 5 then
    begin
      c9.Picture.LoadFromFile('5.jpg');
    end;
    if c[9] = 6 then
    begin
      c9.Picture.LoadFromFile('6.jpg');
    end;
    if c[9] = 7 then
    begin
      c9.Picture.LoadFromFile('7.jpg');
    end;
    if c[9] = 8 then
    begin
      c9.Picture.LoadFromFile('8.jpg');
    end;
    if c[9] = 9 then
    begin
      c9.Picture.LoadFromFile('9.jpg');
    end;
    if c[9] = 10 then
    begin
      c9.Picture.LoadFromFile('10.jpg');
    end;
    if c[10] = 1 then
    begin
      c10.Picture.LoadFromFile('1.jpg');
    end;
    if c[10] = 2 then
    begin
      c10.Picture.LoadFromFile('2.jpg');
    end;
    if c[10] = 3 then
    begin
      c10.Picture.LoadFromFile('3.jpg');
    end;
    if c[10] = 4 then
    begin
      c10.Picture.LoadFromFile('4.jpg');
    end;
    if c[10] = 5 then
    begin
      c10.Picture.LoadFromFile('5.jpg');
    end;
    if c[10] = 6 then
    begin
      c10.Picture.LoadFromFile('6.jpg');
    end;
    if c[10] = 7 then
    begin
      c10.Picture.LoadFromFile('7.jpg');
    end;
    if c[10] = 8 then
    begin
      c10.Picture.LoadFromFile('8.jpg');
    end;
    if c[10] = 9 then
    begin
      c10.Picture.LoadFromFile('9.jpg');
    end;
    if c[10] = 10 then
    begin
      c10.Picture.LoadFromFile('10.jpg');

    end;

    randomize;
    for s := low(b) to high(b) do
      b[s] := s;
    Shuffle1(b, high(b), SizeOf(integer));
    for s := 1 to high(b) - 1 do
    begin
      d[1] := b[1];
      d[2] := b[2];
      d[3] := b[3];
      d[4] := b[4];
      d[5] := b[5];
      d[6] := b[6];
      d[7] := b[7];
      d[8] := b[8];
      d[9] := b[9];
      d[10] := b[10];
    end;
    if d[1] = 1 then
    begin
      d1.Picture.LoadFromFile('1.jpg');
    end;
    if d[1] = 2 then
    begin
      d1.Picture.LoadFromFile('2.jpg');
    end;
    if d[1] = 3 then
    begin
      d1.Picture.LoadFromFile('3.jpg');
    end;
    if d[1] = 4 then
    begin
      d1.Picture.LoadFromFile('4.jpg');
    end;
    if d[1] = 5 then
    begin
      d1.Picture.LoadFromFile('5.jpg');
    end;
    if d[1] = 6 then
    begin
      d1.Picture.LoadFromFile('6.jpg');
    end;
    if d[1] = 7 then
    begin
      d1.Picture.LoadFromFile('7.jpg');
    end;
    if d[1] = 8 then
    begin
      d1.Picture.LoadFromFile('8.jpg');
    end;
    if d[1] = 9 then
    begin
      d1.Picture.LoadFromFile('9.jpg');
    end;
    if d[1] = 10 then
    begin
      d1.Picture.LoadFromFile('10.jpg');
    end;

    if d[2] = 1 then
    begin
      d2.Picture.LoadFromFile('1.jpg');
    end;
    if d[2] = 2 then
    begin
      d2.Picture.LoadFromFile('2.jpg');
    end;
    if d[2] = 3 then
    begin
      d2.Picture.LoadFromFile('3.jpg');
    end;
    if d[2] = 4 then
    begin
      d2.Picture.LoadFromFile('4.jpg');
    end;
    if d[2] = 5 then
    begin
      d2.Picture.LoadFromFile('5.jpg');
    end;
    if d[2] = 6 then
    begin
      d2.Picture.LoadFromFile('6.jpg');
    end;
    if d[2] = 7 then
    begin
      d2.Picture.LoadFromFile('7.jpg');
    end;
    if d[2] = 8 then
    begin
      d2.Picture.LoadFromFile('8.jpg');
    end;
    if d[2] = 9 then
    begin
      d2.Picture.LoadFromFile('9.jpg');
    end;
    if d[2] = 10 then
    begin
      d2.Picture.LoadFromFile('10.jpg');
    end;

    if d[3] = 1 then
    begin
      d3.Picture.LoadFromFile('1.jpg');
    end;
    if d[3] = 2 then
    begin
      d3.Picture.LoadFromFile('2.jpg');
    end;
    if d[3] = 3 then
    begin
      d3.Picture.LoadFromFile('3.jpg');
    end;
    if d[3] = 4 then
    begin
      d3.Picture.LoadFromFile('4.jpg');
    end;
    if d[3] = 5 then
    begin
      d3.Picture.LoadFromFile('5.jpg');
    end;
    if d[3] = 6 then
    begin
      d3.Picture.LoadFromFile('6.jpg');
    end;
    if d[3] = 7 then
    begin
      d3.Picture.LoadFromFile('7.jpg');
    end;
    if d[3] = 8 then
    begin
      d3.Picture.LoadFromFile('8.jpg');
    end;
    if d[3] = 9 then
    begin
      d3.Picture.LoadFromFile('9.jpg');
    end;
    if d[3] = 10 then
    begin
      d3.Picture.LoadFromFile('10.jpg');
    end;
    if d[4] = 1 then
    begin
      d4.Picture.LoadFromFile('1.jpg');
    end;
    if d[4] = 2 then
    begin
      d4.Picture.LoadFromFile('2.jpg');
    end;
    if d[4] = 3 then
    begin
      d4.Picture.LoadFromFile('3.jpg');
    end;
    if d[4] = 4 then
    begin
      d4.Picture.LoadFromFile('4.jpg');
    end;
    if d[4] = 5 then
    begin
      d4.Picture.LoadFromFile('5.jpg');
    end;
    if d[4] = 6 then
    begin
      d4.Picture.LoadFromFile('6.jpg');
    end;
    if d[4] = 7 then
    begin
      d4.Picture.LoadFromFile('7.jpg');
    end;
    if d[4] = 8 then
    begin
      d4.Picture.LoadFromFile('8.jpg');
    end;
    if d[4] = 9 then
    begin
      d4.Picture.LoadFromFile('9.jpg');
    end;
    if d[4] = 10 then
    begin
      d4.Picture.LoadFromFile('10.jpg');
    end;

    if d[5] = 1 then
    begin
      d5.Picture.LoadFromFile('1.jpg');
    end;
    if d[5] = 2 then
    begin
      d5.Picture.LoadFromFile('2.jpg');
    end;
    if d[5] = 3 then
    begin
      d5.Picture.LoadFromFile('3.jpg');
    end;
    if d[5] = 4 then
    begin
      d5.Picture.LoadFromFile('4.jpg');
    end;
    if d[5] = 5 then
    begin
      d5.Picture.LoadFromFile('5.jpg');
    end;
    if d[5] = 6 then
    begin
      d5.Picture.LoadFromFile('6.jpg');
    end;
    if d[5] = 7 then
    begin
      d5.Picture.LoadFromFile('7.jpg');
    end;
    if d[5] = 8 then
    begin
      d5.Picture.LoadFromFile('8.jpg');
    end;
    if d[5] = 9 then
    begin
      d5.Picture.LoadFromFile('9.jpg');
    end;
    if d[5] = 10 then
    begin
      d5.Picture.LoadFromFile('10.jpg');
    end;

    if d[6] = 1 then
    begin
      d6.Picture.LoadFromFile('1.jpg');
    end;
    if d[6] = 2 then
    begin
      d6.Picture.LoadFromFile('2.jpg');
    end;
    if d[6] = 3 then
    begin
      d6.Picture.LoadFromFile('3.jpg');
    end;
    if d[6] = 4 then
    begin
      d6.Picture.LoadFromFile('4.jpg');
    end;
    if d[6] = 5 then
    begin
      d6.Picture.LoadFromFile('5.jpg');
    end;
    if d[6] = 6 then
    begin
      d6.Picture.LoadFromFile('6.jpg');
    end;
    if d[6] = 7 then
    begin
      d6.Picture.LoadFromFile('7.jpg');
    end;
    if d[6] = 8 then
    begin
      d6.Picture.LoadFromFile('8.jpg');
    end;
    if d[6] = 9 then
    begin
      d6.Picture.LoadFromFile('9.jpg');
    end;
    if d[6] = 10 then
    begin
      d6.Picture.LoadFromFile('10.jpg');
    end;
    if d[7] = 1 then
    begin
      d7.Picture.LoadFromFile('1.jpg');
    end;
    if d[7] = 2 then
    begin
      d7.Picture.LoadFromFile('2.jpg');
    end;
    if d[7] = 3 then
    begin
      d7.Picture.LoadFromFile('3.jpg');
    end;
    if d[7] = 4 then
    begin
      d7.Picture.LoadFromFile('4.jpg');
    end;
    if d[7] = 5 then
    begin
      d7.Picture.LoadFromFile('5.jpg');
    end;
    if d[7] = 6 then
    begin
      d7.Picture.LoadFromFile('6.jpg');
    end;
    if d[7] = 7 then
    begin
      d7.Picture.LoadFromFile('7.jpg');
    end;
    if d[7] = 8 then
    begin
      d7.Picture.LoadFromFile('8.jpg');
    end;
    if d[7] = 9 then
    begin
      d7.Picture.LoadFromFile('9.jpg');
    end;
    if d[7] = 10 then
    begin
      d7.Picture.LoadFromFile('10.jpg');
    end;

    if d[8] = 1 then
    begin
      d8.Picture.LoadFromFile('1.jpg');
    end;
    if d[8] = 2 then
    begin
      d8.Picture.LoadFromFile('2.jpg');
    end;
    if d[8] = 3 then
    begin
      d8.Picture.LoadFromFile('3.jpg');
    end;
    if d[8] = 4 then
    begin
      d8.Picture.LoadFromFile('4.jpg');
    end;
    if d[8] = 5 then
    begin
      d8.Picture.LoadFromFile('5.jpg');
    end;
    if d[8] = 6 then
    begin
      d8.Picture.LoadFromFile('6.jpg');
    end;
    if d[8] = 7 then
    begin
      d8.Picture.LoadFromFile('7.jpg');
    end;
    if d[8] = 8 then
    begin
      d8.Picture.LoadFromFile('8.jpg');
    end;
    if d[8] = 9 then
    begin
      d8.Picture.LoadFromFile('9.jpg');
    end;
    if d[8] = 10 then
    begin
      d8.Picture.LoadFromFile('10.jpg');
    end;

    if d[9] = 1 then
    begin
      d9.Picture.LoadFromFile('1.jpg');
    end;
    if d[9] = 2 then
    begin
      d9.Picture.LoadFromFile('2.jpg');
    end;
    if d[9] = 3 then
    begin
      d9.Picture.LoadFromFile('3.jpg');
    end;
    if d[9] = 4 then
    begin
      d9.Picture.LoadFromFile('4.jpg');
    end;
    if d[9] = 5 then
    begin
      d9.Picture.LoadFromFile('5.jpg');
    end;
    if d[9] = 6 then
    begin
      d9.Picture.LoadFromFile('6.jpg');
    end;
    if d[9] = 7 then
    begin
      d9.Picture.LoadFromFile('7.jpg');
    end;
    if d[9] = 8 then
    begin
      d9.Picture.LoadFromFile('8.jpg');
    end;
    if d[9] = 9 then
    begin
      d9.Picture.LoadFromFile('9.jpg');
    end;
    if d[9] = 10 then
    begin
      d9.Picture.LoadFromFile('10.jpg');
    end;
    if d[10] = 1 then
    begin
      d10.Picture.LoadFromFile('1.jpg');
    end;
    if d[10] = 2 then
    begin
      d10.Picture.LoadFromFile('2.jpg');
    end;
    if d[10] = 3 then
    begin
      d10.Picture.LoadFromFile('3.jpg');
    end;
    if d[10] = 4 then
    begin
      d10.Picture.LoadFromFile('4.jpg');
    end;
    if d[10] = 5 then
    begin
      d10.Picture.LoadFromFile('5.jpg');
    end;
    if d[10] = 6 then
    begin
      d10.Picture.LoadFromFile('6.jpg');
    end;
    if d[10] = 7 then
    begin
      d10.Picture.LoadFromFile('7.jpg');
    end;
    if d[10] = 8 then
    begin
      d10.Picture.LoadFromFile('8.jpg');
    end;
    if d[10] = 9 then
    begin
      d10.Picture.LoadFromFile('9.jpg');
    end;
    if d[10] = 10 then
    begin
      d10.Picture.LoadFromFile('10.jpg');
    end;

  end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  points := 0;
  pairsmatched := 0;
end;

procedure TForm4.img10Click(Sender: TObject);
begin
  c10.Visible := true;
  if (c10.Visible = true) and (d1.Visible = true) then
  begin
    if c[10] = d[1] then
    begin
      showmessage('Cards Match');
      img10.Visible := false;
      img11.Visible := false;
      c10.Visible := false;
      d1.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c10.Visible := false;
    d1.Visible := false;
  end;
  if (c10.Visible = true) and (d2.Visible = true) then
  begin
    if c[10] = d[2] then
    begin
      showmessage('Cards Match');
      img10.Visible := false;
      img12.Visible := false;
      c10.Visible := false;
      d2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c10.Visible := false;
    d2.Visible := false;
  end;
  if (c10.Visible = true) and (d3.Visible = true) then
  begin
    if c[10] = d[3] then
    begin
      showmessage('Cards Match');
      img10.Visible := false;
      img13.Visible := false;
      c10.Visible := false;
      d3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c10.Visible := false;
    d3.Visible := false;
  end;
  if (c10.Visible = true) and (d4.Visible = true) then
  begin
    if c[10] = d[4] then
    begin
      showmessage('Cards Match');
      img10.Visible := false;
      img14.Visible := false;
      c10.Visible := false;
      d4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c10.Visible := false;
    d4.Visible := false;
  end;
  if (c10.Visible = true) and (d5.Visible = true) then
  begin
    if c[10] = d[5] then
    begin
      showmessage('Cards Match');
      img10.Visible := false;
      img15.Visible := false;
      c10.Visible := false;
      d5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c10.Visible := false;
    d5.Visible := false;
  end;
  if (c10.Visible = true) and (d6.Visible = true) then
  begin
    if c[10] = d[6] then
    begin
      showmessage('Cards Match');
      img10.Visible := false;
      img16.Visible := false;
      c10.Visible := false;
      d6.Visible := false;
    end
    else
      showmessage('No Match');
    c10.Visible := false;
    d6.Visible := false;
    Inc(points);
    Inc(pairsmatched);
  end;
  if (c10.Visible = true) and (d7.Visible = true) then
  begin
    if c[10] = d[7] then
    begin
      showmessage('Cards Match');
      img10.Visible := false;
      img17.Visible := false;
      c10.Visible := false;
      d7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c10.Visible := false;
    d7.Visible := false;
  end;
  if (c10.Visible = true) and (d8.Visible = true) then
  begin
    if c[10] = d[2] then
    begin
      showmessage('Cards Match');
      img10.Visible := false;
      img18.Visible := false;
      c10.Visible := false;
      d8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c10.Visible := false;
    d8.Visible := false;
  end;
  if (c10.Visible = true) and (d9.Visible = true) then
  begin
    if c[10] = d[9] then
    begin
      showmessage('Cards Match');
      img10.Visible := false;
      img19.Visible := false;
      c10.Visible := false;
      d9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c10.Visible := false;
    d9.Visible := false;
  end;
  if (c10.Visible = true) and (d10.Visible = true) then
  begin
    if c[10] = d[10] then
    begin
      showmessage('Cards Match');
      img10.Visible := false;
      img20.Visible := false;
      c10.Visible := false;
      d10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c10.Visible := false;
    d10.Visible := false;
  end
  else if (c10.Visible = true) and (c1.Visible = true) then
  begin
    showmessage('No Match');
    c1.Visible := false;
    c10.Visible := false;
  end
  else if (c10.Visible = true) and (c2.Visible = true) then
  begin
    showmessage('No Match');
    c2.Visible := false;
    c10.Visible := false;
  end
  else if (c10.Visible = true) and (c3.Visible = true) then
  begin
    showmessage('No Match');
    c3.Visible := false;
    c10.Visible := false;
  end
  else if (c10.Visible = true) and (c4.Visible = true) then
  begin
    showmessage('No Match');
    c4.Visible := false;
    c10.Visible := false;
  end
  else if (c10.Visible = true) and (c5.Visible = true) then
  begin
    showmessage('No Match');
    c5.Visible := false;
    c10.Visible := false;
  end
  else if (c10.Visible = true) and (c6.Visible = true) then
  begin
    showmessage('No Match');
    c6.Visible := false;
    c10.Visible := false;
  end
  else if (c10.Visible = true) and (c7.Visible = true) then
  begin
    showmessage('No Match');
    c7.Visible := false;
    c10.Visible := false;
  end
  else if (c10.Visible = true) and (c8.Visible = true) then
  begin
    showmessage('No Match');
    c8.Visible := false;
    c10.Visible := false;
  end
  else if (c10.Visible = true) and (c9.Visible = true) then
  begin
    showmessage('No Match');
    c1.Visible := false;
    c10.Visible := false;
  end;
end;

procedure TForm4.img11Click(Sender: TObject);
begin
  d1.Visible := true;
  if (c1.Visible = true) and (d1.Visible = true) then
  begin
    if d[1] = c[1] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img11.Visible := false;
      c1.Visible := false;
      d1.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d1.Visible := false;
  end;
  if (d1.Visible = true) and (c2.Visible = true) then
  begin
    if d[1] = c[2] then
    begin
      showmessage('Cards Match');
      img11.Visible := false;
      img2.Visible := false;
      d1.Visible := false;
      c2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d1.Visible := false;
    c2.Visible := false;
  end;
  if (d1.Visible = true) and (c3.Visible = true) then
  begin
    if d[1] = c[3] then
    begin
      showmessage('Cards Match');
      img11.Visible := false;
      img3.Visible := false;
      d1.Visible := false;
      c3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d1.Visible := false;
    c3.Visible := false;
  end;
  if (d1.Visible = true) and (c4.Visible = true) then
  begin
    if d[1] = c[4] then
    begin
      showmessage('Cards Match');
      img11.Visible := false;
      img4.Visible := false;
      d1.Visible := false;
      c4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d1.Visible := false;
    c4.Visible := false;
  end;
  if (d1.Visible = true) and (c5.Visible = true) then
  begin
    if d[1] = c[5] then
    begin
      showmessage('Cards Match');
      img11.Visible := false;
      img5.Visible := false;
      d1.Visible := false;
      c5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d1.Visible := false;
    c5.Visible := false;
  end;
  if (d1.Visible = true) and (c6.Visible = true) then
  begin
    if d[1] = c[6] then
    begin
      showmessage('Cards Match');
      img11.Visible := false;
      img6.Visible := false;
      d1.Visible := false;
      c6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d1.Visible := false;
    c6.Visible := false;
  end;
  if (d1.Visible = true) and (c7.Visible = true) then
  begin
    if d[1] = c[7] then
    begin
      showmessage('Cards Match');
      img11.Visible := false;
      img7.Visible := false;
      c1.Visible := false;
      d7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d1.Visible := false;
    c7.Visible := false;
  end;
  if (d1.Visible = true) and (c8.Visible = true) then
  begin
    if d[1] = c[8] then
    begin
      showmessage('Cards Match');
      img11.Visible := false;
      img8.Visible := false;
      d1.Visible := false;
      c8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d1.Visible := false;
    c8.Visible := false;
  end;
  if (d1.Visible = true) and (c9.Visible = true) then
  begin
    if d[1] = c[9] then
    begin
      showmessage('Cards Match');
      img11.Visible := false;
      img9.Visible := false;
      d1.Visible := false;
      c9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d1.Visible := false;
    c9.Visible := false;
  end;
  if (d1.Visible = true) and (c10.Visible = true) then
  begin
    if d[1] = c[10] then
    begin
      showmessage('Cards Match');
      img11.Visible := false;
      img10.Visible := false;
      d1.Visible := false;
      c10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d1.Visible := false;
    c10.Visible := false;
  end;
  if (d10.Visible = true) and (d1.Visible = true) then
  begin
    showmessage('No Match');
    d1.Visible := false;
    d10.Visible := false;
  end
  else if (d1.Visible = true) and (d2.Visible = true) then
  begin
    showmessage('No Match');
    d2.Visible := false;
    d1.Visible := false;
  end
  else if (d1.Visible = true) and (d3.Visible = true) then
  begin
    showmessage('No Match');
    d3.Visible := false;
    d1.Visible := false;
  end
  else if (d1.Visible = true) and (d4.Visible = true) then
  begin
    showmessage('No Match');
    d4.Visible := false;
    d1.Visible := false;
  end
  else if (d1.Visible = true) and (d5.Visible = true) then
  begin
    showmessage('No Match');
    d5.Visible := false;
    d1.Visible := false;
  end
  else if (d1.Visible = true) and (d6.Visible = true) then
  begin
    showmessage('No Match');
    d6.Visible := false;
    d1.Visible := false;
  end
  else if (d1.Visible = true) and (d7.Visible = true) then
  begin
    showmessage('No Match');
    d7.Visible := false;
    d1.Visible := false;
  end
  else if (d1.Visible = true) and (d8.Visible = true) then
  begin
    showmessage('No Match');
    d8.Visible := false;
    d1.Visible := false;
  end
  else if (d1.Visible = true) and (d9.Visible = true) then
  begin
    showmessage('No Match');
    d1.Visible := false;
    d9.Visible := false;
  end;
end;

procedure TForm4.img12Click(Sender: TObject);
begin
  d2.Visible := true;
  if (c1.Visible = true) and (d2.Visible = true) then
  begin
    if d[2] = c[1] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img12.Visible := false;
      c1.Visible := false;
      d2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d2.Visible := false;
  end;
  if (d2.Visible = true) and (c2.Visible = true) then
  begin
    if d[2] = c[2] then
    begin
      showmessage('Cards Match');
      img12.Visible := false;
      img2.Visible := false;
      d2.Visible := false;
      c2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d2.Visible := false;
    c2.Visible := false;
  end;
  if (d2.Visible = true) and (c3.Visible = true) then
  begin
    if d[2] = c[3] then
    begin
      showmessage('Cards Match');
      img12.Visible := false;
      img3.Visible := false;
      d2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
      c3.Visible := false;
    end
    else
      showmessage('No Match');
    d2.Visible := false;
    c3.Visible := false;
  end;
  if (d2.Visible = true) and (c4.Visible = true) then
  begin
    if d[2] = c[4] then
    begin
      showmessage('Cards Match');
      img12.Visible := false;
      img4.Visible := false;
      d2.Visible := false;
      c4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d2.Visible := false;
    c4.Visible := false;
  end;
  if (d2.Visible = true) and (c5.Visible = true) then
  begin
    if d[2] = c[5] then
    begin
      showmessage('Cards Match');
      img12.Visible := false;
      img5.Visible := false;
      d2.Visible := false;
      c5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d2.Visible := false;
    c5.Visible := false;
  end;
  if (d2.Visible = true) and (c6.Visible = true) then
  begin
    if d[2] = c[6] then
    begin
      showmessage('Cards Match');
      img12.Visible := false;
      img6.Visible := false;
      d2.Visible := false;
      c6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d2.Visible := false;
    c6.Visible := false;
  end;
  if (d2.Visible = true) and (c7.Visible = true) then
  begin
    if d[2] = c[7] then
    begin
      showmessage('Cards Match');
      img12.Visible := false;
      img7.Visible := false;
      d2.Visible := false;
      c7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d2.Visible := false;
    c7.Visible := false;
  end;
  if (d2.Visible = true) and (c8.Visible = true) then
  begin
    if d[2] = c[8] then
    begin
      showmessage('Cards Match');
      img12.Visible := false;
      img8.Visible := false;
      d2.Visible := false;
      c8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d2.Visible := false;
    c8.Visible := false;
  end;
  if (d2.Visible = true) and (c9.Visible = true) then
  begin
    if d[2] = c[9] then
    begin
      showmessage('Cards Match');
      img12.Visible := false;
      img9.Visible := false;
      d2.Visible := false;
      c9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d2.Visible := false;
    c9.Visible := false;
  end;
  if (d2.Visible = true) and (c10.Visible = true) then
  begin
    if d[2] = c[10] then
    begin
      showmessage('Cards Match');
      img12.Visible := false;
      img10.Visible := false;
      d2.Visible := false;
      c10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d2.Visible := false;
    c10.Visible := false;
  end;
  if (d10.Visible = true) and (d2.Visible = true) then
  begin
    showmessage('No Match');
    d2.Visible := false;
    d10.Visible := false;
  end
  else if (d1.Visible = true) and (d2.Visible = true) then
  begin
    showmessage('No Match');
    d2.Visible := false;
    d1.Visible := false;
  end
  else if (d2.Visible = true) and (d3.Visible = true) then
  begin
    showmessage('No Match');
    d3.Visible := false;
    d2.Visible := false;
  end
  else if (d2.Visible = true) and (d4.Visible = true) then
  begin
    showmessage('No Match');
    d4.Visible := false;
    d2.Visible := false;
  end
  else if (d2.Visible = true) and (d5.Visible = true) then
  begin
    showmessage('No Match');
    d5.Visible := false;
    d2.Visible := false;
  end
  else if (d2.Visible = true) and (d6.Visible = true) then
  begin
    showmessage('No Match');
    d6.Visible := false;
    d2.Visible := false;
  end
  else if (d2.Visible = true) and (d7.Visible = true) then
  begin
    showmessage('No Match');
    d7.Visible := false;
    d2.Visible := false;
  end
  else if (d2.Visible = true) and (d8.Visible = true) then
  begin
    showmessage('No Match');
    d8.Visible := false;
    d2.Visible := false;
  end
  else if (d2.Visible = true) and (d9.Visible = true) then
  begin
    showmessage('No Match');
    d2.Visible := false;
    d9.Visible := false;
  end;

end;

procedure TForm4.img13Click(Sender: TObject);
begin
  d3.Visible := true;
  if (c1.Visible = true) and (d3.Visible = true) then
  begin
    if d[3] = c[1] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img13.Visible := false;
      c1.Visible := false;
      d3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d3.Visible := false;
  end;
  if (d3.Visible = true) and (c2.Visible = true) then
  begin
    if d[3] = c[2] then
    begin
      showmessage('Cards Match');
      img13.Visible := false;
      img2.Visible := false;
      d3.Visible := false;
      c2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d3.Visible := false;
    c2.Visible := false;
  end;
  if (d3.Visible = true) and (c3.Visible = true) then
  begin
    if d[3] = c[3] then
    begin
      showmessage('Cards Match');
      img13.Visible := false;
      img3.Visible := false;
      d3.Visible := false;
      c3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d3.Visible := false;
    c3.Visible := false;
  end;
  if (d3.Visible = true) and (c4.Visible = true) then
  begin
    if d[3] = c[4] then
    begin
      showmessage('Cards Match');
      img13.Visible := false;
      img4.Visible := false;
      d3.Visible := false;
      c4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d3.Visible := false;
    c4.Visible := false;
  end;
  if (d3.Visible = true) and (c5.Visible = true) then
  begin
    if d[3] = c[5] then
    begin
      showmessage('Cards Match');
      img13.Visible := false;
      img5.Visible := false;
      d3.Visible := false;
      c5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d3.Visible := false;
    c5.Visible := false;
  end;
  if (d3.Visible = true) and (c6.Visible = true) then
  begin
    if d[3] = c[6] then
    begin
      showmessage('Cards Match');
      img13.Visible := false;
      img6.Visible := false;
      d3.Visible := false;
      c6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d3.Visible := false;
    c6.Visible := false;
  end;
  if (d3.Visible = true) and (c7.Visible = true) then
  begin
    if d[3] = c[7] then
    begin
      showmessage('Cards Match');
      img13.Visible := false;
      img7.Visible := false;
      d3.Visible := false;
      c7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d3.Visible := false;
    c7.Visible := false;
  end;
  if (d3.Visible = true) and (c8.Visible = true) then
  begin
    if d[3] = c[8] then
    begin
      showmessage('Cards Match');
      img13.Visible := false;
      img8.Visible := false;
      d3.Visible := false;
      c8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d3.Visible := false;
    c8.Visible := false;
  end;
  if (d3.Visible = true) and (c9.Visible = true) then
  begin
    if d[3] = c[9] then
    begin
      showmessage('Cards Match');
      img13.Visible := false;
      img9.Visible := false;
      d3.Visible := false;
      c9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d3.Visible := false;
    c9.Visible := false;
  end;
  if (d3.Visible = true) and (c10.Visible = true) then
  begin
    if d[3] = c[10] then
    begin
      showmessage('Cards Match');
      img13.Visible := false;
      img10.Visible := false;
      d3.Visible := false;
      c10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d3.Visible := false;
    c10.Visible := false;
  end;
  if (d10.Visible = true) and (d3.Visible = true) then
  begin
    showmessage('No Match');
    d3.Visible := false;
    d10.Visible := false;
  end
  else if (d3.Visible = true) and (d2.Visible = true) then
  begin
    showmessage('No Match');
    d2.Visible := false;
    d3.Visible := false;
  end
  else if (d1.Visible = true) and (d3.Visible = true) then
  begin
    showmessage('No Match');
    d1.Visible := false;
    d3.Visible := false;
  end
  else if (d3.Visible = true) and (d4.Visible = true) then
  begin
    showmessage('No Match');
    d4.Visible := false;
    d3.Visible := false;
  end
  else if (d3.Visible = true) and (d5.Visible = true) then
  begin
    showmessage('No Match');
    d5.Visible := false;
    d3.Visible := false;
  end
  else if (d3.Visible = true) and (d6.Visible = true) then
  begin
    showmessage('No Match');
    d6.Visible := false;
    d3.Visible := false;
  end
  else if (d3.Visible = true) and (d7.Visible = true) then
  begin
    showmessage('No Match');
    d7.Visible := false;
    d3.Visible := false;
  end
  else if (d3.Visible = true) and (d8.Visible = true) then
  begin
    showmessage('No Match');
    d8.Visible := false;
    d3.Visible := false;
  end
  else if (d3.Visible = true) and (d9.Visible = true) then
  begin
    showmessage('No Match');
    d3.Visible := false;
    d9.Visible := false;
  end;

end;

procedure TForm4.img14Click(Sender: TObject);
begin
  d4.Visible := true;
  if (c1.Visible = true) and (d4.Visible = true) then
  begin
    if d[4] = c[1] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img14.Visible := false;
      c1.Visible := false;
      d4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d4.Visible := false;
  end;
  if (d4.Visible = true) and (c2.Visible = true) then
  begin
    if d[4] = c[2] then
    begin
      showmessage('Cards Match');
      img14.Visible := false;
      img2.Visible := false;
      d4.Visible := false;
      c2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d4.Visible := false;
    c2.Visible := false;
  end;
  if (d4.Visible = true) and (c3.Visible = true) then
  begin
    if d[4] = c[3] then
    begin
      showmessage('Cards Match');
      img14.Visible := false;
      img3.Visible := false;
      d4.Visible := false;
      c3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d4.Visible := false;
    c3.Visible := false;
  end;
  if (d4.Visible = true) and (c4.Visible = true) then
  begin
    if d[4] = c[4] then
    begin
      showmessage('Cards Match');
      img14.Visible := false;
      img4.Visible := false;
      d4.Visible := false;
      c4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d4.Visible := false;
    c4.Visible := false;
  end;
  if (d4.Visible = true) and (c5.Visible = true) then
  begin
    if d[4] = c[5] then
    begin
      showmessage('Cards Match');
      img14.Visible := false;
      img5.Visible := false;
      d4.Visible := false;
      c5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d4.Visible := false;
    c5.Visible := false;
  end;
  if (d4.Visible = true) and (c6.Visible = true) then
  begin
    if d[4] = c[6] then
    begin
      showmessage('Cards Match');
      img14.Visible := false;
      img6.Visible := false;
      d4.Visible := false;
      c6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d4.Visible := false;
    c6.Visible := false;
  end;
  if (d4.Visible = true) and (c7.Visible = true) then
  begin
    if d[4] = c[7] then
    begin
      showmessage('Cards Match');
      img14.Visible := false;
      img7.Visible := false;
      d4.Visible := false;
      c7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d4.Visible := false;
    c7.Visible := false;
  end;
  if (d4.Visible = true) and (c8.Visible = true) then
  begin
    if d[4] = c[8] then
    begin
      showmessage('Cards Match');
      img14.Visible := false;
      img8.Visible := false;
      d4.Visible := false;
      c8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d4.Visible := false;
    c8.Visible := false;
  end;
  if (d4.Visible = true) and (c9.Visible = true) then
  begin
    if d[4] = c[9] then
    begin
      showmessage('Cards Match');
      img14.Visible := false;
      img9.Visible := false;
      d4.Visible := false;
      c9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d4.Visible := false;
    c9.Visible := false;
  end;
  if (d4.Visible = true) and (c10.Visible = true) then
  begin
    if d[4] = c[10] then
    begin
      showmessage('Cards Match');
      img14.Visible := false;
      img10.Visible := false;
      d4.Visible := false;
      c10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d4.Visible := false;
    c10.Visible := false;
  end;
  if (d10.Visible = true) and (d4.Visible = true) then
  begin
    showmessage('No Match');
    d4.Visible := false;
    d10.Visible := false;
  end
  else if (d4.Visible = true) and (d2.Visible = true) then
  begin
    showmessage('No Match');
    d2.Visible := false;
    d4.Visible := false;
  end
  else if (d4.Visible = true) and (d3.Visible = true) then
  begin
    showmessage('No Match');
    d3.Visible := false;
    d4.Visible := false;
  end
  else if (d1.Visible = true) and (d4.Visible = true) then
  begin
    showmessage('No Match');
    d1.Visible := false;
    d4.Visible := false;
  end
  else if (d4.Visible = true) and (d5.Visible = true) then
  begin
    showmessage('No Match');
    d5.Visible := false;
    d4.Visible := false;
  end
  else if (d4.Visible = true) and (d6.Visible = true) then
  begin
    showmessage('No Match');
    d6.Visible := false;
    d4.Visible := false;
  end
  else if (d4.Visible = true) and (d7.Visible = true) then
  begin
    showmessage('No Match');
    d7.Visible := false;
    d4.Visible := false;
  end
  else if (d4.Visible = true) and (d8.Visible = true) then
  begin
    showmessage('No Match');
    d8.Visible := false;
    d4.Visible := false;
  end
  else if (d4.Visible = true) and (d9.Visible = true) then
  begin
    showmessage('No Match');
    d4.Visible := false;
    d9.Visible := false;
  end;

end;

procedure TForm4.img15Click(Sender: TObject);
begin
  d5.Visible := true;
  if (c1.Visible = true) and (d5.Visible = true) then
  begin
    if d[5] = c[1] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img15.Visible := false;
      c1.Visible := false;
      d5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d5.Visible := false;
  end;
  if (d5.Visible = true) and (c2.Visible = true) then
  begin
    if d[5] = c[2] then
    begin
      showmessage('Cards Match');
      img15.Visible := false;
      img2.Visible := false;
      d5.Visible := false;
      c2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d5.Visible := false;
    c2.Visible := false;
  end;
  if (d5.Visible = true) and (c3.Visible = true) then
  begin
    if d[5] = c[3] then
    begin
      showmessage('Cards Match');
      img15.Visible := false;
      img3.Visible := false;
      d5.Visible := false;
      c3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d5.Visible := false;
    c3.Visible := false;
  end;
  if (d5.Visible = true) and (c4.Visible = true) then
  begin
    if d[5] = c[4] then
    begin
      showmessage('Cards Match');
      img15.Visible := false;
      img4.Visible := false;
      d5.Visible := false;
      c4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d5.Visible := false;
    c4.Visible := false;
  end;
  if (d5.Visible = true) and (c5.Visible = true) then
  begin
    if d[5] = c[5] then
    begin
      showmessage('Cards Match');
      img15.Visible := false;
      img5.Visible := false;
      d5.Visible := false;
      c5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d5.Visible := false;
    c5.Visible := false;
  end;
  if (d5.Visible = true) and (c6.Visible = true) then
  begin
    if d[5] = c[6] then
    begin
      showmessage('Cards Match');
      img15.Visible := false;
      img6.Visible := false;
      d5.Visible := false;
      c6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d5.Visible := false;
    c6.Visible := false;
  end;
  if (d5.Visible = true) and (c7.Visible = true) then
  begin
    if d[5] = c[7] then
    begin
      showmessage('Cards Match');
      img15.Visible := false;
      img7.Visible := false;
      d5.Visible := false;
      c7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d5.Visible := false;
    c7.Visible := false;
  end;
  if (d5.Visible = true) and (c8.Visible = true) then
  begin
    if d[5] = c[8] then
    begin
      showmessage('Cards Match');
      img15.Visible := false;
      img8.Visible := false;
      d5.Visible := false;
      c8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d5.Visible := false;
    c8.Visible := false;
  end;
  if (d5.Visible = true) and (c9.Visible = true) then
  begin
    if d[5] = c[9] then
    begin
      showmessage('Cards Match');
      img15.Visible := false;
      img9.Visible := false;
      d5.Visible := false;
      c9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d5.Visible := false;
    c9.Visible := false;
  end;
  if (d5.Visible = true) and (c10.Visible = true) then
  begin
    if d[5] = c[10] then
    begin
      showmessage('Cards Match');
      img15.Visible := false;
      img10.Visible := false;
      d5.Visible := false;
      c10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d5.Visible := false;
    c10.Visible := false;
  end;
  if (d10.Visible = true) and (d5.Visible = true) then
  begin
    showmessage('No Match');
    d5.Visible := false;
    d10.Visible := false;
  end
  else if (d5.Visible = true) and (d2.Visible = true) then
  begin
    showmessage('No Match');
    d2.Visible := false;
    d5.Visible := false;
  end
  else if (d5.Visible = true) and (d3.Visible = true) then
  begin
    showmessage('No Match');
    d3.Visible := false;
    d5.Visible := false;
  end
  else if (d5.Visible = true) and (d4.Visible = true) then
  begin
    showmessage('No Match');
    d4.Visible := false;
    d5.Visible := false;
  end
  else if (d1.Visible = true) and (d5.Visible = true) then
  begin
    showmessage('No Match');
    d1.Visible := false;
    d5.Visible := false;
  end
  else if (d5.Visible = true) and (d6.Visible = true) then
  begin
    showmessage('No Match');
    d6.Visible := false;
    d5.Visible := false;
  end
  else if (d5.Visible = true) and (d7.Visible = true) then
  begin
    showmessage('No Match');
    d7.Visible := false;
    d5.Visible := false;
  end
  else if (d5.Visible = true) and (d8.Visible = true) then
  begin
    showmessage('No Match');
    d8.Visible := false;
    d5.Visible := false;
  end
  else if (d5.Visible = true) and (d9.Visible = true) then
  begin
    showmessage('No Match');
    d5.Visible := false;
    d9.Visible := false;
  end;

end;

procedure TForm4.img16Click(Sender: TObject);
begin
  d6.Visible := true;
  if (c1.Visible = true) and (d6.Visible = true) then
  begin
    if d[6] = c[1] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img16.Visible := false;
      c1.Visible := false;
      d6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d6.Visible := false;
  end;
  if (d6.Visible = true) and (c2.Visible = true) then
  begin
    if d[6] = c[2] then
    begin
      showmessage('Cards Match');
      img16.Visible := false;
      img2.Visible := false;
      d6.Visible := false;
      c2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d6.Visible := false;
    c2.Visible := false;
  end;
  if (d6.Visible = true) and (c3.Visible = true) then
  begin
    if d[6] = c[3] then
    begin
      showmessage('Cards Match');
      img16.Visible := false;
      img3.Visible := false;
      d6.Visible := false;
      c3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d6.Visible := false;
    c3.Visible := false;
  end;
  if (d6.Visible = true) and (c4.Visible = true) then
  begin
    if d[6] = c[4] then
    begin
      showmessage('Cards Match');
      img16.Visible := false;
      img4.Visible := false;
      d6.Visible := false;
      c4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d6.Visible := false;
    c4.Visible := false;
  end;
  if (d6.Visible = true) and (c5.Visible = true) then
  begin
    if d[6] = c[5] then
    begin
      showmessage('Cards Match');
      img16.Visible := false;
      img5.Visible := false;
      d6.Visible := false;
      c5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d6.Visible := false;
    c5.Visible := false;
  end;
  if (d6.Visible = true) and (c6.Visible = true) then
  begin
    if d[6] = c[6] then
    begin
      showmessage('Cards Match');
      img16.Visible := false;
      img6.Visible := false;
      d6.Visible := false;
      c6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d6.Visible := false;
    c6.Visible := false;
  end;
  if (d6.Visible = true) and (c7.Visible = true) then
  begin
    if d[6] = c[7] then
    begin
      showmessage('Cards Match');
      img16.Visible := false;
      img7.Visible := false;
      d6.Visible := false;
      c7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d6.Visible := false;
    c7.Visible := false;
  end;
  if (d6.Visible = true) and (c8.Visible = true) then
  begin
    if d[6] = c[8] then
    begin
      showmessage('Cards Match');
      img16.Visible := false;
      img8.Visible := false;
      d6.Visible := false;
      c8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d6.Visible := false;
    c8.Visible := false;
  end;
  if (d6.Visible = true) and (c9.Visible = true) then
  begin
    if d[6] = c[9] then
    begin
      showmessage('Cards Match');
      img16.Visible := false;
      img9.Visible := false;
      d6.Visible := false;
      c9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d6.Visible := false;
    c9.Visible := false;
  end;
  if (d6.Visible = true) and (c10.Visible = true) then
  begin
    if d[6] = c[10] then
    begin
      showmessage('Cards Match');
      img16.Visible := false;
      img10.Visible := false;
      d6.Visible := false;
      c10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d6.Visible := false;
    c10.Visible := false;
  end;
  if (d10.Visible = true) and (d6.Visible = true) then
  begin
    showmessage('No Match');
    d6.Visible := false;
    d10.Visible := false;
  end
  else if (d6.Visible = true) and (d2.Visible = true) then
  begin
    showmessage('No Match');
    d2.Visible := false;
    d6.Visible := false;
  end
  else if (d6.Visible = true) and (d3.Visible = true) then
  begin
    showmessage('No Match');
    d3.Visible := false;
    d6.Visible := false;
  end
  else if (d6.Visible = true) and (d4.Visible = true) then
  begin
    showmessage('No Match');
    d4.Visible := false;
    d6.Visible := false;
  end
  else if (d6.Visible = true) and (d5.Visible = true) then
  begin
    showmessage('No Match');
    d5.Visible := false;
    d6.Visible := false;
  end
  else if (d1.Visible = true) and (d6.Visible = true) then
  begin
    showmessage('No Match');
    d1.Visible := false;
    d6.Visible := false;
  end
  else if (d6.Visible = true) and (d7.Visible = true) then
  begin
    showmessage('No Match');
    d7.Visible := false;
    d6.Visible := false;
  end
  else if (d6.Visible = true) and (d8.Visible = true) then
  begin
    showmessage('No Match');
    d8.Visible := false;
    d6.Visible := false;
  end
  else if (d6.Visible = true) and (d9.Visible = true) then
  begin
    showmessage('No Match');
    d6.Visible := false;
    d9.Visible := false;
  end;

end;

procedure TForm4.img17Click(Sender: TObject);
begin
  d7.Visible := true;
  if (c1.Visible = true) and (d7.Visible = true) then
  begin
    if d[7] = c[1] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img17.Visible := false;
      c1.Visible := false;
      d7.Visible := false;
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d7.Visible := false;
  end;
  if (d7.Visible = true) and (c2.Visible = true) then
  begin
    if d[7] = c[2] then
    begin
      showmessage('Cards Match');
      img17.Visible := false;
      img2.Visible := false;
      d7.Visible := false;
      c2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d7.Visible := false;
    c2.Visible := false;
  end;
  if (d7.Visible = true) and (c3.Visible = true) then
  begin
    if d[7] = c[3] then
    begin
      showmessage('Cards Match');
      img17.Visible := false;
      img3.Visible := false;
      d7.Visible := false;
      c3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d7.Visible := false;
    c3.Visible := false;
  end;
  if (d7.Visible = true) and (c4.Visible = true) then
  begin
    if d[7] = c[4] then
    begin
      showmessage('Cards Match');
      img17.Visible := false;
      img4.Visible := false;
      d7.Visible := false;
      c4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d7.Visible := false;
    c4.Visible := false;
  end;
  if (d7.Visible = true) and (c5.Visible = true) then
  begin
    if d[7] = c[5] then
    begin
      showmessage('Cards Match');
      img17.Visible := false;
      img5.Visible := false;
      d7.Visible := false;
      c5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d7.Visible := false;
    c5.Visible := false;
  end;
  if (d7.Visible = true) and (c6.Visible = true) then
  begin
    if d[7] = c[6] then
    begin
      showmessage('Cards Match');
      img17.Visible := false;
      img6.Visible := false;
      d7.Visible := false;
      c6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d7.Visible := false;
    c6.Visible := false;
  end;
  if (d7.Visible = true) and (c7.Visible = true) then
  begin
    if d[7] = c[7] then
    begin
      showmessage('Cards Match');
      img17.Visible := false;
      img7.Visible := false;
      d7.Visible := false;
      c7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d7.Visible := false;
    c7.Visible := false;
  end;
  if (d7.Visible = true) and (c8.Visible = true) then
  begin
    if d[7] = c[8] then
    begin
      showmessage('Cards Match');
      img17.Visible := false;
      img8.Visible := false;
      d7.Visible := false;
      c8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d7.Visible := false;
    c8.Visible := false;
  end;
  if (d7.Visible = true) and (c9.Visible = true) then
  begin
    if d[7] = c[9] then
    begin
      showmessage('Cards Match');
      img17.Visible := false;
      img9.Visible := false;
      d7.Visible := false;
      c9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d7.Visible := false;
    c9.Visible := false;
  end;
  if (d7.Visible = true) and (c10.Visible = true) then
  begin
    if d[7] = c[10] then
    begin
      showmessage('Cards Match');
      img17.Visible := false;
      img10.Visible := false;
      d7.Visible := false;
      c10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d7.Visible := false;
    c10.Visible := false;
  end;
  if (d10.Visible = true) and (d7.Visible = true) then
  begin
    showmessage('No Match');
    d7.Visible := false;
    d10.Visible := false;
  end
  else if (d7.Visible = true) and (d2.Visible = true) then
  begin
    showmessage('No Match');
    d2.Visible := false;
    d7.Visible := false;
  end
  else if (d7.Visible = true) and (d3.Visible = true) then
  begin
    showmessage('No Match');
    d3.Visible := false;
    d7.Visible := false;
  end
  else if (d7.Visible = true) and (d4.Visible = true) then
  begin
    showmessage('No Match');
    d4.Visible := false;
    d7.Visible := false;
  end
  else if (d7.Visible = true) and (d5.Visible = true) then
  begin
    showmessage('No Match');
    d5.Visible := false;
    d7.Visible := false;
  end
  else if (d7.Visible = true) and (d6.Visible = true) then
  begin
    showmessage('No Match');
    d6.Visible := false;
    d7.Visible := false;
  end
  else if (d7.Visible = true) and (d1.Visible = true) then
  begin
    showmessage('No Match');
    d1.Visible := false;
    d7.Visible := false;
  end
  else if (d7.Visible = true) and (d8.Visible = true) then
  begin
    showmessage('No Match');
    d8.Visible := false;
    d7.Visible := false;
  end
  else if (d7.Visible = true) and (d9.Visible = true) then
  begin
    showmessage('No Match');
    d7.Visible := false;
    d9.Visible := false;
  end;

end;

procedure TForm4.img18Click(Sender: TObject);
begin
  d8.Visible := true;
  if (c1.Visible = true) and (d8.Visible = true) then
  begin
    if d[8] = c[1] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img18.Visible := false;
      c1.Visible := false;
      d8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d8.Visible := false;
  end;
  if (d8.Visible = true) and (c2.Visible = true) then
  begin
    if d[8] = c[2] then
    begin
      showmessage('Cards Match');
      img18.Visible := false;
      img2.Visible := false;
      d8.Visible := false;
      c2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d8.Visible := false;
    c2.Visible := false;
  end;
  if (d8.Visible = true) and (c3.Visible = true) then
  begin
    if d[8] = c[3] then
    begin
      showmessage('Cards Match');
      img18.Visible := false;
      img3.Visible := false;
      d8.Visible := false;
      c3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d8.Visible := false;
    c3.Visible := false;
  end;
  if (d8.Visible = true) and (c4.Visible = true) then
  begin
    if d[8] = c[4] then
    begin
      showmessage('Cards Match');
      img18.Visible := false;
      img4.Visible := false;
      d8.Visible := false;
      c4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d8.Visible := false;
    c4.Visible := false;
  end;
  if (d8.Visible = true) and (c5.Visible = true) then
  begin
    if d[8] = c[5] then
    begin
      showmessage('Cards Match');
      img18.Visible := false;
      img5.Visible := false;
      d8.Visible := false;
      c5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d8.Visible := false;
    c5.Visible := false;
  end;
  if (d8.Visible = true) and (c6.Visible = true) then
  begin
    if d[8] = c[6] then
    begin
      showmessage('Cards Match');
      img18.Visible := false;
      img6.Visible := false;
      d8.Visible := false;
      c6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d8.Visible := false;
    c6.Visible := false;
  end;
  if (d8.Visible = true) and (c7.Visible = true) then
  begin
    if d[8] = c[7] then
    begin
      showmessage('Cards Match');
      img18.Visible := false;
      img7.Visible := false;
      d8.Visible := false;
      c7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d8.Visible := false;
    c7.Visible := false;
  end;
  if (d8.Visible = true) and (c8.Visible = true) then
  begin
    if d[8] = c[8] then
    begin
      showmessage('Cards Match');
      img18.Visible := false;
      img8.Visible := false;
      d8.Visible := false;
      c8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d8.Visible := false;
    c8.Visible := false;
  end;
  if (d8.Visible = true) and (c9.Visible = true) then
  begin
    if d[8] = c[9] then
    begin
      showmessage('Cards Match');
      img18.Visible := false;
      img9.Visible := false;
      d8.Visible := false;
      c9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d8.Visible := false;
    c9.Visible := false;
  end;
  if (d8.Visible = true) and (c10.Visible = true) then
  begin
    if d[8] = c[10] then
    begin
      showmessage('Cards Match');
      img18.Visible := false;
      img10.Visible := false;
      d8.Visible := false;
      c10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d8.Visible := false;
    c10.Visible := false;
  end;
  if (d10.Visible = true) and (d8.Visible = true) then
  begin
    showmessage('No Match');
    d8.Visible := false;
    d10.Visible := false;
  end
  else if (d8.Visible = true) and (d2.Visible = true) then
  begin
    showmessage('No Match');
    d2.Visible := false;
    d8.Visible := false;
  end
  else if (d8.Visible = true) and (d3.Visible = true) then
  begin
    showmessage('No Match');
    d3.Visible := false;
    d8.Visible := false;
  end
  else if (d8.Visible = true) and (d4.Visible = true) then
  begin
    showmessage('No Match');
    d4.Visible := false;
    d8.Visible := false;
  end
  else if (d8.Visible = true) and (d5.Visible = true) then
  begin
    showmessage('No Match');
    d5.Visible := false;
    d8.Visible := false;
  end
  else if (d8.Visible = true) and (d6.Visible = true) then
  begin
    showmessage('No Match');
    d6.Visible := false;
    d8.Visible := false;
  end
  else if (d8.Visible = true) and (d7.Visible = true) then
  begin
    showmessage('No Match');
    d7.Visible := false;
    d8.Visible := false;
  end
  else if (d1.Visible = true) and (d8.Visible = true) then
  begin
    showmessage('No Match');
    d1.Visible := false;
    d8.Visible := false;
  end
  else if (d8.Visible = true) and (d9.Visible = true) then
  begin
    showmessage('No Match');
    d8.Visible := false;
    d9.Visible := false;
  end;

end;

procedure TForm4.img19Click(Sender: TObject);
begin
  d9.Visible := true;
  if (c1.Visible = true) and (d9.Visible = true) then
  begin
    if d[9] = c[1] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img19.Visible := false;
      c1.Visible := false;
      d9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d9.Visible := false;
  end;
  if (d9.Visible = true) and (c2.Visible = true) then
  begin
    if d[9] = c[2] then
    begin
      showmessage('Cards Match');
      img19.Visible := false;
      img2.Visible := false;
      d9.Visible := false;
      c2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d9.Visible := false;
    c2.Visible := false;
  end;
  if (d9.Visible = true) and (c3.Visible = true) then
  begin
    if d[9] = c[3] then
    begin
      showmessage('Cards Match');
      img19.Visible := false;
      img3.Visible := false;
      d9.Visible := false;
      c3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d9.Visible := false;
    c3.Visible := false;
  end;
  if (d9.Visible = true) and (c4.Visible = true) then
  begin
    if d[9] = c[4] then
    begin
      showmessage('Cards Match');
      img19.Visible := false;
      img4.Visible := false;
      d9.Visible := false;
      c4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d9.Visible := false;
    c4.Visible := false;
  end;
  if (d9.Visible = true) and (c5.Visible = true) then
  begin
    if d[9] = c[5] then
    begin
      showmessage('Cards Match');
      img19.Visible := false;
      img5.Visible := false;
      d9.Visible := false;
      c5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d9.Visible := false;
    c5.Visible := false;
  end;
  if (d9.Visible = true) and (c6.Visible = true) then
  begin
    if d[9] = c[6] then
    begin
      showmessage('Cards Match');
      img19.Visible := false;
      img6.Visible := false;
      d9.Visible := false;
      c6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d9.Visible := false;
    c6.Visible := false;
  end;
  if (d9.Visible = true) and (c7.Visible = true) then
  begin
    if d[9] = c[7] then
    begin
      showmessage('Cards Match');
      img19.Visible := false;
      img7.Visible := false;
      d9.Visible := false;
      c7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d9.Visible := false;
    c7.Visible := false;
  end;
  if (d9.Visible = true) and (c8.Visible = true) then
  begin
    if d[9] = c[8] then
    begin
      showmessage('Cards Match');
      img19.Visible := false;
      img8.Visible := false;
      d9.Visible := false;
      c8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d9.Visible := false;
    c8.Visible := false;
  end;
  if (d9.Visible = true) and (c9.Visible = true) then
  begin
    if d[9] = c[9] then
    begin
      showmessage('Cards Match');
      img19.Visible := false;
      img9.Visible := false;
      d9.Visible := false;
      c9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d9.Visible := false;
    c9.Visible := false;
  end;
  if (d9.Visible = true) and (c10.Visible = true) then
  begin
    if d[9] = c[10] then
    begin
      showmessage('Cards Match');
      img19.Visible := false;
      img10.Visible := false;
      d9.Visible := false;
      c10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d9.Visible := false;
    c10.Visible := false;
  end;
  if (d10.Visible = true) and (d9.Visible = true) then
  begin
    showmessage('No Match');
    d9.Visible := false;
    d10.Visible := false;
  end
  else if (d9.Visible = true) and (d2.Visible = true) then
  begin
    showmessage('No Match');
    d2.Visible := false;
    d9.Visible := false;
  end
  else if (d9.Visible = true) and (d3.Visible = true) then
  begin
    showmessage('No Match');
    d3.Visible := false;
    d9.Visible := false;
  end
  else if (d9.Visible = true) and (d4.Visible = true) then
  begin
    showmessage('No Match');
    d4.Visible := false;
    d9.Visible := false;
  end
  else if (d9.Visible = true) and (d5.Visible = true) then
  begin
    showmessage('No Match');
    d5.Visible := false;
    d9.Visible := false;
  end
  else if (d9.Visible = true) and (d6.Visible = true) then
  begin
    showmessage('No Match');
    d6.Visible := false;
    d9.Visible := false;
  end
  else if (d9.Visible = true) and (d7.Visible = true) then
  begin
    showmessage('No Match');
    d7.Visible := false;
    d9.Visible := false;
  end
  else if (d9.Visible = true) and (d8.Visible = true) then
  begin
    showmessage('No Match');
    d8.Visible := false;
    d9.Visible := false;
  end
  else if (d1.Visible = true) and (d9.Visible = true) then
  begin
    showmessage('No Match');
    d9.Visible := false;
    d1.Visible := false;
  end;

end;

procedure TForm4.img1Click(Sender: TObject);
begin
  c1.Visible := true;
  if (c1.Visible = true) and (d1.Visible = true) then
  begin
    if c[1] = d[1] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img11.Visible := false;
      c1.Visible := false;
      d1.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d1.Visible := false;
  end;
  if (c1.Visible = true) and (d2.Visible = true) then
  begin
    if c[1] = d[2] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img12.Visible := false;
      c1.Visible := false;
      d2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d2.Visible := false;
  end;
  if (c1.Visible = true) and (d3.Visible = true) then
  begin
    if c[1] = d[3] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img13.Visible := false;
      c1.Visible := false;
      d3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d3.Visible := false;
  end;
  if (c1.Visible = true) and (d4.Visible = true) then
  begin
    if c[1] = d[4] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img14.Visible := false;
      c1.Visible := false;
      d4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d4.Visible := false;
  end;
  if (c1.Visible = true) and (d5.Visible = true) then
  begin
    if c[1] = d[5] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img15.Visible := false;
      c1.Visible := false;
      d5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d5.Visible := false;
  end;
  if (c1.Visible = true) and (d6.Visible = true) then
  begin
    if c[1] = d[6] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img16.Visible := false;
      c1.Visible := false;
      d6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d6.Visible := false;
  end;
  if (c1.Visible = true) and (d7.Visible = true) then
  begin
    if c[1] = d[7] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img17.Visible := false;
      c1.Visible := false;
      d7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d7.Visible := false;
  end;
  if (c1.Visible = true) and (d8.Visible = true) then
  begin
    if c[1] = d[2] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img18.Visible := false;
      c1.Visible := false;
      d8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d8.Visible := false;
  end;
  if (c1.Visible = true) and (d9.Visible = true) then
  begin
    if c[1] = d[9] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img19.Visible := false;
      c1.Visible := false;
      d9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d9.Visible := false;
  end;
  if (c1.Visible = true) and (d10.Visible = true) then
  begin
    if c[1] = d[10] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img20.Visible := false;
      c1.Visible := false;
      d10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d10.Visible := false;
  end
  else if (c10.Visible = true) and (c1.Visible = true) then
  begin
    showmessage('No Match');
    c1.Visible := false;
    c10.Visible := false;
  end
  else if (c1.Visible = true) and (c2.Visible = true) then
  begin
    showmessage('No Match');
    c2.Visible := false;
    c1.Visible := false;
  end
  else if (c1.Visible = true) and (c3.Visible = true) then
  begin
    showmessage('No Match');
    c3.Visible := false;
    c1.Visible := false;
  end
  else if (c1.Visible = true) and (c4.Visible = true) then
  begin
    showmessage('No Match');
    c4.Visible := false;
    c1.Visible := false;
  end
  else if (c1.Visible = true) and (c5.Visible = true) then
  begin
    showmessage('No Match');
    c5.Visible := false;
    c1.Visible := false;
  end
  else if (c1.Visible = true) and (c6.Visible = true) then
  begin
    showmessage('No Match');
    c6.Visible := false;
    c1.Visible := false;
  end
  else if (c1.Visible = true) and (c7.Visible = true) then
  begin
    showmessage('No Match');
    c7.Visible := false;
    c1.Visible := false;
  end
  else if (c1.Visible = true) and (c8.Visible = true) then
  begin
    showmessage('No Match');
    c8.Visible := false;
    c1.Visible := false;
  end
  else if (c1.Visible = true) and (c9.Visible = true) then
  begin
    showmessage('No Match');
    c1.Visible := false;
    c9.Visible := false;
  end;
end;

procedure TForm4.img20Click(Sender: TObject);
begin
  d10.Visible := true;
  if (c1.Visible = true) and (d10.Visible = true) then
  begin
    if d[10] = c[1] then
    begin
      showmessage('Cards Match');
      img1.Visible := false;
      img20.Visible := false;
      c1.Visible := false;
      d10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c1.Visible := false;
    d10.Visible := false;
  end;
  if (d10.Visible = true) and (c2.Visible = true) then
  begin
    if d[10] = c[2] then
    begin
      showmessage('Cards Match');
      img20.Visible := false;
      img2.Visible := false;
      d10.Visible := false;
      c2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d10.Visible := false;
    c2.Visible := false;
  end;
  if (d10.Visible = true) and (c3.Visible = true) then
  begin
    if d[10] = c[3] then
    begin
      showmessage('Cards Match');
      img20.Visible := false;
      img3.Visible := false;
      d10.Visible := false;
      c3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d10.Visible := false;
    c3.Visible := false;
  end;
  if (d10.Visible = true) and (c4.Visible = true) then
  begin
    if d[10] = c[4] then
    begin
      showmessage('Cards Match');
      img20.Visible := false;
      img4.Visible := false;
      d10.Visible := false;
      c4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d10.Visible := false;
    c4.Visible := false;
  end;
  if (d10.Visible = true) and (c5.Visible = true) then
  begin
    if d[10] = c[5] then
    begin
      showmessage('Cards Match');
      img20.Visible := false;
      img5.Visible := false;
      d10.Visible := false;
      c5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d10.Visible := false;
    c5.Visible := false;
  end;
  if (d10.Visible = true) and (c6.Visible = true) then
  begin
    if d[10] = c[6] then
    begin
      showmessage('Cards Match');
      img20.Visible := false;
      img6.Visible := false;
      d10.Visible := false;
      c6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d10.Visible := false;
    c6.Visible := false;
  end;
  if (d10.Visible = true) and (c7.Visible = true) then
  begin
    if d[10] = c[7] then
    begin
      showmessage('Cards Match');
      img20.Visible := false;
      img7.Visible := false;
      d10.Visible := false;
      c7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d10.Visible := false;
    c7.Visible := false;
  end;
  if (d10.Visible = true) and (c8.Visible = true) then
  begin
    if d[10] = c[8] then
    begin
      showmessage('Cards Match');
      img20.Visible := false;
      img8.Visible := false;
      d10.Visible := false;
      c8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d10.Visible := false;
    c8.Visible := false;
  end;
  if (d10.Visible = true) and (c9.Visible = true) then
  begin
    if d[10] = c[9] then
    begin
      showmessage('Cards Match');
      img20.Visible := false;
      img9.Visible := false;
      d10.Visible := false;
      c9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d10.Visible := false;
    c9.Visible := false;
  end;
  if (d10.Visible = true) and (c10.Visible = true) then
  begin
    if d[10] = c[10] then
    begin
      showmessage('Cards Match');
      img20.Visible := false;
      img10.Visible := false;
      d10.Visible := false;
      c10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    d10.Visible := false;
    c10.Visible := false;
  end;
  if (d10.Visible = true) and (d1.Visible = true) then
  begin
    showmessage('No Match');
    d1.Visible := false;
    d10.Visible := false;
  end
  else if (d10.Visible = true) and (d2.Visible = true) then
  begin
    showmessage('No Match');
    d2.Visible := false;
    d10.Visible := false;
  end
  else if (d10.Visible = true) and (d3.Visible = true) then
  begin
    showmessage('No Match');
    d3.Visible := false;
    d10.Visible := false;
  end
  else if (d10.Visible = true) and (d4.Visible = true) then
  begin
    showmessage('No Match');
    d4.Visible := false;
    d10.Visible := false;
  end
  else if (d10.Visible = true) and (d5.Visible = true) then
  begin
    showmessage('No Match');
    d5.Visible := false;
    d10.Visible := false;
  end
  else if (d10.Visible = true) and (d6.Visible = true) then
  begin
    showmessage('No Match');
    d6.Visible := false;
    d10.Visible := false;
  end
  else if (d10.Visible = true) and (d7.Visible = true) then
  begin
    showmessage('No Match');
    d7.Visible := false;
    d10.Visible := false;
  end
  else if (d10.Visible = true) and (d8.Visible = true) then
  begin
    showmessage('No Match');
    d8.Visible := false;
    d10.Visible := false;
  end
  else if (d10.Visible = true) and (d9.Visible = true) then
  begin
    showmessage('No Match');
    d10.Visible := false;
    d9.Visible := false;
  end;

end;

procedure TForm4.img2Click(Sender: TObject);
begin
  c2.Visible := true;
  if (c2.Visible = true) and (d1.Visible = true) then
  begin
    if c[2] = d[1] then
    begin
      showmessage('Cards Match');
      img2.Visible := false;
      img11.Visible := false;
      c2.Visible := false;
      d1.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c2.Visible := false;
    d1.Visible := false;
  end;
  if (c2.Visible = true) and (d2.Visible = true) then
  begin
    if c[2] = d[2] then
    begin
      showmessage('Cards Match');
      img2.Visible := false;
      img12.Visible := false;
      c2.Visible := false;
      d2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c2.Visible := false;
    d2.Visible := false;
  end;
  if (c2.Visible = true) and (d3.Visible = true) then
  begin
    if c[2] = d[3] then
    begin
      showmessage('Cards Match');
      img2.Visible := false;
      img13.Visible := false;
      c2.Visible := false;
      d3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c2.Visible := false;
    d3.Visible := false;
  end;
  if (c2.Visible = true) and (d4.Visible = true) then
  begin
    if c[2] = d[4] then
    begin
      showmessage('Cards Match');
      img2.Visible := false;
      img14.Visible := false;
      c2.Visible := false;
      d4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c2.Visible := false;
    d4.Visible := false;
  end;
  if (c2.Visible = true) and (d5.Visible = true) then
  begin
    if c[2] = d[5] then
    begin
      showmessage('Cards Match');
      img2.Visible := false;
      img15.Visible := false;
      c2.Visible := false;
      d5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c2.Visible := false;
    d5.Visible := false;
  end;
  if (c2.Visible = true) and (d6.Visible = true) then
  begin
    if c[2] = d[6] then
    begin
      showmessage('Cards Match');
      img2.Visible := false;
      img16.Visible := false;
      c2.Visible := false;
      d6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c2.Visible := false;
    d6.Visible := false;
  end;
  if (c2.Visible = true) and (d7.Visible = true) then
  begin
    if c[2] = d[7] then
    begin
      showmessage('Cards Match');
      img2.Visible := false;
      img17.Visible := false;
      c2.Visible := false;
      d7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c2.Visible := false;
    d7.Visible := false;
  end;
  if (c2.Visible = true) and (d8.Visible = true) then
  begin
    if c[2] = d[2] then
    begin
      showmessage('Cards Match');
      img2.Visible := false;
      img18.Visible := false;
      c2.Visible := false;
      d8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c2.Visible := false;
    d8.Visible := false;
  end;
  if (c2.Visible = true) and (d9.Visible = true) then
  begin
    if c[2] = d[9] then
    begin
      showmessage('Cards Match');
      img2.Visible := false;
      img19.Visible := false;
      c2.Visible := false;
      d9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c2.Visible := false;
    d9.Visible := false;
  end;
  if (c2.Visible = true) and (d10.Visible = true) then
  begin
    if c[2] = d[10] then
    begin
      showmessage('Cards Match');
      img2.Visible := false;
      img20.Visible := false;
      c2.Visible := false;
      d10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c2.Visible := false;
    d10.Visible := false;
  end
  else if (c10.Visible = true) and (c2.Visible = true) then
  begin
    showmessage('No Match');
    c2.Visible := false;
    c10.Visible := false;
  end
  else if (c2.Visible = true) and (c3.Visible = true) then
  begin
    showmessage('No Match');
    c3.Visible := false;
    c2.Visible := false;
  end
  else if (c2.Visible = true) and (c4.Visible = true) then
  begin
    showmessage('No Match');
    c4.Visible := false;
    c2.Visible := false;
  end
  else if (c2.Visible = true) and (c5.Visible = true) then
  begin
    showmessage('No Match');
    c5.Visible := false;
    c2.Visible := false;
  end
  else if (c2.Visible = true) and (c6.Visible = true) then
  begin
    showmessage('No Match');
    c6.Visible := false;
    c2.Visible := false;
  end
  else if (c2.Visible = true) and (c7.Visible = true) then
  begin
    showmessage('No Match');
    c7.Visible := false;
    c2.Visible := false;
  end
  else if (c2.Visible = true) and (c8.Visible = true) then
  begin
    showmessage('No Match');
    c8.Visible := false;
    c2.Visible := false;
  end
  else if (c2.Visible = true) and (c9.Visible = true) then
  begin
    showmessage('No Match');
    c2.Visible := false;
    c9.Visible := false;
  end;

end;

procedure TForm4.img3Click(Sender: TObject);
begin
  c3.Visible := true;
  if (c3.Visible = true) and (d1.Visible = true) then
  begin
    if c[3] = d[1] then
    begin
      showmessage('Cards Match');
      img3.Visible := false;
      img11.Visible := false;
      c3.Visible := false;
      d1.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c3.Visible := false;
    d1.Visible := false;
  end;
  if (c3.Visible = true) and (d2.Visible = true) then
  begin
    if c[3] = d[2] then
    begin
      showmessage('Cards Match');
      img3.Visible := false;
      img12.Visible := false;
      c3.Visible := false;
      d2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c3.Visible := false;
    d2.Visible := false;
  end;
  if (c3.Visible = true) and (d3.Visible = true) then
  begin
    if c[3] = d[3] then
    begin
      showmessage('Cards Match');
      img3.Visible := false;
      img13.Visible := false;
      c3.Visible := false;
      d3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c3.Visible := false;
    d3.Visible := false;
  end;
  if (c3.Visible = true) and (d4.Visible = true) then
  begin
    if c[3] = d[4] then
    begin
      showmessage('Cards Match');
      img3.Visible := false;
      img14.Visible := false;
      c3.Visible := false;
      d4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c3.Visible := false;
    d4.Visible := false;
  end;
  if (c3.Visible = true) and (d5.Visible = true) then
  begin
    if c[3] = d[5] then
    begin
      showmessage('Cards Match');
      img3.Visible := false;
      img15.Visible := false;
      c3.Visible := false;
      d5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c3.Visible := false;
    d5.Visible := false;
  end;
  if (c3.Visible = true) and (d6.Visible = true) then
  begin
    if c[3] = d[6] then
    begin
      showmessage('Cards Match');
      img3.Visible := false;
      img16.Visible := false;
      c3.Visible := false;
      d6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c3.Visible := false;
    d6.Visible := false;
  end;
  if (c3.Visible = true) and (d7.Visible = true) then
  begin
    if c[3] = d[7] then
    begin
      showmessage('Cards Match');
      img3.Visible := false;
      img17.Visible := false;
      c3.Visible := false;
      d7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c3.Visible := false;
    d7.Visible := false;
  end;
  if (c3.Visible = true) and (d8.Visible = true) then
  begin
    if c[3] = d[2] then
    begin
      showmessage('Cards Match');
      img3.Visible := false;
      img18.Visible := false;
      c3.Visible := false;
      d8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c3.Visible := false;
    d8.Visible := false;
  end;
  if (c3.Visible = true) and (d9.Visible = true) then
  begin
    if c[3] = d[9] then
    begin
      showmessage('Cards Match');
      img3.Visible := false;
      img19.Visible := false;
      c3.Visible := false;
      d9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c3.Visible := false;
    d9.Visible := false;
  end;
  if (c3.Visible = true) and (d10.Visible = true) then
  begin
    if c[3] = d[10] then
    begin
      showmessage('Cards Match');
      img3.Visible := false;
      img20.Visible := false;
      c3.Visible := false;
      d10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c3.Visible := false;
    d10.Visible := false;
  end
  else if (c10.Visible = true) and (c3.Visible = true) then
  begin
    showmessage('No Match');
    c1.Visible := false;
    c10.Visible := false;
  end
  else if (c3.Visible = true) and (c2.Visible = true) then
  begin
    showmessage('No Match');
    c2.Visible := false;
    c1.Visible := false;
  end
  else if (c3.Visible = true) and (c4.Visible = true) then
  begin
    showmessage('No Match');
    c4.Visible := false;
    c3.Visible := false;
  end
  else if (c3.Visible = true) and (c5.Visible = true) then
  begin
    showmessage('No Match');
    c5.Visible := false;
    c3.Visible := false;
  end
  else if (c3.Visible = true) and (c6.Visible = true) then
  begin
    showmessage('No Match');
    c6.Visible := false;
    c3.Visible := false;
  end
  else if (c3.Visible = true) and (c7.Visible = true) then
  begin
    showmessage('No Match');
    c7.Visible := false;
    c3.Visible := false;
  end
  else if (c3.Visible = true) and (c8.Visible = true) then
  begin
    showmessage('No Match');
    c8.Visible := false;
    c3.Visible := false;
  end
  else if (c3.Visible = true) and (c9.Visible = true) then
  begin
    showmessage('No Match');
    c3.Visible := false;
    c9.Visible := false;
  end;

end;

procedure TForm4.img4Click(Sender: TObject);
begin
  c4.Visible := true;
  if (c4.Visible = true) and (d1.Visible = true) then
  begin
    if c[4] = d[1] then
    begin
      showmessage('Cards Match');
      img4.Visible := false;
      img11.Visible := false;
      c4.Visible := false;
      d1.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c4.Visible := false;
    d1.Visible := false;
  end;
  if (c4.Visible = true) and (d2.Visible = true) then
  begin
    if c[4] = d[2] then
    begin
      showmessage('Cards Match');
      img4.Visible := false;
      img12.Visible := false;
      c4.Visible := false;
      d2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c4.Visible := false;
    d2.Visible := false;
  end;
  if (c4.Visible = true) and (d3.Visible = true) then
  begin
    if c[4] = d[3] then
    begin
      showmessage('Cards Match');
      img4.Visible := false;
      img13.Visible := false;
      c4.Visible := false;
      d3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c4.Visible := false;
    d3.Visible := false;
  end;
  if (c4.Visible = true) and (d4.Visible = true) then
  begin
    if c[4] = d[4] then
    begin
      showmessage('Cards Match');
      img4.Visible := false;
      img14.Visible := false;
      c4.Visible := false;
      d4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c4.Visible := false;
    d4.Visible := false;
  end;
  if (c4.Visible = true) and (d5.Visible = true) then
  begin
    if c[4] = d[5] then
    begin
      showmessage('Cards Match');
      img4.Visible := false;
      img15.Visible := false;
      c4.Visible := false;
      d5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c4.Visible := false;
    d5.Visible := false;
  end;
  if (c4.Visible = true) and (d6.Visible = true) then
  begin
    if c[4] = d[6] then
    begin
      showmessage('Cards Match');
      img4.Visible := false;
      img16.Visible := false;
      c4.Visible := false;
      d6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c4.Visible := false;
    d6.Visible := false;
  end;
  if (c4.Visible = true) and (d7.Visible = true) then
  begin
    if c[4] = d[7] then
    begin
      showmessage('Cards Match');
      img4.Visible := false;
      img17.Visible := false;
      c4.Visible := false;
      d7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c4.Visible := false;
    d7.Visible := false;
  end;
  if (c4.Visible = true) and (d8.Visible = true) then
  begin
    if c[4] = d[2] then
    begin
      showmessage('Cards Match');
      img4.Visible := false;
      img18.Visible := false;
      c4.Visible := false;
      d8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c4.Visible := false;
    d8.Visible := false;
  end;
  if (c4.Visible = true) and (d9.Visible = true) then
  begin
    if c[4] = d[9] then
    begin
      showmessage('Cards Match');
      img4.Visible := false;
      img19.Visible := false;
      c4.Visible := false;
      d9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c4.Visible := false;
    d9.Visible := false;
  end;
  if (c4.Visible = true) and (d10.Visible = true) then
  begin
    if c[4] = d[10] then
    begin
      showmessage('Cards Match');
      img4.Visible := false;
      img20.Visible := false;
      c4.Visible := false;
      d10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c4.Visible := false;
    d10.Visible := false;
  end;
  if (c10.Visible = true) and (c4.Visible = true) then
  begin
    showmessage('No Match');
    c4.Visible := false;
    c10.Visible := false;
  end
  else if (c4.Visible = true) and (c2.Visible = true) then
  begin
    showmessage('No Match');
    c2.Visible := false;
    c4.Visible := false;
  end
  else if (c4.Visible = true) and (c3.Visible = true) then
  begin
    showmessage('No Match');
    c3.Visible := false;
    c4.Visible := false;
  end
  else if (c4.Visible = true) and (c5.Visible = true) then
  begin
    showmessage('No Match');
    c5.Visible := false;
    c4.Visible := false;
  end
  else if (c4.Visible = true) and (c6.Visible = true) then
  begin
    showmessage('No Match');
    c6.Visible := false;
    c4.Visible := false;
  end
  else if (c4.Visible = true) and (c7.Visible = true) then
  begin
    showmessage('No Match');
    c7.Visible := false;
    c4.Visible := false;
  end
  else if (c4.Visible = true) and (c8.Visible = true) then
  begin
    showmessage('No Match');
    c8.Visible := false;
    c4.Visible := false;
  end
  else if (c4.Visible = true) and (c9.Visible = true) then
  begin
    showmessage('No Match');
    c4.Visible := false;
    c9.Visible := false;
  end;

end;

procedure TForm4.img5Click(Sender: TObject);
begin
  c5.Visible := true;
  if (c5.Visible = true) and (d1.Visible = true) then
  begin
    if c[5] = d[1] then
    begin
      showmessage('Cards Match');
      img5.Visible := false;
      img11.Visible := false;
      c5.Visible := false;
      d1.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c5.Visible := false;
    d1.Visible := false;
  end;
  if (c5.Visible = true) and (d2.Visible = true) then
  begin
    if c[5] = d[2] then
    begin
      showmessage('Cards Match');
      img5.Visible := false;
      img12.Visible := false;
      c5.Visible := false;
      d2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c5.Visible := false;
    d2.Visible := false;
  end;
  if (c5.Visible = true) and (d3.Visible = true) then
  begin
    if c[5] = d[3] then
    begin
      showmessage('Cards Match');
      img5.Visible := false;
      img13.Visible := false;
      c5.Visible := false;
      d3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c5.Visible := false;
    d3.Visible := false;
  end;
  if (c5.Visible = true) and (d4.Visible = true) then
  begin
    if c[5] = d[4] then
    begin
      showmessage('Cards Match');
      img5.Visible := false;
      img14.Visible := false;
      c5.Visible := false;
      d4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c5.Visible := false;
    d4.Visible := false;
  end;
  if (c5.Visible = true) and (d5.Visible = true) then
  begin
    if c[5] = d[5] then
    begin
      showmessage('Cards Match');
      img5.Visible := false;
      img15.Visible := false;
      c5.Visible := false;
      d5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c5.Visible := false;
    d5.Visible := false;
  end;
  if (c5.Visible = true) and (d6.Visible = true) then
  begin
    if c[5] = d[6] then
    begin
      showmessage('Cards Match');
      img5.Visible := false;
      img16.Visible := false;
      c5.Visible := false;
      d6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c5.Visible := false;
    d6.Visible := false;
  end;
  if (c5.Visible = true) and (d7.Visible = true) then
  begin
    if c[5] = d[7] then
    begin
      showmessage('Cards Match');
      img5.Visible := false;
      img17.Visible := false;
      c5.Visible := false;
      d7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c5.Visible := false;
    d7.Visible := false;
  end;
  if (c5.Visible = true) and (d8.Visible = true) then
  begin
    if c[5] = d[2] then
    begin
      showmessage('Cards Match');
      img5.Visible := false;
      img18.Visible := false;
      c5.Visible := false;
      d8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c5.Visible := false;
    d8.Visible := false;
  end;
  if (c5.Visible = true) and (d9.Visible = true) then
  begin
    if c[5] = d[9] then
    begin
      showmessage('Cards Match');
      img5.Visible := false;
      img19.Visible := false;
      c5.Visible := false;
      d9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c5.Visible := false;
    d9.Visible := false;
  end;
  if (c5.Visible = true) and (d10.Visible = true) then
  begin
    if c[5] = d[10] then
    begin
      showmessage('Cards Match');
      img5.Visible := false;
      img20.Visible := false;
      c5.Visible := false;
      d10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c5.Visible := false;
    d10.Visible := false;
  end;
  if (c10.Visible = true) and (c5.Visible = true) then
  begin
    showmessage('No Match');
    c5.Visible := false;
    c10.Visible := false;
  end
  else if (c5.Visible = true) and (c2.Visible = true) then
  begin
    showmessage('No Match');
    c2.Visible := false;
    c5.Visible := false;
  end
  else if (c5.Visible = true) and (c3.Visible = true) then
  begin
    showmessage('No Match');
    c3.Visible := false;
    c5.Visible := false;
  end
  else if (c5.Visible = true) and (c4.Visible = true) then
  begin
    showmessage('No Match');
    c4.Visible := false;
    c5.Visible := false;
  end
  else if (c5.Visible = true) and (c1.Visible = true) then
  begin
    showmessage('No Match');
    c1.Visible := false;
    c5.Visible := false;
  end
  else if (c5.Visible = true) and (c6.Visible = true) then
  begin
    showmessage('No Match');
    c6.Visible := false;
    c5.Visible := false;
  end
  else if (c5.Visible = true) and (c7.Visible = true) then
  begin
    showmessage('No Match');
    c7.Visible := false;
    c5.Visible := false;
  end
  else if (c5.Visible = true) and (c8.Visible = true) then
  begin
    showmessage('No Match');
    c8.Visible := false;
    c5.Visible := false;
  end
  else if (c5.Visible = true) and (c9.Visible = true) then
  begin
    showmessage('No Match');
    c5.Visible := false;
    c9.Visible := false;
  end;

end;

procedure TForm4.img6Click(Sender: TObject);
begin
  c6.Visible := true;
  if (c6.Visible = true) and (d1.Visible = true) then
  begin
    if c[6] = d[1] then
    begin
      showmessage('Cards Match');
      img6.Visible := false;
      img11.Visible := false;
      c6.Visible := false;
      d1.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c6.Visible := false;
    d1.Visible := false;
  end;
  if (c6.Visible = true) and (d2.Visible = true) then
  begin
    if c[6] = d[2] then
    begin
      showmessage('Cards Match');
      img6.Visible := false;
      img12.Visible := false;
      c6.Visible := false;
      d2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c6.Visible := false;
    d2.Visible := false;
  end;
  if (c6.Visible = true) and (d3.Visible = true) then
  begin
    if c[6] = d[3] then
    begin
      showmessage('Cards Match');
      img6.Visible := false;
      img13.Visible := false;
      c6.Visible := false;
      d3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c6.Visible := false;
    d3.Visible := false;
  end;
  if (c6.Visible = true) and (d4.Visible = true) then
  begin
    if c[6] = d[4] then
    begin
      showmessage('Cards Match');
      img6.Visible := false;
      img14.Visible := false;
      c6.Visible := false;
      d4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c6.Visible := false;
    d4.Visible := false;
  end;
  if (c6.Visible = true) and (d5.Visible = true) then
  begin
    if c[6] = d[5] then
    begin
      showmessage('Cards Match');
      img6.Visible := false;
      img15.Visible := false;
      c6.Visible := false;
      d5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c6.Visible := false;
    d5.Visible := false;
  end;
  if (c6.Visible = true) and (d6.Visible = true) then
  begin
    if c[6] = d[6] then
    begin
      showmessage('Cards Match');
      img6.Visible := false;
      img16.Visible := false;
      c6.Visible := false;
      d6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c6.Visible := false;
    d6.Visible := false;
  end;
  if (c6.Visible = true) and (d7.Visible = true) then
  begin
    if c[6] = d[7] then
    begin
      showmessage('Cards Match');
      img6.Visible := false;
      img17.Visible := false;
      c6.Visible := false;
      d7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c6.Visible := false;
    d7.Visible := false;
  end;
  if (c6.Visible = true) and (d8.Visible = true) then
  begin
    if c[6] = d[2] then
    begin
      showmessage('Cards Match');
      img6.Visible := false;
      img18.Visible := false;
      c6.Visible := false;
      d8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c6.Visible := false;
    d8.Visible := false;
  end;
  if (c6.Visible = true) and (d9.Visible = true) then
  begin
    if c[6] = d[9] then
    begin
      showmessage('Cards Match');
      img6.Visible := false;
      img19.Visible := false;
      c6.Visible := false;
      d9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c6.Visible := false;
    d9.Visible := false;
  end;
  if (c6.Visible = true) and (d10.Visible = true) then
  begin
    if c[6] = d[10] then
    begin
      showmessage('Cards Match');
      img6.Visible := false;
      img20.Visible := false;
      c6.Visible := false;
      d10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c6.Visible := false;
    d10.Visible := false;
  end;
  if (c10.Visible = true) and (c6.Visible = true) then
  begin
    showmessage('No Match');
    c6.Visible := false;
    c10.Visible := false;
  end
  else if (c6.Visible = true) and (c2.Visible = true) then
  begin
    showmessage('No Match');
    c2.Visible := false;
    c6.Visible := false;
  end
  else if (c6.Visible = true) and (c3.Visible = true) then
  begin
    showmessage('No Match');
    c3.Visible := false;
    c6.Visible := false;
  end
  else if (c6.Visible = true) and (c4.Visible = true) then
  begin
    showmessage('No Match');
    c4.Visible := false;
    c6.Visible := false;
  end
  else if (c6.Visible = true) and (c5.Visible = true) then
  begin
    showmessage('No Match');
    c5.Visible := false;
    c6.Visible := false;
  end
  else if (c6.Visible = true) and (c1.Visible = true) then
  begin
    showmessage('No Match');
    c6.Visible := false;
    c1.Visible := false;
  end
  else if (c6.Visible = true) and (c7.Visible = true) then
  begin
    showmessage('No Match');
    c7.Visible := false;
    c6.Visible := false;
  end
  else if (c6.Visible = true) and (c8.Visible = true) then
  begin
    showmessage('No Match');
    c8.Visible := false;
    c6.Visible := false;
  end
  else if (c6.Visible = true) and (c9.Visible = true) then
  begin
    showmessage('No Match');
    c6.Visible := false;
    c9.Visible := false;
  end;

end;

procedure TForm4.img7Click(Sender: TObject);
begin
  c7.Visible := true;
  if (c7.Visible = true) and (d1.Visible = true) then
  begin
    if c[7] = d[1] then
    begin
      showmessage('Cards Match');
      img7.Visible := false;
      img11.Visible := false;
      c7.Visible := false;
      d1.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c7.Visible := false;
    d1.Visible := false;
  end;
  if (c7.Visible = true) and (d2.Visible = true) then
  begin
    if c[7] = d[2] then
    begin
      showmessage('Cards Match');
      img7.Visible := false;
      img12.Visible := false;
      c7.Visible := false;
      d2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c7.Visible := false;
    d2.Visible := false;
  end;
  if (c7.Visible = true) and (d3.Visible = true) then
  begin
    if c[7] = d[3] then
    begin
      showmessage('Cards Match');
      img7.Visible := false;
      img13.Visible := false;
      c7.Visible := false;
      d3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c7.Visible := false;
    d3.Visible := false;
  end;
  if (c7.Visible = true) and (d4.Visible = true) then
  begin
    if c[7] = d[4] then
    begin
      showmessage('Cards Match');
      img7.Visible := false;
      img14.Visible := false;
      c7.Visible := false;
      d4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c7.Visible := false;
    d4.Visible := false;
  end;
  if (c7.Visible = true) and (d5.Visible = true) then
  begin
    if c[7] = d[5] then
    begin
      showmessage('Cards Match');
      img7.Visible := false;
      img15.Visible := false;
      c7.Visible := false;
      d5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c7.Visible := false;
    d5.Visible := false;
  end;
  if (c7.Visible = true) and (d6.Visible = true) then
  begin
    if c[7] = d[6] then
    begin
      showmessage('Cards Match');
      img7.Visible := false;
      img16.Visible := false;
      c7.Visible := false;
      d6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c7.Visible := false;
    d6.Visible := false;
  end;
  if (c7.Visible = true) and (d7.Visible = true) then
  begin
    if c[7] = d[7] then
    begin
      showmessage('Cards Match');
      img7.Visible := false;
      img17.Visible := false;
      c7.Visible := false;
      d7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c7.Visible := false;
    d7.Visible := false;
  end;
  if (c7.Visible = true) and (d8.Visible = true) then
  begin
    if c[7] = d[2] then
    begin
      showmessage('Cards Match');
      img7.Visible := false;
      img18.Visible := false;
      c7.Visible := false;
      d8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c7.Visible := false;
    d8.Visible := false;
  end;
  if (c7.Visible = true) and (d9.Visible = true) then
  begin
    if c[7] = d[9] then
    begin
      showmessage('Cards Match');
      img7.Visible := false;
      img19.Visible := false;
      c7.Visible := false;
      d9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c7.Visible := false;
    d9.Visible := false;
  end;
  if (c7.Visible = true) and (d10.Visible = true) then
  begin
    if c[7] = d[10] then
    begin
      showmessage('Cards Match');
      img7.Visible := false;
      img20.Visible := false;
      c7.Visible := false;
      d10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c7.Visible := false;
    d10.Visible := false;
  end;
  if (c10.Visible = true) and (c7.Visible = true) then
  begin
    showmessage('No Match');
    c7.Visible := false;
    c10.Visible := false;
  end
  else if (c7.Visible = true) and (c2.Visible = true) then
  begin
    showmessage('No Match');
    c2.Visible := false;
    c7.Visible := false;
  end
  else if (c7.Visible = true) and (c3.Visible = true) then
  begin
    showmessage('No Match');
    c3.Visible := false;
    c7.Visible := false;
  end
  else if (c7.Visible = true) and (c4.Visible = true) then
  begin
    showmessage('No Match');
    c4.Visible := false;
    c7.Visible := false;
  end
  else if (c7.Visible = true) and (c5.Visible = true) then
  begin
    showmessage('No Match');
    c5.Visible := false;
    c7.Visible := false;
  end
  else if (c7.Visible = true) and (c6.Visible = true) then
  begin
    showmessage('No Match');
    c6.Visible := false;
    c7.Visible := false;
  end
  else if (c1.Visible = true) and (c7.Visible = true) then
  begin
    showmessage('No Match');
    c7.Visible := false;
    c1.Visible := false;
  end
  else if (c7.Visible = true) and (c8.Visible = true) then
  begin
    showmessage('No Match');
    c8.Visible := false;
    c7.Visible := false;
  end
  else if (c7.Visible = true) and (c9.Visible = true) then
  begin
    showmessage('No Match');
    c7.Visible := false;
    c9.Visible := false;
  end;

end;

procedure TForm4.img8Click(Sender: TObject);
begin
  c8.Visible := true;
  if (c8.Visible = true) and (d1.Visible = true) then
  begin
    if c[8] = d[1] then
    begin
      showmessage('Cards Match');
      img8.Visible := false;
      img11.Visible := false;
      c8.Visible := false;
      d1.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c8.Visible := false;
    d1.Visible := false;
  end;
  if (c8.Visible = true) and (d2.Visible = true) then
  begin
    if c[8] = d[2] then
    begin
      showmessage('Cards Match');
      img8.Visible := false;
      img12.Visible := false;
      c8.Visible := false;
      d2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c8.Visible := false;
    d2.Visible := false;
  end;
  if (c8.Visible = true) and (d3.Visible = true) then
  begin
    if c[8] = d[3] then
    begin
      showmessage('Cards Match');
      img8.Visible := false;
      img13.Visible := false;
      c8.Visible := false;
      d3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c8.Visible := false;
    d3.Visible := false;
  end;
  if (c8.Visible = true) and (d4.Visible = true) then
  begin
    if c[8] = d[4] then
    begin
      showmessage('Cards Match');
      img8.Visible := false;
      img14.Visible := false;
      c8.Visible := false;
      d4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c8.Visible := false;
    d4.Visible := false;
  end;
  if (c8.Visible = true) and (d5.Visible = true) then
  begin
    if c[8] = d[5] then
    begin
      showmessage('Cards Match');
      img8.Visible := false;
      img15.Visible := false;
      c8.Visible := false;
      d5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c8.Visible := false;
    d5.Visible := false;
  end;
  if (c8.Visible = true) and (d6.Visible = true) then
  begin
    if c[8] = d[6] then
    begin
      showmessage('Cards Match');
      img8.Visible := false;
      img16.Visible := false;
      c8.Visible := false;
      d6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c8.Visible := false;
    d6.Visible := false;
  end;
  if (c8.Visible = true) and (d7.Visible = true) then
  begin
    if c[8] = d[7] then
    begin
      showmessage('Cards Match');
      img8.Visible := false;
      img17.Visible := false;
      c8.Visible := false;
      d7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c8.Visible := false;
    d7.Visible := false;
  end;
  if (c8.Visible = true) and (d8.Visible = true) then
  begin
    if c[8] = d[2] then
    begin
      showmessage('Cards Match');
      img8.Visible := false;
      img18.Visible := false;
      c8.Visible := false;
      d8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c8.Visible := false;
    d8.Visible := false;
  end;
  if (c8.Visible = true) and (d9.Visible = true) then
  begin
    if c[8] = d[9] then
    begin
      showmessage('Cards Match');
      img8.Visible := false;
      img19.Visible := false;
      c8.Visible := false;
      d9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c8.Visible := false;
    d9.Visible := false;
  end;
  if (c8.Visible = true) and (d10.Visible = true) then
  begin
    if c[8] = d[10] then
    begin
      showmessage('Cards Match');
      img8.Visible := false;
      img20.Visible := false;
      c8.Visible := false;
      d10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c8.Visible := false;
    d10.Visible := false;
  end;
  if (c10.Visible = true) and (c8.Visible = true) then
  begin
    showmessage('No Match');
    c8.Visible := false;
    c10.Visible := false;
  end
  else if (c8.Visible = true) and (c2.Visible = true) then
  begin
    showmessage('No Match');
    c2.Visible := false;
    c8.Visible := false;
  end
  else if (c8.Visible = true) and (c3.Visible = true) then
  begin
    showmessage('No Match');
    c3.Visible := false;
    c8.Visible := false;
  end
  else if (c8.Visible = true) and (c4.Visible = true) then
  begin
    showmessage('No Match');
    c4.Visible := false;
    c8.Visible := false;
  end
  else if (c8.Visible = true) and (c5.Visible = true) then
  begin
    showmessage('No Match');
    c5.Visible := false;
    c8.Visible := false;
  end
  else if (c8.Visible = true) and (c6.Visible = true) then
  begin
    showmessage('No Match');
    c6.Visible := false;
    c8.Visible := false;
  end
  else if (c8.Visible = true) and (c7.Visible = true) then
  begin
    showmessage('No Match');
    c7.Visible := false;
    c8.Visible := false;
  end
  else if (c1.Visible = true) and (c8.Visible = true) then
  begin
    showmessage('No Match');
    c1.Visible := false;
    c8.Visible := false;
  end
  else if (c8.Visible = true) and (c9.Visible = true) then
  begin
    showmessage('No Match');
    c8.Visible := false;
    c9.Visible := false;
  end;

end;

procedure TForm4.img9Click(Sender: TObject);
begin
  c9.Visible := true;
  if (c9.Visible = true) and (d1.Visible = true) then
  begin
    if c[9] = d[1] then
    begin
      showmessage('Cards Match');
      img9.Visible := false;
      img11.Visible := false;
      c9.Visible := false;
      d1.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c9.Visible := false;
    d1.Visible := false;
  end;
  if (c9.Visible = true) and (d2.Visible = true) then
  begin
    if c[9] = d[2] then
    begin
      showmessage('Cards Match');
      img9.Visible := false;
      img12.Visible := false;
      c9.Visible := false;
      d2.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c9.Visible := false;
    d2.Visible := false;
  end;
  if (c9.Visible = true) and (d3.Visible = true) then
  begin
    if c[9] = d[3] then
    begin
      showmessage('Cards Match');
      img9.Visible := false;
      img13.Visible := false;
      c9.Visible := false;
      d3.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c9.Visible := false;
    d3.Visible := false;
  end;
  if (c9.Visible = true) and (d4.Visible = true) then
  begin
    if c[9] = d[4] then
    begin
      showmessage('Cards Match');
      img9.Visible := false;
      img14.Visible := false;
      c9.Visible := false;
      d4.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c9.Visible := false;
    d4.Visible := false;
  end;
  if (c9.Visible = true) and (d5.Visible = true) then
  begin
    if c[9] = d[5] then
    begin
      showmessage('Cards Match');
      img9.Visible := false;
      img15.Visible := false;
      c9.Visible := false;
      d5.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c9.Visible := false;
    d5.Visible := false;
  end;
  if (c9.Visible = true) and (d6.Visible = true) then
  begin
    if c[9] = d[6] then
    begin
      showmessage('Cards Match');
      img9.Visible := false;
      img16.Visible := false;
      c9.Visible := false;
      d6.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c9.Visible := false;
    d6.Visible := false;
  end;
  if (c9.Visible = true) and (d7.Visible = true) then
  begin
    if c[9] = d[7] then
    begin
      showmessage('Cards Match');
      img9.Visible := false;
      img17.Visible := false;
      c9.Visible := false;
      d7.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c9.Visible := false;
    d7.Visible := false;
  end;
  if (c9.Visible = true) and (d8.Visible = true) then
  begin
    if c[9] = d[8] then
    begin
      showmessage('Cards Match');
      img9.Visible := false;
      img18.Visible := false;
      c9.Visible := false;
      d8.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c9.Visible := false;
    d8.Visible := false;
  end;
  if (c9.Visible = true) and (d9.Visible = true) then
  begin
    if c[9] = d[9] then
    begin
      showmessage('Cards Match');
      img9.Visible := false;
      img19.Visible := false;
      c9.Visible := false;
      d9.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c9.Visible := false;
    d9.Visible := false;
  end;
  if (c9.Visible = true) and (d10.Visible = true) then
  begin
    if c[9] = d[10] then
    begin
      showmessage('Cards Match');
      img9.Visible := false;
      img20.Visible := false;
      c9.Visible := false;
      d10.Visible := false;
      Inc(points);
      Inc(pairsmatched);
    end
    else
      showmessage('No Match');
    c9.Visible := false;
    d10.Visible := false;
  end;
  if (c10.Visible = true) and (c9.Visible = true) then
  begin
    showmessage('No Match');
    c9.Visible := false;
    c10.Visible := false;
  end
  else if (c9.Visible = true) and (c2.Visible = true) then
  begin
    showmessage('No Match');
    c2.Visible := false;
    c9.Visible := false;
  end
  else if (c9.Visible = true) and (c3.Visible = true) then
  begin
    showmessage('No Match');
    c3.Visible := false;
    c9.Visible := false;
  end
  else if (c9.Visible = true) and (c4.Visible = true) then
  begin
    showmessage('No Match');
    c4.Visible := false;
    c9.Visible := false;
  end
  else if (c9.Visible = true) and (c5.Visible = true) then
  begin
    showmessage('No Match');
    c5.Visible := false;
    c9.Visible := false;
  end
  else if (c9.Visible = true) and (c6.Visible = true) then
  begin
    showmessage('No Match');
    c6.Visible := false;
    c9.Visible := false;
  end
  else if (c9.Visible = true) and (c7.Visible = true) then
  begin
    showmessage('No Match');
    c7.Visible := false;
    c9.Visible := false;
  end
  else if (c9.Visible = true) and (c8.Visible = true) then
  begin
    showmessage('No Match');
    c8.Visible := false;
    c9.Visible := false;
  end
  else if (c1.Visible = true) and (c9.Visible = true) then
  begin
    showmessage('No Match');
    c9.Visible := false;
    c1.Visible := false;
  end;

end;

procedure TForm4.ImgAMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if pairsmatched = 10 then
  begin
    with unit9.form9 do
    begin
      if ADOTable2.Locate('Username', sname, [loCaseInsensitive]) then
      begin
        ADOTable2.Edit;
        ADOTable2['Games Played'] := ADOTable2['Games Played'] + 1;
        ADOTable2['Pairs Matched'] := pairsmatched;
        ADOTable2['Points'] := pairsmatched * 2;
        ADOTable2.Post;
        timesplayed := IntToStr(ADOTable2['Games Played']);
      end;
      form9.Show;
      ADOTable2.Sort := 'Points DESC';
      timesplayed := ADOTable2['Games Played'];
    end;
    with unit9.form9 do
    begin
      Memo1.Lines.Add(sname + ' scored ' + IntToStr(pairsmatched * 2)
          + ' points on the ' + DateToStr(date) + ' at ' + TimeToStr(time));
      Memo1.Lines.SaveToFile(sname + timesplayed + '.rtf');
    end;
  end;
end;

{ procedure TForm4.img5Click(Sender: TObject);
  begin
  Inc(click);
  c5.Visible:=true;
  if Odd(click)=false then
  begin
  if c[5]=d[1] then
  begin
  showmessage('Cards Match!');
  img5.Visible:=false;
  img11.Visible:=false;
  c5.Visible:=false;
  d1.Visible:=false;
  end;
  if c[5]=d[2] then
  begin
  showmessage('Cards Match!');
  img5.Visible:=false;
  img12.Visible:=false;
  c5.Visible:=false;
  d2.Visible:=false;
  end;
  if c[5]=d[3] then
  begin
  showmessage('Cards Match!');
  img5.Visible:=false;
  img13.Visible:=false;
  c5.Visible:=false;
  d3.Visible:=false;
  end;
  if d[3]=d[4] then
  begin
  showmessage('Cards Match!');
  img5.Visible:=false;
  img14.Visible:=false;
  c5.Visible:=false;
  d4.Visible:=false;
  end;
  if c[5]=d[5] then
  begin
  showmessage('Cards Match!');
  img5.Visible:=false;
  img15.Visible:=false;
  c5.Visible:=false;
  d5.Visible:=false;
  end;
  if c[5]=d[6] then
  begin
  showmessage('Cards Match!');
  img5.Visible:=false;
  img16.Visible:=false;
  c5.Visible:=false;
  d6 .Visible:=false;
  end;
  if c[5]=d[7] then
  begin
  showmessage('Cards Match!');
  img5.Visible:=false;
  img17.Visible:=false;
  c5.Visible:=false;
  d7.Visible:=false;
  end;
  if c[5]=d[8] then
  begin
  showmessage('Cards Match!');
  img5.Visible:=false;
  img18.Visible:=false;
  c5.Visible:=false;
  d8.Visible:=false;
  end;
  if c[5]=d[9] then
  begin
  showmessage('Cards Match!');
  img5.Visible:=false;
  img19.Visible:=false;
  c5.Visible:=false;
  d9.Visible:=false;
  end;
  if c[5]=d[10] then
  begin
  showmessage('Cards Match!');
  img5.Visible:=false;
  img20.Visible:=false;
  c5.Visible:=false;
  d10.Visible:=false;
  end;
  end;
  end; }

procedure TForm4.Shuffle1(var aArray; aItemcount, aitemsize: integer);
var
  inx: integer;
  randinx: integer;
  swapitem: PByteArray;
  a: TByteArray absolute aArray;
begin
  if (aItemcount > 1) then
  begin
    GetMem(swapitem, aitemsize);
    try
      for inx := 0 to (aItemcount - 2) do
      begin
        randinx := random(aItemcount - inx);
        move(a[inx * aitemsize], swapitem^, aitemsize);
        move(a[randinx * aitemsize], a[inx * aitemsize], aitemsize);
        move(swapitem^, a[randinx * aitemsize], aitemsize);
      end;
    finally
      freemem(swapitem, aitemsize);
    end;
  end;
end;

procedure TForm4.Timer1Timer(Sender: TObject);
var
  pos, points, i: integer;
  timesplayed, namex: string;
begin
  if Label2.Caption = '00' then
  begin
    Label2.Caption := '59';
    Label1.Caption := IntToStr(StrToInt(Label1.Caption) - 1);
  end
  else if Label2.Caption = '0' then
  begin
    Label2.Caption := '59';
    Label1.Caption := IntToStr(StrToInt(Label1.Caption) - 1);
  end
  else
  begin
    Label2.Caption := IntToStr(StrToInt(Label2.Caption) - 1);
  end;
  if (Label1.Caption = '0') and (Label2.Caption = '0') then
  begin
    Timer1.Enabled := false;
    showmessage('Times up');
    with unit9.form9 do
    begin
      if ADOTable2.Locate('Username', sname, [loCaseInsensitive]) then
      begin
        ADOTable2.Edit;
        ADOTable2['Games Played'] := ADOTable2['Games Played'] + 1;
        ADOTable2['Pairs Matched'] := pairsmatched;
        ADOTable2['Points'] := pairsmatched * 2;
        ADOTable2.Post;
        timesplayed := IntToStr(ADOTable2['Games Played']);
      end
      else
      begin
        ADOTable2.Last;
        ADOTable2.Insert;
        ADOTable2['Username'] := sname;
        ADOTable2['Games Played'] := 1;
        ADOTable2['Pairs Matched'] := pairsmatched;
        ADOTable2['Points'] := pairsmatched * 2;
        ADOTable2.Post
      end;
      form9.Show;
      ADOTable2.Sort := 'Points DESC';
      timesplayed := ADOTable2['Games Played'];
    end;
    with unit9.form9 do
    begin
      Memo1.Lines.Add(sname + ' scored ' + IntToStr(pairsmatched * 2)
          + ' points on the ' + DateToStr(date) + ' at ' + TimeToStr(time));
      Memo1.Lines.SaveToFile(sname + timesplayed + '.rtf');
    end;
  end;

end;

end.
