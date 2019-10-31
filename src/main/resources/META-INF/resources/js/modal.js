/**
 * Funcionalidad de modal
 */
alert("hi");
// Get the modal
    var modal = document.getElementById("myModal-cuervo-marcas");
      
    	var modalV = document.getElementsByClassName('button-cuervo-marcas');
    	
    	for(var i = 0; i < modalV.length; i++){
    		modalV[i].addEventListener('click', function(){
    			alert("Hola");
    			console.log(event);
    			modal.style.display = "block";
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