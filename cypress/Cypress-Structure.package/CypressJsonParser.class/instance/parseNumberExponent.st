"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: parsing-internal
"
parseNumberExponent
    | number negated |
    number := 0.
    negated := stream peek = $-.
    (negated or: [ stream peek = $+ ])
        ifTrue: [ stream next ].
    [ stream atEnd not and: [ stream peek isDigit ] ] whileTrue: [ number := 10 * number + (stream next codePoint - 48) ].
    negated
        ifTrue: [ number := number negated ].
    ^ 10 raisedTo: number
