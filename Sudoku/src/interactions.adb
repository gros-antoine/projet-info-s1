with Sudoku;
use Sudoku;

with Ada.Text_IO;
use Ada.Text_IO;

with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

package body interactions is

   procedure choixCase(sudoku : in out T_Sudoku) is
   
      posX : T_Indice_Ligne;
      posY : T_Indice_Colonne;
      symbole_char : Character;
      pos_symbole : Natural;
      symbole : T_Case := Vide;
      
      package Ligne_IO is new Enumeration_IO(T_Indice_Ligne);
      use Ligne_IO;
      
   begin
      
      put_line("Entrez la ligne dans laquelle vous voulez jouer :");
      get(posX);
      put_line("Entrez la colonne dans laquelle vous voulez jouer :");
      get(posY);
      put_line("Entrez le symbole que vous voulez jouer");
      --get_line(symbol_string, lg_symbol);
      get(symbole_char);
      
      
      pos_symbole := Character'Pos(symbole_char);
      
      if(49 <= pos_symbole and pos_symbole <= 56) then
         symbole := T_Case'Val(pos_symbole - 48);
      elsif(65 <= pos_symbole and pos_symbole <= 70) then 
         symbole := T_Case'Val(pos_symbole - 64);
      end if;
      
      if(sudoku.grille(T_Indice_Ligne'Pos(posX) + 1, posY) /= Vide)then
      
   end choixCase;
   

end interactions;
