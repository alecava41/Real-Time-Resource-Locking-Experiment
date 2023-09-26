with Ada.Text_IO;
with Computation_Simulation;

package body Task_A_Parameters is
   Task_A_Workload : constant Positive := 1;
   procedure Task_A_Operation is
      Value : Positive;
   begin
      Value := Computation_Simulation.Compute_Simulation (Task_A_Workload);
      Ada.Text_IO.Put_Line ("End of task A, workload value " & Integer'Image (Value));
   end Task_A_Operation;
end Task_A_Parameters;
