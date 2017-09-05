def str_str(haystack, needle)
    return 0 if needle.strip.empty?

    anchor = runner = 0
    not_found = -1

    while anchor < haystack.length
        while haystack[anchor] != needle[0] && anchor < haystack.length
            anchor += 1
        end

        return not_found unless anchor < haystack.length

        runner = anchor
        found_needle = true

        needle.chars.each do |char|
            found_needle = false if char != haystack[runner]
            runner += 1
        end

        return anchor if found_needle
        anchor += 1
    end

    not_found
end

str_str 'mississippi', 'a'
