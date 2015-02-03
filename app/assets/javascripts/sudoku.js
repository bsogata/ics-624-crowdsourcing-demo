/*
 * Handles interactions with the Sudoku board.
 *
 * Author: Branden Ogata
 * 
 */

/*
 * Returns a two-dimensional array containing the values in the Sudoku grid.
 *
 * Return:
 *   An array of strings representing what is currently shown on the page.
 *   
 */

/*
 * Checks if the grid is complete and correctly filled.
 *
 * Return:
 *   A boolean that is true if the Sudoku puzzle is solved,
 *                     false otherwise.
 *                     
 */

function isSolved()
{
  // Rows
  var row0 = $(".row0").each(function() {});
  
  // Columns
  
  // Squares
}

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
      $.ajax({url: "sudoku/1", type: "PUT", data: "x=" + col + "&y=" + row + "&value=" + value});
    }
    else
    {
      alert("Input must be between 1 and 9 (inclusive)");
      $(this).val("");
    }
  });
});