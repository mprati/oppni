function QC_wrapper(step,inputfile, newmaskname, Npcs)
disp("DEBUG - Entering QC_wrapper.m");
if nargin < 3
    newmaskname = [];
    Npcs = 10;
end

if strcmpi(newmaskname,'None')
    newmaskname = [];
end
if strcmpi(Npcs,'None')
    Npcs = 10;
end

if ischar(step)
    step = str2num(step);
end
if ischar(Npcs)
    Npcs = str2num(Npcs);
end

if step==0 || step==1
    Pipeline_QC1( inputfile )
end
if step==0 || step==2
    Pipeline_QC2( inputfile , newmaskname, Npcs)
end

