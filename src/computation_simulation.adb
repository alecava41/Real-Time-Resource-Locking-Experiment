with Ada.Real_Time;

package body Computation_Simulation is
   function Compute_Simulation (Seconds : Positive) return Positive is
      use Ada.Real_Time;

      Target_Time  : Ada.Real_Time.Time;
      Random_Value : Positive := 1;
   begin
      Target_Time := Ada.Real_Time.Clock + Ada.Real_Time.Seconds (Seconds);

      while Ada.Real_Time.Clock < Target_Time loop
         Random_Value := Random_Value + 1;
      end loop;

      return Random_Value;
   end Compute_Simulation;
end Computation_Simulation;
