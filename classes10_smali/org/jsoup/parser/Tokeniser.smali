.class final Lorg/jsoup/parser/Tokeniser;
.super Ljava/lang/Object;
.source "Tokeniser.java"


# static fields
.field private static final notCharRefCharsSorted:[C

.field static final win1252Extensions:[I


# instance fields
.field charPending:Lorg/jsoup/parser/Token$Character;

.field private charStartPos:I

.field private final charsBuilder:Ljava/lang/StringBuilder;

.field private charsString:Ljava/lang/String;

.field private final codepointHolder:[I

.field commentPending:Lorg/jsoup/parser/Token$Comment;

.field dataBuffer:Ljava/lang/StringBuilder;

.field doctypePending:Lorg/jsoup/parser/Token$Doctype;

.field private emitPending:Lorg/jsoup/parser/Token;

.field endPending:Lorg/jsoup/parser/Token$EndTag;

.field private final errors:Lorg/jsoup/parser/ParseErrorList;

.field private isEmitPending:Z

.field private lastStartCloseSeq:Ljava/lang/String;

.field private lastStartTag:Ljava/lang/String;

.field private markupStartPos:I

.field private final multipointHolder:[I

.field private final reader:Lorg/jsoup/parser/CharacterReader;

.field startPending:Lorg/jsoup/parser/Token$StartTag;

.field private state:Lorg/jsoup/parser/TokeniserState;

.field tagPending:Lorg/jsoup/parser/Token$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_16

    sput-object v0, Lorg/jsoup/parser/Tokeniser;->notCharRefCharsSorted:[C

    const/16 v1, 0x20

    new-array v1, v1, [I

    fill-array-data v1, :array_22

    sput-object v1, Lorg/jsoup/parser/Tokeniser;->win1252Extensions:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_16
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_22
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method constructor <init>(Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/ParseErrorList;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->state:Lorg/jsoup/parser/TokeniserState;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->emitPending:Lorg/jsoup/parser/Token;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->startPending:Lorg/jsoup/parser/Token$StartTag;

    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$EndTag;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->endPending:Lorg/jsoup/parser/Token$EndTag;

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->startPending:Lorg/jsoup/parser/Token$StartTag;

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    new-instance v0, Lorg/jsoup/parser/Token$Character;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$Character;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    new-instance v0, Lorg/jsoup/parser/Token$Doctype;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$Doctype;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    new-instance v0, Lorg/jsoup/parser/Token$Comment;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$Comment;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->codepointHolder:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->multipointHolder:[I

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    iput-object p2, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    return-void
.end method

.method private varargs characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid character reference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method


# virtual methods
.method advanceTransition(Lorg/jsoup/parser/TokeniserState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->advance()V

    return-void
.end method

.method appropriateEndTagName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    return-object v0
.end method

.method appropriateEndTagSeq()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->lastStartCloseSeq:Ljava/lang/String;

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->lastStartCloseSeq:Ljava/lang/String;

    :cond_19
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->lastStartCloseSeq:Ljava/lang/String;

    return-object v0
.end method

.method consumeCharacterReference(Ljava/lang/Character;Z)[I
    .registers 10

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-ne p1, v0, :cond_19

    return-object v1

    :cond_19
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    sget-object v0, Lorg/jsoup/parser/Tokeniser;->notCharRefCharsSorted:[C

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/CharacterReader;->matchesAnySorted([C)Z

    move-result p1

    if-eqz p1, :cond_24

    return-object v1

    :cond_24
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->codepointHolder:[I

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->mark()V

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ";"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_cd

    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const-string v0, "X"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    if-eqz p2, :cond_4a

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consumeHexSequence()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    :cond_4a
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consumeDigitSequence()Ljava/lang/String;

    move-result-object v0

    :goto_4e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_61

    const-string p1, "numeric reference with no numerals"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    return-object v1

    :cond_61
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->unmark()V

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v2, "missing semicolon on [&#%s]"

    invoke-direct {p0, v2, v1}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_77
    if-eqz p2, :cond_7c

    const/16 p2, 0x10

    goto :goto_7e

    :cond_7c
    const/16 p2, 0xa

    :goto_7e
    const/4 v1, -0x1

    :try_start_7f
    invoke-static {v0, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_7f .. :try_end_87} :catch_88

    goto :goto_8a

    :catch_88
    nop

    const/4 p2, -0x1

    :goto_8a
    if-eq p2, v1, :cond_ba

    const v0, 0xd800

    if-lt p2, v0, :cond_96

    const v0, 0xdfff

    if-le p2, v0, :cond_ba

    :cond_96
    const v0, 0x10ffff

    if-le p2, v0, :cond_9c

    goto :goto_ba

    :cond_9c
    const/16 v0, 0x80

    if-lt p2, v0, :cond_b7

    sget-object v1, Lorg/jsoup/parser/Tokeniser;->win1252Extensions:[I

    array-length v2, v1

    add-int/2addr v2, v0

    if-ge p2, v2, :cond_b7

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "character [%s] is not a valid unicode code point"

    invoke-direct {p0, v2, v0}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p2, p2, -0x80

    aget p2, v1, p2

    :cond_b7
    aput p2, p1, v4

    goto :goto_cc

    :cond_ba
    :goto_ba
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    const-string p2, "character [%s] outside of valid range"

    invoke-direct {p0, p2, v0}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    const p2, 0xfffd

    aput p2, p1, v4

    :goto_cc
    return-object p1

    :cond_cd
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consumeLetterThenDigitSequence()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    move-result v5

    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->isBaseNamedEntity(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ec

    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->isNamedEntity(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ea

    if-eqz v5, :cond_ea

    goto :goto_ec

    :cond_ea
    const/4 v6, 0x0

    goto :goto_ed

    :cond_ec
    :goto_ec
    const/4 v6, 0x1

    :goto_ed
    if-nez v6, :cond_100

    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    if-eqz v5, :cond_ff

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v4

    const-string p2, "invalid named reference [%s]"

    invoke-direct {p0, p2, p1}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ff
    return-object v1

    :cond_100
    if-eqz p2, :cond_126

    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result p2

    if-nez p2, :cond_120

    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->matchesDigit()Z

    move-result p2

    if-nez p2, :cond_120

    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const/4 v5, 0x3

    new-array v5, v5, [C

    fill-array-data v5, :array_168

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/CharacterReader;->matchesAny([C)Z

    move-result p2

    if-eqz p2, :cond_126

    :cond_120
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    return-object v1

    :cond_126
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->unmark()V

    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_13c

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v0, p2, v4

    const-string v1, "missing semicolon on [&%s]"

    invoke-direct {p0, v1, p2}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13c
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->multipointHolder:[I

    invoke-static {v0, p2}, Lorg/jsoup/nodes/Entities;->codepointsForName(Ljava/lang/String;[I)I

    move-result p2

    if-ne p2, v3, :cond_14b

    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->multipointHolder:[I

    aget p2, p2, v4

    aput p2, p1, v4

    return-object p1

    :cond_14b
    const/4 p1, 0x2

    if-ne p2, p1, :cond_151

    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->multipointHolder:[I

    return-object p1

    :cond_151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected characters returned for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->multipointHolder:[I

    return-object p1

    :array_168
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method createBogusCommentPending()V
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Comment;->reset()Lorg/jsoup/parser/Token;

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jsoup/parser/Token$Comment;->bogus:Z

    return-void
.end method

.method createCommentPending()V
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Comment;->reset()Lorg/jsoup/parser/Token;

    return-void
.end method

.method createDoctypePending()V
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->reset()Lorg/jsoup/parser/Token;

    return-void
.end method

.method createTagPending(Z)Lorg/jsoup/parser/Token$Tag;
    .registers 2

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->startPending:Lorg/jsoup/parser/Token$StartTag;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    goto :goto_f

    :cond_9
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->endPending:Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    :goto_f
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    return-object p1
.end method

.method createTempBuffer()V
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method emit(C)V
    .registers 4

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    goto :goto_1f

    :cond_b
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1f
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    iget v0, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Token;->startPos(I)V

    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Token;->endPos(I)V

    return-void
.end method

.method emit(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-nez v0, :cond_7

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    goto :goto_1b

    :cond_7
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1b
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    iget v0, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Token;->startPos(I)V

    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Token;->endPos(I)V

    return-void
.end method

.method emit(Ljava/lang/StringBuilder;)V
    .registers 4

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    goto :goto_1f

    :cond_b
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1f
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    iget v0, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Token;->startPos(I)V

    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Token;->endPos(I)V

    return-void
.end method

.method emit(Lorg/jsoup/parser/Token;)V
    .registers 5

    iget-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->emitPending:Lorg/jsoup/parser/Token;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    iget v1, p0, Lorg/jsoup/parser/Tokeniser;->markupStartPos:I

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Token;->startPos(I)V

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Token;->endPos(I)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v2, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v1, v2, :cond_2b

    check-cast p1, Lorg/jsoup/parser/Token$StartTag;

    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->lastStartCloseSeq:Ljava/lang/String;

    goto :goto_45

    :cond_2b
    sget-object v2, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v1, v2, :cond_45

    check-cast p1, Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_45

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Attributes incorrectly present on end tag [/%s]"

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/Tokeniser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_45
    :goto_45
    return-void
.end method

.method emit([I)V
    .registers 5

    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    return-void
.end method

.method emitCommentPending()V
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method emitDoctypePending()V
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method emitTagPending()V
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->finaliseTag()V

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method eofError(Lorg/jsoup/parser/TokeniserState;)V
    .registers 7

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Unexpectedly reached end of file (EOF) in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1c
    return-void
.end method

.method varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v1, v2, p1, p2}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method error(Lorg/jsoup/parser/TokeniserState;)V
    .registers 8

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_27
    return-void
.end method

.method isAppropriateEndTagToken()Z
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method read()Lorg/jsoup/parser/Token;
    .registers 6

    :goto_0
    iget-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->state:Lorg/jsoup/parser/TokeniserState;

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0, p0, v1}, Lorg/jsoup/parser/TokeniserState;->read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    iput-object v2, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    return-object v0

    :cond_2a
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    iput-object v2, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    return-object v0

    :cond_37
    iput-boolean v3, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->emitPending:Lorg/jsoup/parser/Token;

    return-object v0
.end method

.method transition(Lorg/jsoup/parser/TokeniserState;)V
    .registers 4

    sget-object v0, Lorg/jsoup/parser/Tokeniser$1;->$SwitchMap$org$jsoup$parser$TokeniserState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    goto :goto_25

    :cond_f
    iget v0, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    iput v0, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    goto :goto_25

    :cond_1d
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    iput v0, p0, Lorg/jsoup/parser/Tokeniser;->markupStartPos:I

    :cond_25
    :goto_25
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->state:Lorg/jsoup/parser/TokeniserState;

    return-void
.end method
