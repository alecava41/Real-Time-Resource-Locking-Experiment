with Ada.Text_IO;
with Shared_Resource;
with Computation_Simulation;

package body Task_B_Parameters is
   Task_B_Workload : constant Positive := 1;
   procedure Task_B_Operation is
      Value : Positive;
      Workload_Value : Positive;
   begin
      Value := Shared_Resource.Read;
      Workload_Value := Computation_Simulation.Compute_Simulation (Task_B_Workload);
      Ada.Text_IO.Put_Line ("End of task B, workload value " & Integer'Image (Workload_Value) & ", resource value read " & Integer'Image (Value));
   end Task_B_Operation;
end Task_B_Parameters;
