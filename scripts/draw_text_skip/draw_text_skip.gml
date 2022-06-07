function draw_text_skip(){


    #region SOURCE CODE
 
    //Checks if the variable has been defined.
    if variable_instance_exists(self.id, "_text_char"){
    
	
        //Skips the defined variables for text scrolling.
		_text_prev      =  string_length(set_text);
        _text_char      =  string_length(set_text);

    }
 
    #endregion
}
