//#########################################################
 
///     Description:    Resets the scrolling text.
///     Usage:          draw_text_reset()
 
//########################################################
function draw_text_reset(){
    
    #region SOURCE CODE
 
    //Checks if the variable has been defined.
    if variable_instance_exists(self.id, "_text_char"){
    
        //Resets the defined variables for text scrolling.
        _text_char      = 0;
        _text_prev      = 0;
        _text_sleep     = 0;
    
    }
 
    #endregion
 
}
//########################################################
///
///     Created by Kupoapo
///
//########################################################
