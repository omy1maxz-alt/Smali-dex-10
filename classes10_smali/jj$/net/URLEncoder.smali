.class public Ljj$/net/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# static fields
.field static final caseDiff:I = 0x20

.field static dfltEncName:Ljava/lang/String;

.field static dontNeedEncoding:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Ljj$/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Ljj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v0, 0x61

    :goto_e
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1a

    sget-object v1, Ljj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1a
    const/16 v0, 0x41

    :goto_1c
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_28

    sget-object v1, Ljj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_28
    const/16 v0, 0x30

    :goto_2a
    const/16 v1, 0x39

    if-gt v0, v1, :cond_36

    sget-object v1, Ljj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_36
    sget-object v1, Ljj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Ljj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Ljj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Ljj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Ljj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    const-string v1, "file.encoding"

    invoke-static {v1}, Ljj$/sun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljj$/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Ljj$/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v1}, Ljj$/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_14

    :try_start_2
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Ljj$/net/URLEncoder;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_2 .. :try_end_a} :catch_d
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v1

    :catch_b
    move-exception v0

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charsetName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 13

    const-string v0, "charset"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    const/4 v3, 0x0

    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_c3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Ljj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_36

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2e

    const/16 v4, 0x2b

    const/4 v0, 0x1

    :cond_2e
    int-to-char v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c1

    :cond_36
    invoke-virtual {v2, v4}, Ljava/io/CharArrayWriter;->write(I)V

    const v5, 0xd800

    if-lt v4, v5, :cond_60

    const v5, 0xdbff

    if-gt v4, v5, :cond_60

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_60

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xdc00

    if-lt v5, v6, :cond_60

    const v6, 0xdfff

    if-gt v5, v6, :cond_60

    invoke-virtual {v2, v5}, Ljava/io/CharArrayWriter;->write(I)V

    add-int/lit8 v3, v3, 0x1

    :cond_60
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_75

    sget-object v5, Ljj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_36

    :cond_75
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->flush()V

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const/4 v7, 0x0

    :goto_86
    array-length v8, v6

    if-ge v7, v8, :cond_bd

    const/16 v8, 0x25

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v8, v6, v7

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_a3

    add-int/lit8 v10, v8, -0x20

    int-to-char v8, v10

    :cond_a3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v10, v6, v7

    and-int/lit8 v10, v10, 0xf

    invoke-static {v10, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_b7

    add-int/lit8 v9, v8, -0x20

    int-to-char v8, v9

    :cond_b7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_86

    :cond_bd
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->reset()V

    const/4 v0, 0x1

    :goto_c1
    goto/16 :goto_15

    :cond_c3
    if-eqz v0, :cond_ca

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_cb

    :cond_ca
    move-object v3, p0

    :goto_cb
    return-object v3
.end method
