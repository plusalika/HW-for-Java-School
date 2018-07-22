program task_three;
var extra_s,s:string;
    current:integer;
begin
  writeln('Enter a string consisting of parentheses, brackets and braces: ');
  readln(s);
  extra_s:='';
  for current:=1 to length(s) do begin
    case s[current] of
      '(', '[', '{' : extra_s:=extra_s+s[current];
      ')': if extra_s[length(extra_s)]='(' then delete(extra_s,length(extra_s),1) else extra_s:=extra_s+s[current];
      ']': if extra_s[length(extra_s)]='[' then delete(extra_s,length(extra_s),1) else extra_s:=extra_s+s[current];
      '}': if extra_s[length(extra_s)]='{' then delete(extra_s,length(extra_s),1) else extra_s:=extra_s+s[current];
    end;
  end;
  writeln;
  if length(extra_s)=0 then write(s,' is balanced.')
  else write(s,' is not balanced.');
  readln;
end.
