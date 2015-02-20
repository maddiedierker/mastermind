require './code_mapper'

class CodeData
    def create_all_possible_codes
        data_set = (4..4).flat_map{ |n| (0..5).to_a.repeated_permutation(n).map(&:join) }
        separated_data_set = []
        data_set.each { |i| separated_data_set << i.split('').map { |index| index.to_i } }
        new_code_mapper = CodeMapper.new
        new_code_mapper.map_all_possible_codes_to_colors(separated_data_set)
    end
end