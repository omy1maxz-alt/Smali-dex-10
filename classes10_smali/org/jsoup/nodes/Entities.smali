.class public abstract Lorg/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# static fields
.field private static DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

.field private static final codeDelims:[C

.field private static final multipoints:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    sput-object v0, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    return-void

    :array_10
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method static synthetic access$000(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/jsoup/nodes/Entities;->load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V

    return-void
.end method

.method private static appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V
    .registers 5

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Entities$EscapeMode;->nameForCodepoint(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3b

    if-nez v0, :cond_1c

    const/16 p2, 0x26

    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2d

    :cond_1c
    const-string p1, "&#x"

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_2d
    return-void
.end method

.method private static canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z
    .registers 5

    sget-object v0, Lorg/jsoup/nodes/Entities$1;->$SwitchMap$org$jsoup$nodes$Entities$CoreCharset:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v1, 0x2

    if-eq p0, v1, :cond_13

    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result p0

    return p0

    :cond_13
    return v0

    :cond_14
    const/16 p0, 0x80

    if-ge p1, p0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public static codepointsForName(Ljava/lang/String;[I)I
    .registers 5

    sget-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v1

    const/4 p0, 0x2

    return p0

    :cond_1a
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_26

    aput p0, p1, v2

    return v1

    :cond_26
    return v2
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lorg/jsoup/nodes/Entities;->DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

    if-nez v0, :cond_b

    new-instance v0, Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/Entities;->DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

    :cond_b
    sget-object v0, Lorg/jsoup/nodes/Entities;->DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escape(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .registers 10

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    :try_start_10
    invoke-static/range {v0 .. v6}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZZ)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_18

    invoke-static {v7}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_18
    move-exception p0

    new-instance p1, Lorg/jsoup/SerializationException;

    invoke-direct {p1, p0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZZ)V
    .registers 23

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode()Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/nodes/Document$OutputSettings;->encoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    move-object/from16 v3, p2

    iget-object v4, v3, Lorg/jsoup/nodes/Document$OutputSettings;->coreCharset:Lorg/jsoup/nodes/Entities$CoreCharset;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_17
    if-ge v7, v5, :cond_e7

    move-object/from16 v11, p1

    invoke-virtual {v11, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    const/16 v13, 0x20

    if-eqz p4, :cond_47

    invoke-static {v12}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_3f

    if-eqz p5, :cond_30

    if-nez v9, :cond_30

    goto/16 :goto_e0

    :cond_30
    if-eqz v10, :cond_34

    goto/16 :goto_e0

    :cond_34
    if-eqz p6, :cond_39

    const/4 v8, 0x1

    goto/16 :goto_e0

    :cond_39
    invoke-interface {v0, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v10, 0x1

    goto/16 :goto_e0

    :cond_3f
    if-eqz v8, :cond_45

    invoke-interface {v0, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v8, 0x0

    :cond_45
    const/4 v9, 0x1

    const/4 v10, 0x0

    :cond_47
    const/high16 v14, 0x10000

    if-ge v12, v14, :cond_ca

    int-to-char v14, v12

    const/16 v15, 0x9

    if-eq v14, v15, :cond_c6

    const/16 v15, 0xa

    if-eq v14, v15, :cond_c6

    const/16 v15, 0xd

    if-eq v14, v15, :cond_c6

    const/16 v15, 0x22

    if-eq v14, v15, :cond_ba

    const/16 v15, 0x26

    if-eq v14, v15, :cond_b4

    const/16 v15, 0x3c

    if-eq v14, v15, :cond_9b

    const/16 v15, 0x3e

    if-eq v14, v15, :cond_8f

    const/16 v15, 0xa0

    if-eq v14, v15, :cond_7f

    if-lt v14, v13, :cond_7a

    invoke-static {v4, v14, v2}, Lorg/jsoup/nodes/Entities;->canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    move-result v13

    if-nez v13, :cond_75

    goto :goto_7a

    :cond_75
    invoke-interface {v0, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/16 :goto_e0

    :cond_7a
    :goto_7a
    invoke-static {v0, v1, v12}, Lorg/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    goto/16 :goto_e0

    :cond_7f
    sget-object v13, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-eq v1, v13, :cond_89

    const-string v13, "&nbsp;"

    invoke-interface {v0, v13}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_e0

    :cond_89
    const-string v13, "&#xa0;"

    invoke-interface {v0, v13}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_e0

    :cond_8f
    if-nez p3, :cond_97

    const-string v13, "&gt;"

    invoke-interface {v0, v13}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_e0

    :cond_97
    invoke-interface {v0, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_e0

    :cond_9b
    if-eqz p3, :cond_ae

    sget-object v13, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-eq v1, v13, :cond_ae

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v13

    sget-object v15, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v13, v15, :cond_aa

    goto :goto_ae

    :cond_aa
    invoke-interface {v0, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_e0

    :cond_ae
    :goto_ae
    const-string v13, "&lt;"

    invoke-interface {v0, v13}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_e0

    :cond_b4
    const-string v13, "&amp;"

    invoke-interface {v0, v13}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_e0

    :cond_ba
    if-eqz p3, :cond_c2

    const-string v13, "&quot;"

    invoke-interface {v0, v13}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_e0

    :cond_c2
    invoke-interface {v0, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_e0

    :cond_c6
    invoke-interface {v0, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_e0

    :cond_ca
    new-instance v13, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v13}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_dd

    invoke-interface {v0, v13}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_e0

    :cond_dd
    invoke-static {v0, v1, v12}, Lorg/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    :goto_e0
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v7, v12

    goto/16 :goto_17

    :cond_e7
    return-void
.end method

.method public static isBaseNamedEntity(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static isNamedEntity(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private static load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .registers 13

    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$102(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;

    new-array v0, p2, [I

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$202(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I

    new-array v0, p2, [I

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$302(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I

    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$402(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;

    new-instance v0, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_8d

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    sget-object v4, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    invoke-virtual {v0, v4}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v6

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    const/16 v7, 0x2c

    const/4 v8, -0x1

    if-ne v6, v7, :cond_51

    const/16 v6, 0x3b

    invoke-virtual {v0, v6}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    goto :goto_52

    :cond_51
    const/4 v6, -0x1

    :goto_52
    const/16 v7, 0x26

    invoke-virtual {v0, v7}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$100(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;

    move-result-object v7

    aput-object v2, v7, v1

    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$200(Lorg/jsoup/nodes/Entities$EscapeMode;)[I

    move-result-object v7

    aput v4, v7, v1

    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$300(Lorg/jsoup/nodes/Entities$EscapeMode;)[I

    move-result-object v7

    aput v4, v7, v5

    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$400(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;

    move-result-object v7

    aput-object v2, v7, v5

    if-eq v6, v8, :cond_8a

    sget-object v5, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v4, v9, p1

    aput v6, v9, v3

    invoke-direct {v7, v9, p1, v8}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v5, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_8d
    if-ne v1, p2, :cond_90

    const/4 p1, 0x1

    :cond_90
    const-string p0, "Unexpected count of entities loaded"

    invoke-static {p1, p0}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V
    :try_end_95
    .catchall {:try_start_1b .. :try_end_95} :catchall_99

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->close()V

    return-void

    :catchall_99
    move-exception p0

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->close()V

    throw p0
.end method
