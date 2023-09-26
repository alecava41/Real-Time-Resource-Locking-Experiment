with Shared_Resource_Parameters;
with Computation_Simulation;

package body Shared_Resource is
   protected Shared_Resource with
      Priority => Shared_Resource_Parameters.Shared_Resource_Priority
   is
      entry Read (Return_Value : out Positive);
      entry Write (New_Value : Positive);
   private
      Value   : Positive := 1;
      Barrier : Boolean  := True;
   end Shared_Resource;
   function Read return Positive is
      Return_Value : Positive;
   begin
      Shared_Resource.Read (Return_Value);
      return Return_Value;
   end Read;
   procedure Write (New_Value : Positive) is
   begin
      Shared_Resource.Write (New_Value);
   end Write;
   protected body Shared_Resource is
      entry Read (Return_Value : out Positive) when Barrier is
      begin
         Barrier      := False;
         Return_Value := Computation_Simulation.Compute_Simulation (1);
         Barrier      := True;
         Return_Value := Value;
      end Read;
      entry Write (New_Value : Positive) when Barrier is
      begin
         Barrier := False;

         if New_Value = 5 then
            Value := Computation_Simulation.Compute_Simulation (20);
         else
            Value := Computation_Simulation.Compute_Simulation (2);
         end if;

         Value   := New_Value;
         Barrier := True;
      end Write;
   end Shared_Resource;
end Shared_Resource;
