function finding_largest_recurring_sequence(a:array of integer):integer;
var number, count, prev_count, current:integer;
begin
  count:=1;
  prev_count:=0;
  for current:=1 to length(a)-1 do begin
    if (a[current]=a[current+1]) then begin
      count:=count + 1;
    end  
    else begin
      if count>prev_count then begin
        prev_count:=count;
        number:=a[current];
        end;
      count:=1;
    end;
  end;      
  finding_largest_recurring_sequence:=number;
end;
