with Ada.Real_Time;
with Ada.Text_IO;
with Activation_Manager;

package body Task_C is
   Period : constant Ada.Real_Time.Time_Span :=
     Ada.Real_Time.Milliseconds (Task_C_Parameters.Task_C_Period);
   task body Task_C is
      use Ada.Real_Time;
      Next_Time    : Ada.Real_Time.Time;
      Stop_Time    : Ada.Real_Time.Time;
      Elapsed_Time : Ada.Real_Time.Time_Span;
   begin
      Activation_Manager.Activation_Cyclic (Next_Time);
      loop
         Next_Time := Next_Time + Period;
         Task_C_Parameters.Task_C_Operation;

         Stop_Time    := Clock;
         Elapsed_Time := Stop_Time - Next_Time;

         if Elapsed_Time > Ada.Real_Time.Time_Span_Zero then
            Ada.Text_IO.Put_Line ("Task C missed its deadline");
         end if;
         delay until Next_Time;
      end loop;
   end Task_C;
end Task_C;
