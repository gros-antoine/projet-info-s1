with Sudoku;
use Sudoku;

with Ada.Text_IO;
use Ada.Text_IO;

with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

package body interactions is

   procedure choixCase is
   
      posX : T_Indice_Ligne;
      posY : T_Indice_Colonne;
      symbole : T_Case;
      
      package Ligne_IO is new Enumeration_IO(T_Indice_Ligne);
      use Ligne_IO;
      
   begin
      
      get(posX);
      get(posY);
      
      
      put(posX);
      put(posY);
      
   end choixCase;
   

end interactions;
