with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

with Ada.Text_IO;
use Ada.Text_IO;

package body Sudoku is


   function verification(sudoko : T_Sudoku) return Boolean is
      
      grille : T_Grille := sudoko.grille;
      taille : T_Taille := sudoko.taille;
      ordre : T_Ordre := sudoko.ordre;
      buffer : T_Case;
      
   begin
      
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
                  
                  buffer := grille((i - 1) * ordre + k, (j - 1) * ordre + l);
                  
                  -- Parcours des cases comparées
                  for m in k..ordre loop
                     for n in l..ordre loop
                        
                        if(grille(m, n) = buffer) then
                           return false;
                        end if;
                        
                     end loop;
                  end loop;
               end loop;
            end loop;
         end loop;
      end loop;
      
      return true;
      
   end verification;
   

end Sudoku;
