classdef Workers
    properties (SetAccess = public)
        count_idle;
    end

    methods
        function obj = Workers(count_idle) % init function
            obj.count_idle = count_idle;
        end
        function flag = has_idle_workers(obj)
            flag = (obj.count_idle > 0);
        end
        function obj = a_worker_becomes_idle(obj)
            obj.count_idle = obj.count_idle + 1;
        end
        function obj = a_worker_becomes_busy(obj)
            obj.count_idle = obj.count_idle - 1;
        end
    end
end