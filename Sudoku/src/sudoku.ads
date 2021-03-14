with Ada.Numerics.Elementary_Functions;
use Ada.Numerics.Elementary_Functions;

package Sudoku is

   type T_Case is (Vide, C1, C2, C3, C4, C5, C6, C7, C8, C9, A, B, C, D, E, F);
   
   type T_Indice_Ligne is  (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P);
   subtype T_Indice_Colonne is Integer range 1..16;
   
   subtype T_Indice is Positive;
   
   type T_Grille is array (T_Indice range <>, T_Indice range <>) of T_Case; 
   
   subtype T_Ordre is T_Indice range 3..4;
   
   subtype T_Taille is T_Indice range 9..16;
   
   type T_Sudoku(taille : T_Taille) is record
      
      grille : T_Grille(1..taille, 1..taille) := (others => (others => Vide));
      ordre : T_Ordre := Integer(sqrt(Float(taille)));
      
   end record;
   
   function verification(sudoko : T_Sudoku) return Boolean; 
   
   
end Sudoku;
