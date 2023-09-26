with System;
package Task_D_Parameters is
   Task_D_Priority : constant System.Priority := 5;
   Task_D_Period : constant Natural := 20_000; -- in milliseconds
   procedure Task_D_Operation;
end Task_D_Parameters;
