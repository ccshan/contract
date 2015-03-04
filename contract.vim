let s:contractions = {'am not':'ain''t', 'are not':'aren''t', 'cannot':'can''t', 'could have':'could''ve', 'could not':'couldn''t', 'could not have':'couldn''t''ve', 'did not':'didn''t', 'does not':'doesn''t', 'do not':'don''t', 'had not':'hadn''t', 'had not have':'hadn''t''ve', 'has not':'hasn''t', 'have not':'haven''t', 'he had':'he''d', 'he would':'he''d', 'he would have':'he''d''ve', 'he shall':'he''ll', 'he will':'he''ll', 'he has':'he''s', 'he is':'he''s', 'how did':'how''d', 'how would':'how''d', 'how will':'how''ll', 'how has':'how''s', 'how is':'how''s', 'how does':'how''s', 'i had':'I''d', 'i would':'I''d', 'i would have':'I''d''ve', 'i shall':'I''ll', 'i will':'I''ll', 'i am':'I''m', 'i have':'I''ve', 'is not':'isn''t', 'it had':'it''d', 'it would':'it''d', 'it would have':'it''d''ve', 'it shall':'it''ll', 'it will':'it''ll', 'it has':'it''s', 'it is':'it''s', 'let us':'let''s', 'madam':'ma''am', 'might not':'mightn''t', 'might not have':'mightn''t''ve', 'might have':'might''ve', 'must not':'mustn''t', 'must have':'must''ve', 'need not':'needn''t', 'not have':'not''ve', 'of the clock':'o''clock', 'ought not':'oughtn''t', 'shall not':'shan''t', 'she had':'she''d', 'she would':'she''d', 'she would have':'she''d''ve', 'she shall':'she''ll', 'she will':'she''ll', 'she has':'she''s', 'she is':'she''s', 'should have':'should''ve', 'should not':'shouldn''t', 'should not have':'shouldn''t''ve', 'that will':'that''ll', 'that has':'that''s', 'that is':'that''s', 'there had':'there''d', 'there would':'there''d', 'there would have':'there''d''ve', 'there are':'there''re', 'there has':'there''s', 'there is':'there''s', 'they had':'they''d', 'they would':'they''d', 'they would have':'they''d''ve', 'they shall':'they''ll', 'they will':'they''ll', 'they are':'they''re', 'they have':'they''ve', 'was not':'wasn''t', 'we had':'we''d', 'we would':'we''d', 'we would have':'we''d''ve', 'we will':'we''ll', 'we are':'we''re', 'we have':'we''ve', 'were not':'weren''t', 'what shall':'what''ll', 'what will':'what''ll', 'what are':'what''re', 'what has':'what''s', 'what is':'what''s', 'what does':'what''s', 'what have':'what''ve', 'when has':'when''s', 'when is':'when''s', 'where did':'where''d', 'where has':'where''s', 'where is':'where''s', 'where have':'where''ve', 'who would':'who''d', 'who had':'who''d', 'who shall':'who''ll', 'who will':'who''ll', 'who are':'who''re', 'who has':'who''s', 'who is':'who''s', 'who have':'who''ve', 'why will':'why''ll', 'why are':'why''re', 'why has':'why''s', 'why is':'why''s', 'will not':'won''t', 'would have':'would''ve', 'would not':'wouldn''t', 'would not have':'wouldn''t''ve', 'you all':'y''all', 'you all should have':'y''all''d''ve', 'you all could have':'y''all''d''ve', 'you all would have':'y''all''d''ve', 'you had':'you''d', 'you would':'you''d', 'you would have':'you''d''ve', 'you shall':'you''ll', 'you will':'you''ll', 'you are':'you''re', 'you have':'you''ve'}
function! s:Contract(meaning)
    let l:meaning = substitute(a:meaning, '\_s\+', ' ', 'g')
    let l:contraction = s:contractions[tolower(l:meaning)]
    if l:meaning[0] ==# toupper(l:meaning[0])
        return toupper(l:contraction[0]) . l:contraction[1:]
    else
        return l:contraction
    endif
endfunction
%s/\<\(I\_s\+shall\|you\_s\+have\|we\_s\+will\|what\_s\+will\|she\_s\+has\|I\_s\+would\|madam\|why\_s\+are\|am\_s\+not\|they\_s\+have\|you\_s\+are\|you\_s\+had\|it\_s\+would\|you\_s\+will\|why\_s\+is\|he\_s\+is\|she\_s\+would\|she\_s\+is\|who\_s\+had\|you\_s\+all\|it\_s\+will\|how\_s\+would\|he\_s\+would\|what\_s\+does\|they\_s\+are\|she\_s\+had\|need\_s\+not\|had\_s\+not\_s\+have\|are\_s\+not\|why\_s\+will\|what\_s\+has\|has\_s\+not\|how\_s\+will\|she\_s\+would\_s\+have\|they\_s\+shall\|we\_s\+would\_s\+have\|you\_s\+would\|ought\_s\+not\|he\_s\+shall\|who\_s\+are\|they\_s\+would\|who\_s\+will\|who\_s\+have\|we\_s\+are\|should\_s\+have\|could\_s\+not\_s\+have\|shall\_s\+not\|I\_s\+am\|not\_s\+have\|you\_s\+all\_s\+could\_s\+have\|it\_s\+would\_s\+have\|that\_s\+is\|was\_s\+not\|you\_s\+all\_s\+should\_s\+have\|must\_s\+not\|who\_s\+would\|there\_s\+is\|she\_s\+will\|how\_s\+does\|were\_s\+not\|I\_s\+had\|there\_s\+would\|what\_s\+have\|does\_s\+not\|it\_s\+shall\|he\_s\+will\|might\_s\+have\|where\_s\+is\|it\_s\+is\|we\_s\+would\|why\_s\+has\|when\_s\+is\|you\_s\+shall\|they\_s\+had\|you\_s\+all\_s\+would\_s\+have\|where\_s\+have\|must\_s\+have\|we\_s\+have\|where\_s\+has\|let\_s\+us\|you\_s\+would\_s\+have\|will\_s\+not\|that\_s\+has\|it\_s\+had\|they\_s\+will\|could\_s\+not\|I\_s\+will\|he\_s\+has\|would\_s\+not\|who\_s\+is\|when\_s\+has\|should\_s\+not\|how\_s\+is\|what\_s\+shall\|there\_s\+has\|should\_s\+not\_s\+have\|might\_s\+not\_s\+have\|cannot\|how\_s\+did\|what\_s\+are\|who\_s\+shall\|what\_s\+is\|it\_s\+has\|had\_s\+not\|I\_s\+have\|we\_s\+had\|do\_s\+not\|have\_s\+not\|might\_s\+not\|that\_s\+will\|there\_s\+had\|he\_s\+would\_s\+have\|where\_s\+did\|there\_s\+are\|of\_s\+the\_s\+clock\|who\_s\+has\|he\_s\+had\|how\_s\+has\|would\_s\+not\_s\+have\|did\_s\+not\|they\_s\+would\_s\+have\|is\_s\+not\|would\_s\+have\|I\_s\+would\_s\+have\|she\_s\+shall\|could\_s\+have\|there\_s\+would\_s\+have\)\>/\=s:Contract(submatch(0))/gc