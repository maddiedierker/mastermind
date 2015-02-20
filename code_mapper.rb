require './code_data'

class CodeMapper
    COLORS = ['RED', 'GREEN', 'ORANGE', 'YELLOW', 'BLUE', 'PURPLE']

    def map_all_possible_codes_to_colors(separated_data_set)
        data_set_with_colors = []
        separated_data_set.each { |i| i.each { |ii| data_set_with_colors << COLORS[ii] } }
        separated_data_set_with_colors = data_set_with_colors.each_slice(4).to_a
    end

    def map_code_to_colors(code)
        code_with_colors = []
        separated_code = code.scan(/./).map { |digit| digit.to_i }
        separated_code.each { |i| code_with_colors << COLORS[i] }
        code_with_colors
    end
end