program task_two;
uses graph,wincrt;
var base_length:integer;
    gd,gm,limit,counter,counter_line:integer; 
    const_y,const_x,x,y:integer;
begin
  writeln('Please enter the bases length: ');
  readln(base_length);
  gd:=detect;
  initgraph(gd,gm,'');
  if graphresult<0 then halt(1);

  x:=getmaxx div 2 - (base_length+1 div 2)*5;
  const_x:=x;
  y:=getmaxy div 2 + (base_length+1 div 2)*4;
  const_y:=y;
  setrgbpalette(21,255,122,0);
  setcolor(21);

  limit:=base_length;
  for counter_line:=1 to (base_length+1 div 2) do begin
    if limit>0  then begin
      for counter:=1 to limit do begin
        outtextxy(x,y,'$');
        x:=x+10;
      end;
      limit:=limit - 2;
    end;
    x:=const_x+10*counter_line;
    y:=const_y-counter_line*15;
  end;
  repeat
  until (keypressed);
  closegraph;
end.
