with Ada.Real_Time;
package Activation_Manager is
   use Ada.Real_Time;
   function Clock return Ada.Real_Time.Time renames Ada.Real_Time.Clock;

   System_Start_Time : constant Ada.Real_Time.Time := Clock;

   Relative_Offset : constant Natural := 100;
   Task_Start_Time : constant Ada.Real_Time.Time_Span :=
     Ada.Real_Time.Milliseconds (Relative_Offset);

   Activation_Time : Ada.Real_Time.Time :=
     System_Start_Time + Task_Start_Time;

   procedure Activation_Cyclic
     (Next_Time : out Ada.Real_Time.Time);
end Activation_Manager;
