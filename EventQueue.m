classdef EventQueue % analogous to HeapQ in Python
    properties
        event = [];
    end
    
    methods
        function obj = push(obj, time, eventtype)
            obj.event = [obj.event; time, eventtype];
            obj.event = sortrows(obj.event, 1);
        end
        function [obj, time, eventtype] = pop(obj)
            if isempty(obj.event)
                error('Queue is empty');
            end
            time = double(obj.event(1, 1));
            eventtype = obj.event(1, 2);
            obj.event(1, :) = [];
        end

        function obj = schedule_new_package(obj, time, lambda)
            obj = obj.push(time+exprnd(1/lambda), "NewPackage");
        end
        function obj = schedule_packing(obj, time, lambda)
            obj = obj.push(time+exprnd(1/lambda), "PackagePacked");
        end
    end
end