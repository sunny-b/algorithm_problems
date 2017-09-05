def length_of_longest_substring(s)
    if s.length < 2
        s.length == 1 ? 1 : 0
    end

    longest = 0
    seen = {}
    start = 0
    runner = 0

    while (runner < s.length) do
        if seen[s[runner]]
            longest = (runner - start) > longest ? (runner - start) : longest
            start = runner
        end

        seen[s[runner]] = runner
        runner += 1
    end
    longest = (runner - start - 1) > longest ? (runner - start - 1) : longest

    longest
end

length_of_longest_substring "c"
