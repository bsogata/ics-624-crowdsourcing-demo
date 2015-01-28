/*
 * Handles interactions with the Sudoku board.
 *
 * Author: Branden Ogata
 * 
 */

$(document).ready(function()
{
  setInterval(function()
  {
    // Get updated grid from database
    
  }, 5000);
  
  // Updates the database whenever the user makes a change
  $("input").change(function()
  {
    var coordinates = $(this).parent().attr("id").replace("cell", "");
    var row = parseInt(coordinates.charAt(0));
    var col = parseInt(coordinates.charAt(1));
    
    var value = parseInt($(this).val());
    
    if ((1 <= value) && (value <= 9))
    {
      // Use AJAX
    }
    else
    {
      alert("Input must be between 1 and 9 (inclusive)");
      $(this).val("");
    }
  });
});