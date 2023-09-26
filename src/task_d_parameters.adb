with Ada.Text_IO;
with Ada.Numerics.Discrete_Random;
with Computation_Simulation;
with Shared_Resource;

package body Task_D_Parameters is
   Task_D_Workload : constant Positive := 1;
   subtype Random_Range is Positive range 1 .. 10;

   package R is new Ada.Numerics.Discrete_Random (Random_Range);
   use R;

   procedure Task_D_Operation is
      Value          : Positive;
      Workload_Value : Positive;
      G              : Generator;
   begin
      Reset (G);

      Workload_Value :=
        Computation_Simulation.Compute_Simulation (Task_D_Workload);

      Value := Random (G);
      Shared_Resource.Write (Value);
      Ada.Text_IO.Put_Line
        ("End of task D, workload value " & Integer'Image (Workload_Value) &
         ", resource value wrote " & Integer'Image (Value));
   end Task_D_Operation;
end Task_D_Parameters;
