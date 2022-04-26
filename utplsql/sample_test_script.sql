-- sample tests from utPLSQL documentation
 
create or replace package test_betwnstr as
 
  -- %suite(Between string function)
 
  -- %test(Returns substring from start position to end position)
  procedure basic_usage;
 
  -- %test(Returns substring when start position is zero)
  procedure zero_start_position;
 
end;
/
 
create or replace package body test_betwnstr as
 
  procedure basic_usage is
  begin
    ut.expect( betwnstr( '1234567', 2, 5 ) ).to_equal('2345');
  end;
 
  procedure zero_start_position is
  begin
    ut.expect( betwnstr( '1234567', 0, 5 ) ).to_equal('12345');
  end;
 
end;
/
 
create or replace function betwnstr( a_string varchar2, a_start_pos integer, a_end_pos integer ) return varchar2 
is
begin
  if a_start_pos = 0 then
    return substr( a_string, a_start_pos, a_end_pos - a_start_pos );
  else
    return substr( a_string, a_start_pos, a_end_pos - a_start_pos + 1);
  end if;
end;
/
 
set serveroutput on;
exec ut.run('test_betwnstr');
