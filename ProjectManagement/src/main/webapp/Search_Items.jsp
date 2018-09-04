<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
<!-- <script src="js/autocomplete-0.3.0.js" type="text/javascript"></script> -->

<!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  
  <style>
* {
  box-sizing: border-box;
}

body {
  font: 16px Arial;  
}

.autocomplete {
  /*the container must be positioned relative:*/
  position: relative;
  display: inline-block;
}

input {
  border: 1px solid transparent;
  background-color: #f1f1f1;
  padding: 10px;
  font-size: 16px;
}

input[type=text] {
  background-color: #f1f1f1;
  width: 100%;
}

input[type=submit] {
  background-color: DodgerBlue;
  color: #fff;
  cursor: pointer;
}

.autocomplete-items {
  position: absolute;
  border: 1px solid #d4d4d4;
  border-bottom: none;
  border-top: none;
  z-index: 99;
  /*position the autocomplete items to be the same width as the container:*/
  top: 100%;
  left: 0;
  right: 0;
}

.autocomplete-items div {
  padding: 10px;
  cursor: pointer;
  background-color: #fff; 
  border-bottom: 1px solid #d4d4d4; 
}

.autocomplete-items div:hover {
  /*when hovering an item:*/
  background-color: #e9e9e9; 
}

.autocomplete-active {
  /*when navigating through the items using the arrow keys:*/
  background-color: DodgerBlue !important; 
  color: #ffffff; 
}
</style>

 <!--  <script src="js/jquery-1.11.2.js"></script> -->
  <script src="js/jquery-ui.min.js"></script>
  <script src="js/jquery-ui.min.css"></script> 
 <script>
  $(function() {
  
   $('#tags').keypress(function () {   
    $.ajax({
     url:"AutoComplete",
     type:"post",
     data:'',
      success:function(data){
    	
    	  $( "#tags" ).autocomplete({   
          source: data 
         });
     
     },error:  function(data, status, er){
              console.log(data+"_"+status+"_"+er);
          },
           
    });
    
    });
 
  });
  </script>
 
 
 
 
 <!-- <script>

 	$(function() {
		  
		   $('#search').keyup(function () {   
			   alert("here")
			   var t = $('#search').val();
			   alert(t)
		    $.ajax({
		     url:"AutoComplete",	
		     type:"get",
		     dataType: 'json',
		     data:
		    	 {
		    	 	term : $('#search').val(),
		    	 },
		     success:function(data){
		       $( "#search" ).autocomplete({   
		          source: json   
		        });
		     },error:  function(data, status, er){
		              console.log(data+"_"+status+"_"+er);
		          },
		           
		    });
		    
		    });
		 
		  });

  </script>  -->
  
  <!-- <script>

$document.ready(function()
		{
	alert("here")
			$(function()
					{
				
						$("#search").autocomplete({
							source :function(request,response)
							{
								$.ajax({
									
									url :"AutoComplete",
									type :"GET",
									data :
									{
										term:request.term
									},
									dataType :"json",
									success : function(data)
									{
										response(data);
									}
								});
							},
							select: function( event,ui)
							{
								alert(ui.item.value);
								return false;
							}
							
						});
					});
		});

</script> --> 

</head>
<body>

<div>
  <label for="tags">Tags: </label>
  <input id="tags" class="form-table">
</div>

  <!-- <label >Tags: </label>
  <input type="text" id="test" name="test">
   -->
  <!-- <input type="text" id="search" name="term">
 -->
</body>
</html>