package body Sudoku is


   function verification(sudoko : T_Sudoku) return Boolean is
      
      grille : T_Grille;
      taille : T_Taille;
      
   begin
      
      grille := sudoko.grille;
      taille := sudoko.taille;
      
      return false;
      
      
   end verification;
   

end Sudoku;
