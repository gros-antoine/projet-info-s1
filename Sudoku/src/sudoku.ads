package Sudoku is

   type T_Case is (Vide, C1, C2, C3, C4, C5, C6, C7, C8, C9, A, B, C, D, E, F);
   
   --subtype T_Indice_Colonne is Integer range 1..16;
   
   --type T_Indice_Ligne is  (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P);
   
   type T_Indice is new Positive;
   
   type T_Grille is array (T_Indice range <>, T_Indice range <>) of T_Case; 
   
   subtype T_Taille is T_Indice range 9..16;
   
   type T_Sudoku(taille : T_Taille) is record
      
      grille : T_Grille(1..taille, 1..taille) := (others => (others => Vide));
      
   end record;
   
   function verification(sudoko : T_Sudoku) return Boolean;
   
end Sudoku;
