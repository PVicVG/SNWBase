///scr_textbox_skip_to_end()
text_count = floor(text_count);
while (text_count < string_length(text[text_page]))
{
  //Get the last space
  if (string_char_at(text[text_page],text_count) == " ")
  {
    last_space = text_count;
  }
  //Add smart returns
  var text_words;
  text_words = scr_string_copy_words(text[text_page],1,text_count);
  if (string_width(text_words) > width)
  {
    //Remove the space
    text[text_page] = string_delete(text[text_page],last_space,1);
    
    //Add a return
    text[text_page] = string_insert("#",text[text_page],last_space);
  }
  //Get the visible text
  text_visible = string_copy(text[text_page],0,text_count);
  text_count += 1;
}
skipped = true;

