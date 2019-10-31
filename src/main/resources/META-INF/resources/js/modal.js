/**
 * Funcionalidad de modal
 */
/**
 * Funcionalidad de modal
 */

// Get the modal
	
	
    var modal = document.getElementById("myModal-cuervo-marcas");
      
    	var modalV = document.getElementsByClassName('button-cuervo-marcas');
    	
    	for(var i = 0; i < modalV.length; i++){
    		modalV[i].addEventListener('click', function(){
    			modal.style.display = "block";
    			getReg(event.target.id);
    		});
    	}
    	
    	
    
    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close-cuervo-marcas")[0];
    
    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
      modal.style.display = "none";
    }
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
    
    function getReg(reg){
    	$.ajax({
    		url: '${getRegURL}',
    		type: 'POST',
    		cache: false,
    		data: {
    			<portlet:namespace/>_id : reg
    		},
    		success: function(data){
    			console.log("result",data);
    			var _json = JSON.parse(data);
    			document.getElementById("diasATomar").innerHTML = _json.diasATomar;
    			document.getElementById("registro").innerHTML = _json.reg;
    			document.getElementById("fechaInicio").innerHTML = _json.fechaInicio;
    			document.getElementById("claveLocalidad").innerHTML = _json.claveLocalidad;
    			document.getElementById("regresoALaborar").innerHTML = _json.fechaFinal;
    			document.getElementById("fechaDeRegistro").innerHTML = _json.fechaC;
    		},error:function(){
    			
    		}
    	});
    }