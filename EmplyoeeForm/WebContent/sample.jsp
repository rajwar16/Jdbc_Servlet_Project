<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>jQuery.each demo</title>
  <style>
  .selected { color:red; }
.highlight { background:yellow; }
  
  div {
    color: blue;
  }
  div#five {
    color: red;
  }
  .ui-widget-header,.ui-state-default, ui-button{  
         background: lightyellow;  
         border: 1px solid #b9cd6d;  
         color: black;  
         font-weight: bold;  
       }  

  
  </style>
  <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet"> 
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>  
  <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>  
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

</head>
<body>
 <div id="one"></div>
<div id="two"></div>
<div id="three"></div>
<div id="four"></div>
<div id="five"></div>


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
<!-- $("button").click(function () {
var text = $(this).text();
$("input").val(text);
});
});
</script>
 
<script type="text/javascript">
    $(document).ready(function() {
        $('.my_button').click(function() {
            alert($(this).val());
        });
    });
    
    $(function() {  
        $( "#dialog-1" ).dialog({  
           autoOpen: false,    
        });  
        $( "#opener" ).click(function() {  
           $( "#dialog-1" ).dialog( "open" );  
        });  
        
        $( "#dialog-3" ).dialog({  
            autoOpen: false,   
            hide: "slide",  
            show : "slide",  
            height: 200        
         });  
         $( "#opener-3" ).click(function() {  
            $( "#dialog-3" ).dialog( "open" );  
         });  
         
         
         $('<div></div>').dialog({
             modal: false,
             title: "Confirmation",
             open: function() {
               var markup = 'Hello World';
               $(this).html(markup);
             },
             buttons: {
               Ok: function() {
                 $( this ).dialog( "close" );
               }
             }
           });
     });
    
    $(function(){
        $('button').click(function(){
        	whatever();
        });
    });
    
    function whatever()
    {
         alert('yes');
    }
    
    
    
</script>

<button class="my_button" name="buttonName" value="buttonValue">Button Label</button>
 
 <div id="dialog-1" title="Movie Title:Psycho (1960)">"A girl's best friend is his mother." </div>  
<button id="opener">Open Dialog</button>  
      
      
      
      
      <div id="dialog-3" title="This is a title.">This is a dialog.</div>  
      <button id="opener-3">Open Dialog3</button>  
 
 
 <div></div>
 <button id="pooja" type="button" value="clickkkkk" OnClick="display(this);" >jfhkojhojyto</button>


<div>
<button>A</button>
<button>B</button>
<button>C</button>
</div>
<input type="text" value="click a button" /> 


<script>
var arr = [ "one", "two", "three", "four", "five" ];
var obj = { one: 1, two: 2, three: 3, four: 4, five: 5 };
 
jQuery.each( arr, function( i, val ) {
  $( "#" + val ).text( "Mine is " + val + "." );
 
  // Will stop running after "three"
  return ( val !== "three" );
});
 
jQuery.each( obj, function( i, val ) {
  $( "#" + i ).append( document.createTextNode( " - " + val ) );
});

dfvjgdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd 


 



</html>
