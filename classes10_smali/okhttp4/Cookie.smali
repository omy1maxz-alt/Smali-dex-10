.class public final Lokhttp4/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final secure:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp4/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp4/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp4/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp4/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp4/Cookie;->name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp4/Cookie;->value:Ljava/lang/String;

    iput-wide p3, p0, Lokhttp4/Cookie;->expiresAt:J

    iput-object p5, p0, Lokhttp4/Cookie;->domain:Ljava/lang/String;

    iput-object p6, p0, Lokhttp4/Cookie;->path:Ljava/lang/String;

    iput-boolean p7, p0, Lokhttp4/Cookie;->secure:Z

    iput-boolean p8, p0, Lokhttp4/Cookie;->httpOnly:Z

    iput-boolean p9, p0, Lokhttp4/Cookie;->hostOnly:Z

    iput-boolean p10, p0, Lokhttp4/Cookie;->persistent:Z

    return-void
.end method

.method private static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .registers 7

    :goto_0
    if-ge p1, p2, :cond_3b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_f

    const/16 v1, 0x9

    if-ne v0, v1, :cond_32

    :cond_f
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_32

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1b

    const/16 v1, 0x39

    if-le v0, v1, :cond_32

    :cond_1b
    const/16 v1, 0x61

    if-lt v0, v1, :cond_23

    const/16 v1, 0x7a

    if-le v0, v1, :cond_32

    :cond_23
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2b

    const/16 v1, 0x5a

    if-le v0, v1, :cond_32

    :cond_2b
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    :goto_33
    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_38

    return p1

    :cond_38
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3b
    return p2
.end method

.method private static domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_27

    invoke-static {p0}, Lokhttp4/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_27

    return v1

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method static parse(JLokhttp4/HttpUrl;Ljava/lang/String;)Lokhttp4/Cookie;
    .registers 27

    move-object/from16 v0, p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x3b

    invoke-static {v0, v2, v1, v3}, Lokhttp4/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v4

    const/16 v5, 0x3d

    invoke-static {v0, v2, v4, v5}, Lokhttp4/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v4, :cond_17

    return-object v7

    :cond_17
    invoke-static {v0, v2, v6}, Lokhttp4/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_135

    invoke-static {v9}, Lokhttp4/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_2a

    goto/16 :goto_135

    :cond_2a
    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-static {v0, v6, v4}, Lokhttp4/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lokhttp4/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v10, :cond_37

    return-object v7

    :cond_37
    add-int/2addr v4, v8

    const-wide/16 v10, -0x1

    const-wide v12, 0xe677d21fdbffL

    move-object v8, v7

    move-object v14, v8

    move-wide/from16 v19, v10

    move-wide/from16 v21, v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    :goto_4c
    if-ge v4, v1, :cond_ba

    invoke-static {v0, v4, v1, v3}, Lokhttp4/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v7

    invoke-static {v0, v4, v7, v5}, Lokhttp4/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v3

    invoke-static {v0, v4, v3}, Lokhttp4/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    if-ge v3, v7, :cond_63

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3, v7}, Lokhttp4/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_65

    :cond_63
    const-string v3, ""

    :goto_65
    const-string v5, "expires"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    :try_start_6d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v2, v4}, Lokhttp4/Cookie;->parseExpires(Ljava/lang/String;II)J

    move-result-wide v21
    :try_end_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_75} :catch_b2

    goto :goto_82

    :cond_76
    const-string v5, "max-age"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    :try_start_7e
    invoke-static {v3}, Lokhttp4/Cookie;->parseMaxAge(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_82
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_82} :catch_b2

    :goto_82
    const/16 v18, 0x1

    goto :goto_b2

    :cond_85
    const-string v5, "domain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    :try_start_8d
    invoke-static {v3}, Lokhttp4/Cookie;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8d .. :try_end_91} :catch_b2

    const/16 v17, 0x0

    goto :goto_b2

    :cond_94
    const-string v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    move-object v8, v3

    goto :goto_b2

    :cond_9e
    const-string v3, "secure"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a8

    const/4 v15, 0x1

    goto :goto_b2

    :cond_a8
    const-string v3, "httponly"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b2

    const/16 v16, 0x1

    :catch_b2
    :cond_b2
    :goto_b2
    add-int/lit8 v4, v7, 0x1

    const/16 v3, 0x3b

    const/16 v5, 0x3d

    const/4 v7, 0x0

    goto :goto_4c

    :cond_ba
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v3, v19, v0

    if-nez v3, :cond_c2

    :cond_c0
    move-wide v11, v0

    goto :goto_e7

    :cond_c2
    cmp-long v0, v19, v10

    if-eqz v0, :cond_e5

    const-wide v0, 0x20c49ba5e353f7L

    cmp-long v3, v19, v0

    if-gtz v3, :cond_d4

    const-wide/16 v0, 0x3e8

    mul-long v19, v19, v0

    goto :goto_d9

    :cond_d4
    const-wide v19, 0x7fffffffffffffffL

    :goto_d9
    add-long v0, p0, v19

    cmp-long v3, v0, p0

    if-ltz v3, :cond_e3

    cmp-long v3, v0, v12

    if-lez v3, :cond_c0

    :cond_e3
    move-wide v11, v12

    goto :goto_e7

    :cond_e5
    move-wide/from16 v11, v21

    :goto_e7
    invoke-virtual/range {p2 .. p2}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    if-nez v14, :cond_f0

    move-object v13, v0

    const/4 v1, 0x0

    goto :goto_fa

    :cond_f0
    invoke-static {v0, v14}, Lokhttp4/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f8

    const/4 v1, 0x0

    return-object v1

    :cond_f8
    const/4 v1, 0x0

    move-object v13, v14

    :goto_fa
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_10f

    invoke-static {}, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->get()Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    invoke-virtual {v0, v13}, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10f

    return-object v1

    :cond_10f
    const-string v0, "/"

    if-eqz v8, :cond_11c

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11a

    goto :goto_11c

    :cond_11a
    move-object v14, v8

    goto :goto_12d

    :cond_11c
    :goto_11c
    invoke-virtual/range {p2 .. p2}, Lokhttp4/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eqz v3, :cond_12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_12c
    move-object v14, v0

    :goto_12d
    new-instance v0, Lokhttp4/Cookie;

    move-object v8, v0

    move-object v10, v6

    invoke-direct/range {v8 .. v18}, Lokhttp4/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    return-object v0

    :cond_135
    :goto_135
    move-object v0, v7

    return-object v0
