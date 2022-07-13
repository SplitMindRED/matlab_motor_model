mn=inputdlg({'Input SimuLink Model Name:'},'',1,{''});
if ~isempty(mn)
    if exist(mn{1})==4
        mdlsignals = find_system(mn,'FindAll','on','LookUnderMasks','all','FollowLinks','on','type','line','SegmentType','trunk');
        ph = get_param(mdlsignals,'SrcPortHandle');
        for i=1: length(ph)
            set_param(ph{i},'datalogging','off')
        end
        msgbox(['Any signal loggings in "',mn{1},'" have been removed.'])
    else
        msgbox(['"',mn{1},'" is not a valid SimuLink model.'])
    end
end