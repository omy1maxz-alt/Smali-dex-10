.class public Ljj$/net/URLDecoder;
.super Ljava/lang/Object;
.source "URLDecoder.java"


# static fields
.field static dfltEncName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljj$/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    sput-object v0, Ljj$/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Ljj$/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v1}, Ljj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    goto :goto_a

    :catch_9
    move-exception v1

    :goto_a
    return-object v0
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    :try_start_6
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Ljj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_6 .. :try_end_e} :catch_11
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    move-exception v0

    goto :goto_12

    :catch_11
    move-exception v0

    :goto_12
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    const-string v1, "URLDecoder: empty string enc parameter"

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 14

    const-string v0, "Charset"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f4

    if-le v1, v3, :cond_13

    div-int/lit8 v3, v1, 0x2

    goto :goto_14

    :cond_13
    move v3, v1

    :goto_14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    if-ge v3, v1, :cond_f0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_fa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :sswitch_28
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x1

    goto :goto_19

    :sswitch_31
    if-nez v4, :cond_3e

    sub-int v6, v1, v3

    :try_start_35
    div-int/lit8 v6, v6, 0x3

    new-array v6, v6, [B

    move-object v4, v6

    goto :goto_3e

    :catch_3b
    move-exception v6

    goto/16 :goto_d3

    :cond_3e
    :goto_3e
    const/4 v6, 0x0

    :goto_3f
    add-int/lit8 v7, v3, 0x2

    const/16 v8, 0x25

    if-ge v7, v1, :cond_b9

    if-ne v5, v8, :cond_b9

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljj$/net/URLDecoder;->isValidHexChar(C)Z

    move-result v7

    if-eqz v7, :cond_9a

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljj$/net/URLDecoder;->isValidHexChar(C)Z

    move-result v7

    if-eqz v7, :cond_9a

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v3, 0x3

    const/16 v9, 0x10

    invoke-static {p0, v7, v8, v9}, Ljj$/net/URLDecoder$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;III)I

    move-result v7

    if-ltz v7, :cond_7b

    add-int/lit8 v8, v6, 0x1

    int-to-byte v9, v7

    aput-byte v9, v4, v6

    add-int/lit8 v3, v3, 0x3

    if-ge v3, v1, :cond_79

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    :cond_79
    move v6, v8

    goto :goto_3f

    :cond_7b
    new-instance v8, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v9, v3, 0x3

    invoke-virtual {p0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URLDecoder: Illegal hex characters in escape (%) pattern - negative value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URLDecoder: Illegal hex characters in escape (%) pattern : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b9
    if-ge v3, v1, :cond_c6

    if-eq v5, v8, :cond_be

    goto :goto_c6

    :cond_be
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "URLDecoder: Incomplete trailing escape (%) pattern"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_c6
    :goto_c6
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v6, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_cf
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_cf} :catch_3b

    nop

    const/4 v0, 0x1

    goto/16 :goto_19

    :goto_d3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URLDecoder: Illegal hex characters in escape (%) pattern - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_f0
    if-eqz v0, :cond_f7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_f8

    :cond_f7
    move-object v5, p0

    :goto_f8
    return-object v5

    nop

    :sswitch_data_fa
    .sparse-switch
        0x25 -> :sswitch_31
        0x2b -> :sswitch_28
    .end sparse-switch
.end method

.method private static isValidHexChar(C)Z
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method
