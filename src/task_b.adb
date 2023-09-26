with Ada.Real_Time;
with Ada.Text_IO;
with Activation_Manager;

package body Task_B is
   Period : constant Ada.Real_Time.Time_Span :=
     Ada.Real_Time.Milliseconds (Task_B_Parameters.Task_B_Period);
   task body Task_B is
      use Ada.Real_Time;
      Next_Time    : Ada.Real_Time.Time;
      Stop_Time    : Ada.Real_Time.Time;
      Elapsed_Time : Ada.Real_Time.Time_Span;
   begin
      Activation_Manager.Activation_Cyclic (Next_Time);
      loop
         Next_Time := Next_Time + Period;
         Task_B_Parameters.Task_B_Operation;

         Stop_Time    := Clock;
         Elapsed_Time := Stop_Time - Next_Time;

         if Elapsed_Time > Ada.Real_Time.Time_Span_Zero then
            Ada.Text_IO.Put_Line ("Task B missed its deadline");
         end if;

         delay until Next_Time;
      end loop;
   end Task_B;
end Task_B;
