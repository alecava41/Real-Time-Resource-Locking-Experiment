with Ada.Text_IO;
with Shared_Resource;
with Computation_Simulation;

package body Task_C_Parameters is
   Task_C_Workload : constant Positive := 2;
   procedure Task_C_Operation is
      Value : Positive;
      Workload_Value : Positive;
   begin
      Value := Shared_Resource.Read;
      Workload_Value := Computation_Simulation.Compute_Simulation (Task_C_Workload);
      Ada.Text_IO.Put_Line ("End of task C, workload value " & Integer'Image (Workload_Value) & ", resource value read " & Integer'Image (Value));
   end Task_C_Operation;
end Task_C_Parameters;
