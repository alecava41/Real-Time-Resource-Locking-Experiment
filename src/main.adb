pragma Task_Dispatching_Policy (FIFO_Within_Priorities);
pragma Locking_Policy (Ceiling_Locking);
pragma Detect_Blocking;
pragma Restrictions (
                    No_Abort_Statements,
                    No_Dynamic_Attachment,
                    No_Dynamic_Priorities,
                    No_Implicit_Heap_Allocations,
                    No_Local_Protected_Objects,
                    No_Local_Timing_Events,
                    No_Protected_Type_Allocators,
                    No_Relative_Delay,
                    No_Requeue_Statements,
                    No_Select_Statements,
                    No_Specific_Termination_Handlers,
                    No_Task_Allocators,
                    No_Task_Hierarchy,
                    No_Task_Termination,
                    Simple_Barriers,
                    Max_Entry_Queue_Length => 1,
                    Max_Protected_Entries => 2,
                    Max_Task_Entries => 0,
                    No_Dependence => Ada.Asynchronous_Task_Control,
                    No_Dependence => Ada.Calendar,
                    No_Dependence => Ada.Execution_Time.Group_Budget,
                    No_Dependence => Ada.Execution_Time.Timers,
                    No_Dependence => Ada.Task_Attributes);

with Task_A;
with Task_B;
with Task_C;
with Task_D;

procedure Main is
begin
   null;
end Main;
