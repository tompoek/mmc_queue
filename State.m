classdef State
    properties (SetAccess = public)
        time;
        req_q_length;
        pri_q_length;
        idle_workers;
    end

    methods
        function obj = State(time,workers,regular_queue,priority_queue)
            obj.time = time;
            obj.req_q_length = regular_queue.length;
            obj.pri_q_length = priority_queue.length;
            obj.idle_workers = workers.count_idle;
        end
    end
end