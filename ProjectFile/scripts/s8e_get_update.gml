/// s8e_get_update()
 // Update your GMK with latest build, if available. Requires latest version of Java.
 // Call in rm_update, make sure to save all progress beforehand + make a backup, just in case!
 /*
 
   if(s8e_check_connected() && !jar_check("fail"))
   {
      _upc = s8e_update("?", GAME_VERSION, "version result");
      if(_upc == 1)
      {
          _upl  = s8e_download("utils/update", true);
          if(_upl == 1)
          {
             _upb = s8e_gmk_copy("src_index", "utils/csource");
             if(_upb == 1)
             {
                _upm = s8e_merge("utils/csource", "utils/update", "utils/src_extract.bat%'exc_tpe -0 is_src_gmk -1'")
                if(_upm == -1)
                { 
                   show_debug_message("SRCM_FAIL");
                   s8e_exit(0);
                }
                else
                {
                   _fups = s8e_gmk_copy("utils/csource", "src_index");
                   if(_fups)
                   {
                      s8e_execute("utils/gm8_reload.bat%'file -0'");
                      s8e_exit(2);
                  }  
                }
             }
          }
      }
   }
