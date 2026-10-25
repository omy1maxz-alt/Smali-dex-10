.class public abstract Lorg/jsoup/internal/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final controlChars:Ljava/util/regex/Pattern;

.field private static final extraDotSegmentsPattern:Ljava/util/regex/Pattern;

.field static final padding:[Ljava/lang/String;

.field private static final threadLocalBuilders:Ljava/lang/ThreadLocal;

.field private static final validUriScheme:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    const-string v0, ""

    const-string v1, " "

    const-string v2, "  "

    const-string v3, "   "

    const-string v4, "    "

    const-string v5, "     "

    const-string v6, "      "

    const-string v7, "       "

    const-string v8, "        "

    const-string v9, "         "

    const-string v10, "          "

    const-string v11, "           "

    const-string v12, "            "

    const-string v13, "             "

    const-string v14, "              "

    const-string v15, "               "

    const-string v16, "                "

    const-string v17, "                 "

    const-string v18, "                  "

    const-string v19, "                   "

    const-string v20, "                    "

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    const-string v0, "^/((\\.{1,2}/)+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->extraDotSegmentsPattern:Ljava/util/regex/Pattern;

    const-string v0, "^[a-zA-Z][a-zA-Z0-9+-.]*:"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->validUriScheme:Ljava/util/regex/Pattern;

    const-string v0, "[\\x00-\\x1f]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->controlChars:Ljava/util/regex/Pattern;

    new-instance v0, Lorg/jsoup/internal/StringUtil$1;

    invoke-direct {v0}, Lorg/jsoup/internal/StringUtil$1;-><init>()V

    sput-object v0, Lorg/jsoup/internal/StringUtil;->threadLocalBuilders:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v2, v0, :cond_34

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Lorg/jsoup/internal/StringUtil;->isActuallyWhitespace(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_23

    if-eqz p2, :cond_19

    if-eqz v3, :cond_2e

    :cond_19
    if-eqz v4, :cond_1c

    goto :goto_2e

    :cond_1c
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_2e

    :cond_23
    invoke-static {v5}, Lorg/jsoup/internal/StringUtil;->isInvisibleChar(I)Z

    move-result v6

    if-nez v6, :cond_2e

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    :cond_2e
    :goto_2e
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_8

    :cond_34
    return-void
.end method

.method public static borrowBuilder()Ljava/lang/StringBuilder;
    .registers 2

    sget-object v0, Lorg/jsoup/internal/StringUtil;->threadLocalBuilders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1c

    :cond_16
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    :goto_1c
    return-object v0
.end method

.method public static varargs in(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public static inSorted(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 2

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isActuallyWhitespace(I)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_20

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_20

    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_1d

    return v2

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_20
    :goto_20
    return v0
.end method

.method public static isInvisibleChar(I)Z
    .registers 2

    const/16 v0, 0x200b

    if-eq p0, v0, :cond_b

    const/16 v0, 0xad

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1f

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method public static isWhitespace(I)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    const/16 v0, 0xa

    if-eq p0, v0, :cond_17

    const/16 v0, 0xc

    if-eq p0, v0, :cond_17

    const/16 v0, 0xd

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_18

    return-object v0

    :cond_18
    new-instance v1, Lorg/jsoup/internal/StringUtil$StringJoiner;

    invoke-direct {v1, p1}, Lorg/jsoup/internal/StringUtil$StringJoiner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/jsoup/internal/StringUtil$StringJoiner;->add(Ljava/lang/Object;)Lorg/jsoup/internal/StringUtil$StringJoiner;

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jsoup/internal/StringUtil$StringJoiner;->add(Ljava/lang/Object;)Lorg/jsoup/internal/StringUtil$StringJoiner;

    goto :goto_20

    :cond_2e
    invoke-virtual {v1}, Lorg/jsoup/internal/StringUtil$StringJoiner;->complete()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/jsoup/internal/StringUtil;->appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static padding(II)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string/jumbo v3, "width must be >= 0"

    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    const/4 v2, -0x1

    if-lt p1, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    if-eq p1, v2, :cond_1b

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_1b
    sget-object p1, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    array-length v0, p1

    if-ge p0, v0, :cond_23

    aget-object p0, p1, p0

    return-object p0

    :cond_23
    new-array p1, p0, [C

    :goto_25
    if-ge v1, p0, :cond_2e

    const/16 v0, 0x20

    aput-char v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_2e
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_15

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1d

    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_1d
    sget-object v1, Lorg/jsoup/internal/StringUtil;->threadLocalBuilders:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    const/16 v2, 0x8

    if-le p0, v2, :cond_34

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_28

    :cond_34
    return-object v0
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->stripControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->stripControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_8
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_d} :catch_16

    :try_start_d
    invoke-static {v0, p1}, Lorg/jsoup/internal/StringUtil;->resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_16
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    nop

    sget-object p0, Lorg/jsoup/internal/StringUtil;->validUriScheme:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_30

    :cond_2e
    const-string p1, ""

    :goto_30
    return-object p1
.end method

.method public static resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 5

    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->stripControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1f
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    sget-object p0, Lorg/jsoup/internal/StringUtil;->extraDotSegmentsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_52

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_52
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-direct {p1, v1, v2, v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method private static stripControlChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lorg/jsoup/internal/StringUtil;->controlChars:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
