with System;
package Task_A_Parameters is
   Task_A_Priority : constant System.Priority := 2;
   Task_A_Period : constant Natural := 7_000; -- in milliseconds
   procedure Task_A_Operation;
end Task_A_Parameters;