.end method

.method public static parse(Lokhttp4/HttpUrl;Ljava/lang/String;)Lokhttp4/Cookie;
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lokhttp4/Cookie;->parse(JLokhttp4/HttpUrl;Ljava/lang/String;)Lokhttp4/Cookie;

    move-result-object p0

    return-object p0
.end method

.method public static parseAll(Lokhttp4/HttpUrl;Lokhttp4/Headers;)Ljava/util/List;
    .registers 6

    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lokhttp4/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_28

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lokhttp4/Cookie;->parse(Lokhttp4/HttpUrl;Ljava/lang/String;)Lokhttp4/Cookie;

    move-result-object v3

    if-nez v3, :cond_1b

    goto :goto_25

    :cond_1b
    if-nez v1, :cond_22

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_22
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_28
    if-eqz v1, :cond_2f

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_33

    :cond_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_33
    return-object p0
.end method

.method private static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_13
    invoke-static {p0}, Lokhttp4/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static parseExpires(Ljava/lang/String;II)J
    .registers 15

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp4/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result p1

    sget-object v1, Lokhttp4/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_12
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge p1, p2, :cond_9f

    add-int/lit8 v11, p1, 0x1

    invoke-static {p0, v11, p2, v10}, Lokhttp4/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v11

    invoke-virtual {v1, p1, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    if-ne v4, v2, :cond_47

    sget-object p1, Lokhttp4/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_97

    :cond_47
    if-ne v5, v2, :cond_5e

    sget-object p1, Lokhttp4/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_97

    :cond_5e
    if-ne v6, v2, :cond_81

    sget-object p1, Lokhttp4/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_81

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 v6, p1, 0x4

    goto :goto_97

    :cond_81
    if-ne v3, v2, :cond_97

    sget-object p1, Lokhttp4/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_97

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_97
    :goto_97
    add-int/lit8 v11, v11, 0x1

    invoke-static {p0, v11, p2, v0}, Lokhttp4/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result p1

    goto/16 :goto_12

    :cond_9f
    const/16 p0, 0x46

    if-lt v3, p0, :cond_a9

    const/16 p0, 0x63

    if-gt v3, p0, :cond_a9

    add-int/lit16 v3, v3, 0x76c

    :cond_a9
    if-ltz v3, :cond_b1

    const/16 p0, 0x45

    if-gt v3, p0, :cond_b1

    add-int/lit16 v3, v3, 0x7d0

    :cond_b1
    const/16 p0, 0x641

    if-lt v3, p0, :cond_119

    if-eq v6, v2, :cond_113

    if-lt v5, v10, :cond_10d

    const/16 p0, 0x1f

    if-gt v5, p0, :cond_10d

    if-ltz v4, :cond_107

    const/16 p0, 0x17

    if-gt v4, p0, :cond_107

    if-ltz v7, :cond_101

    const/16 p0, 0x3b

    if-gt v7, p0, :cond_101

    if-ltz v8, :cond_fb

    if-gt v8, p0, :cond_fb

    new-instance p0, Ljava/util/GregorianCalendar;

    sget-object p1, Lokhttp4/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {p0, v10, v3}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v6, v10

    invoke-virtual {p0, v9, v6}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v7}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v8}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    :cond_fb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_101
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_107
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_10d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_113
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_119
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_120

    :goto_11f
    throw p0

    :goto_120
    goto :goto_11f
