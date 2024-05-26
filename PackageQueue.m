classdef PackageQueue
    properties (SetAccess = public)
        length;
    end
    
    methods
        function obj = PackageQueue(length) % init function
            obj.length = length;
        end
        function flag = has_packages(obj)
            flag = (obj.length > 0);
        end
        function obj = add_one_package(obj)
            obj.length = obj.length + 1;
        end
        function obj = release_one_package(obj)
            obj.length = obj.length - 1;
        end
    end
end