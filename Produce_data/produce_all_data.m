function [  ] = produce_all_data( data_num, experiment_num)
	labeled_num = 5;
    switch data_num
        case 1
            load '../../Input Data/Adult/Adult.mat';   
            data_string = '../../Input Data/Adult/';
        case 2
            load '../../Input Data/Conect/conect-4.mat';
            data_string = '../../Input Data/Conect/';
        case 3
            load '../../Input Data/mushroom/mushroom.mat';
            data_string = '../../Input Data/mushroom/';
        case 4
            load '../../Input Data/Real Data/realdata2.mat';
%             load '../../Input Data/Real Data/true_label.mat';
            data_string = '../../Input Data/Real Data/';
        case 5
            load '../../Input Data/test_data/dna.mat';
            data_string = '../../Input Data/test_data/';
%         case 6
%             load '../../Input Data/tiantian/tiantian.mat';
%             data_string = '../../Input Data/tiantian/';
%         case 7
%             load '../../Input Data/Real_Data_AAAI/real_data_aaai.mat';
%             data_string = '../../Input Data/Real_Data_AAAI/';
        case 8
            load '../../Input Data/Real_Data_AAAI_balance/real_data_aaai_balance.mat';
            data_string = '../../Input Data/Real_Data_AAAI_balance/';
            
        case 11
            load '../../Input Data/Real Data/realdata1.mat';
            data_string = '../../Input Data/Real Data/';
    end
    
    
    switch experiment_num
        case 1
            file_dir = sprintf('%s%s',data_string,'expertise_difficult_model/');
%             if data_num == 4
%                 produce_whitehill_data_topic(file_dir, data, label, train_label);
%             else
            produce_whitehill_data(file_dir, data, label, labeled_num);
%             end            
        case 2
            file_dir = sprintf('%s%s',data_string,'latent model/');
%             if data_num == 4
%                 produce_raykar_data_topic(file_dir, data, label, train_label);
%             else
            produce_raykar_data(file_dir, data, label, labeled_num);
%             end                        
        case 3
            file_dir = sprintf('%s%s',data_string,'Clustering/');
%             if data_num == 4
%                 produce_yanyan_data_topic(file_dir, data, label, train_label);
%             else
            produce_yanyan_data(file_dir, data, label, labeled_num);
%             end                        
        case 4
            file_dir = sprintf('%s%s',data_string,'Real Label/');
%             if data_num == 4
%                 produce_real_data_topic( file_dir, data, label, Y, train_label )
%             else
            produce_real_data(file_dir, data, label, Y, labeled_num);
%             end

    end

end

