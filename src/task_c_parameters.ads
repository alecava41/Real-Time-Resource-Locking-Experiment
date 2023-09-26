with System;
package Task_C_Parameters is
   Task_C_Priority : constant System.Priority := 4;
   Task_C_Period : constant Natural := 13_000; -- in milliseconds
   procedure Task_C_Operation;
end Task_C_Parameters;
