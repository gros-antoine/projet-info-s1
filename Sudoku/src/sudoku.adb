package body Sudoku is


   function verification(sudoko : T_Sudoku) return Boolean is
      
      grille : T_Grille;
      taille : T_Taille;
      ordre : T_Ordre;
      buffer : T_Case;
      
   begin
      
      grille := sudoko.grille;
      taille := sudoko.taille;
      ordre := sudoku.ordre;
      
      
      return false;
      
      -- Parcours des lignes
      for i in 1..taille loop
         -- Pour parcourir la case qu'on compare aux autres
         for j in 1..taille loop
            
            buffer := grille(i, j);
            
            -- Comparaison qu'aux cases à droites de celle en j, les précédentes
            -- sont déja testées
            for k in j+1..taille loop
               
               if(grille(i, k) = buffer) then
                  return false;
               end if;
            
            end loop;
         end loop;
      end loop;
      
      -- Parcours des colonnes
      for i in 1..taille loop
         -- Parcours de la case qu'on compare aux autres
         for j in 1..taille loop
            
            buffer := grille(j, i);
            
            for k in j+1..taille loop
               
               if(grille(k, i) = buffer) then
                  return false;
               end if;
               
            end loop;
         end loop;
      end loop;
   
      
      -- Parcours des régions
      for i in 1..ordre loop
         for j in 1..ordre loop
            
            -- Parcours de la case qu'on compare aux autres
            for k in 1..ordre loop
               for l in 1..ordre loop
                  
                  buffer := grille((k - 1) * ordre , )
                  
                  -- Parcours des cases comparées
                  for m in k..ordre loop
                     for n in l..ordre loop
                        
                        
                  
                  
               
      
   end verification;
   

end Sudoku;