.end method

.method private static parseMaxAge(Ljava/lang/String;)J
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_f

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_d

    goto :goto_e

    :cond_d
    move-wide v0, v2

    :goto_e
    return-wide v0

    :catch_f
    move-exception v2

    const-string v3, "-?\\d+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_26

    :cond_21
    const-wide v0, 0x7fffffffffffffffL

    :goto_26
    return-wide v0

    :cond_27
    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Lokhttp4/Cookie;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lokhttp4/Cookie;

    iget-object v0, p1, Lokhttp4/Cookie;->name:Ljava/lang/String;

    iget-object v2, p0, Lokhttp4/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lokhttp4/Cookie;->value:Ljava/lang/String;

    iget-object v2, p0, Lokhttp4/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lokhttp4/Cookie;->domain:Ljava/lang/String;

    iget-object v2, p0, Lokhttp4/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lokhttp4/Cookie;->path:Ljava/lang/String;

    iget-object v2, p0, Lokhttp4/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-wide v2, p1, Lokhttp4/Cookie;->expiresAt:J

    iget-wide v4, p0, Lokhttp4/Cookie;->expiresAt:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_51

    iget-boolean v0, p1, Lokhttp4/Cookie;->secure:Z

    iget-boolean v2, p0, Lokhttp4/Cookie;->secure:Z

    if-ne v0, v2, :cond_51

    iget-boolean v0, p1, Lokhttp4/Cookie;->httpOnly:Z

    iget-boolean v2, p0, Lokhttp4/Cookie;->httpOnly:Z

    if-ne v0, v2, :cond_51

    iget-boolean v0, p1, Lokhttp4/Cookie;->persistent:Z

    iget-boolean v2, p0, Lokhttp4/Cookie;->persistent:Z

    if-ne v0, v2, :cond_51

    iget-boolean p1, p1, Lokhttp4/Cookie;->hostOnly:Z

    iget-boolean v0, p0, Lokhttp4/Cookie;->hostOnly:Z

    if-ne p1, v0, :cond_51

    const/4 v1, 0x1

    :cond_51
    return v1
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lokhttp4/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lokhttp4/Cookie;->expiresAt:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lokhttp4/Cookie;->secure:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lokhttp4/Cookie;->httpOnly:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lokhttp4/Cookie;->persistent:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lokhttp4/Cookie;->hostOnly:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp4/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp4/Cookie;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp4/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp4/Cookie;->persistent:Z

    if-eqz v1, :cond_39

    iget-wide v1, p0, Lokhttp4/Cookie;->expiresAt:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_26

    const-string v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_26
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lokhttp4/Cookie;->expiresAt:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lokhttp4/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    :goto_39
    iget-boolean v1, p0, Lokhttp4/Cookie;->hostOnly:Z

    if-nez v1, :cond_4e

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_49

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    iget-object p1, p0, Lokhttp4/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    const-string p1, "; path="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lokhttp4/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lokhttp4/Cookie;->secure:Z

    if-eqz p1, :cond_61

    const-string p1, "; secure"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    iget-boolean p1, p0, Lokhttp4/Cookie;->httpOnly:Z

    if-eqz p1, :cond_6a

    const-string p1, "; httponly"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public value()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp4/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method
