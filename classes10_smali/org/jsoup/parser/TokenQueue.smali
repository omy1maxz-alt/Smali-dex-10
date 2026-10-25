.class public Lorg/jsoup/parser/TokenQueue;
.super Ljava/lang/Object;
.source "TokenQueue.java"


# static fields
.field private static final CssIdentifierChars:[Ljava/lang/String;

.field private static final ElementSelectorChars:[Ljava/lang/String;


# instance fields
.field private pos:I

.field private queue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "*|"

    const-string/jumbo v1, "|"

    const-string v2, "_"

    const-string v3, "-"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/TokenQueue;->ElementSelectorChars:[Ljava/lang/String;

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/TokenQueue;->CssIdentifierChars:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    return-void
.end method

.method private varargs consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    const/4 v4, 0x1

    if-ne v2, v3, :cond_24

    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v2

    if-le v2, v4, :cond_24

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 v1, 0x1

    goto :goto_3

    :cond_24
    invoke-direct {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchesCssIdentifier([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_3

    :cond_30
    iget-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_3e

    invoke-static {p1}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3e
    return-object p1
.end method

.method private varargs matchesCssIdentifier([Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private remainingLength()I
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v3, v1, :cond_22

    aget-char v5, p0, v3

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_1b

    if-ne v4, v6, :cond_1e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1e
    move v4, v5

    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_22
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public chompBalanced(CC)Ljava/lang/String;
    .registers 14

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_9
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_55

    :cond_10
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v9

    const/16 v10, 0x5c

    if-eq v2, v10, :cond_42

    const/16 v10, 0x27

    if-ne v9, v10, :cond_23

    if-eq v9, p1, :cond_23

    if-nez v3, :cond_23

    xor-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_23
    const/16 v10, 0x22

    if-ne v9, v10, :cond_2d

    if-eq v9, p1, :cond_2d

    if-nez v4, :cond_2d

    xor-int/lit8 v3, v3, 0x1

    :cond_2d
    :goto_2d
    if-nez v4, :cond_53

    if-nez v3, :cond_53

    if-eqz v8, :cond_34

    goto :goto_53

    :cond_34
    if-ne v9, p1, :cond_3d

    add-int/lit8 v7, v7, 0x1

    if-ne v5, v0, :cond_4d

    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_4d

    :cond_3d
    if-ne v9, p2, :cond_4d

    add-int/lit8 v7, v7, -0x1

    goto :goto_4d

    :cond_42
    const/16 v10, 0x51

    if-ne v9, v10, :cond_48

    const/4 v8, 0x1

    goto :goto_4d

    :cond_48
    const/16 v10, 0x45

    if-ne v9, v10, :cond_4d

    const/4 v8, 0x0

    :cond_4d
    :goto_4d
    if-lez v7, :cond_53

    if-eqz v2, :cond_53

    iget v6, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    :cond_53
    :goto_53
    if-gtz v7, :cond_7c

    :goto_55
    if-ltz v6, :cond_5e

    iget-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_60

    :cond_5e
    const-string p1, ""

    :goto_60
    if-lez v7, :cond_7b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Did not find balanced marker at \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    :cond_7b
    return-object p1

    :cond_7c
    move v2, v9

    goto :goto_9
.end method

.method public chompTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    return-object v0
.end method

.method public consume()C
    .registers 4

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public consume(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v0

    if-gt p1, v0, :cond_16

    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue not long enough to consume sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue did not match expected sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consumeCssIdentifier()Ljava/lang/String;
    .registers 2

    sget-object v0, Lorg/jsoup/parser/TokenQueue;->CssIdentifierChars:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/TokenQueue;->consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public consumeElementSelector()Ljava/lang/String;
    .registers 2

    sget-object v0, Lorg/jsoup/parser/TokenQueue;->ElementSelectorChars:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/TokenQueue;->consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    return-object p1

    :cond_1d
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs consumeToAny([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    :goto_2
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_2

    :cond_15
    iget-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public consumeWhitespace()Z
    .registers 3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWhitespace()Z

    move-result v1

    if-eqz v1, :cond_f

    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_f
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public matchChomp(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    const/4 v1, 0x1

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public varargs matchesAny([C)Z
    .registers 8

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    array-length v0, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1d

    aget-char v3, p1, v2

    iget-object v4, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1d
    return v1
.end method

.method public varargs matchesAny([Ljava/lang/String;)Z
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public matchesWhitespace()Z
    .registers 3

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public matchesWord()Z
    .registers 3

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public remainder()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
