with System;
package Task_B_Parameters is
   Task_B_Priority : constant System.Priority := 3;
   Task_B_Period : constant Natural := 10_000; -- in milliseconds
   procedure Task_B_Operation;
end Task_B_Parameters;
