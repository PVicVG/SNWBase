///scr_string_copy_words(string, index, count)
var str, index, count, char, return_str;
str = argument0;
index = argument1;
count = ceil(argument2);

char = string_char_at(str, count);
while (char != " " && char != "")
{
  count += 1;
  char = string_char_at(str, count);
}

return_str = string_copy(str,index,count);
return return_str;

