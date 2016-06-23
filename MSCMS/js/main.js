$.extend($.fn.validatebox.defaults.rules, {   
    mustselect: {   
        validator: function(value){	       
           return value != 'Please select';   
        },   
        message: 'Please select.'  
    },
    int:{
    	validator: function(value){ 
    	  var reg = /^(-)?[0-9]\d*$/;
    	  return reg.test(value);
        },   
        message: 'Please input integer.'  
    },
    number:{
    	validator: function(value){   
  	      var reg = /^(-)?\d+(\.\d+)?$/;
  	      return reg.test(value);
        },   
        message: 'Please input number.'  
    },
    character:{
    	validator: function(value){
    	  //alert(value);
  	      var reg = /^[A-Za-z]+$/;
  	      return reg.test(value);
        },   
        message: 'Please input character.'  
    }    	

});