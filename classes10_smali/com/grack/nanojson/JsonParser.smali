.class public final Lcom/grack/nanojson/JsonParser;
.super Ljava/lang/Object;


# instance fields
.field private lazyNumbers:Z

.field private token:I

.field private tokener:Lcom/grack/nanojson/JsonTokener;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/grack/nanojson/JsonTokener;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    iput-boolean p2, p0, Lcom/grack/nanojson/JsonParser;->lazyNumbers:Z

    return-void
.end method

.method private advanceToken(ZZ)I
    .registers 11

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget v1, p2, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/grack/nanojson/JsonTokener;->index:I

    :cond_a
    iget-object p2, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    invoke-virtual {p2, p1}, Lcom/grack/nanojson/JsonTokener;->advanceToToken(Z)I

    move-result p1

    iput p1, p0, Lcom/grack/nanojson/JsonParser;->token:I

    iget p1, p0, Lcom/grack/nanojson/JsonParser;->token:I

    const/16 p2, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_174

    goto/16 :goto_171

    :pswitch_1d  #0xb
    new-instance p1, Lcom/grack/nanojson/JsonArray;

    invoke-direct {p1}, Lcom/grack/nanojson/JsonArray;-><init>()V

    invoke-direct {p0, v2, v2}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_74

    :goto_29
    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->currentValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/grack/nanojson/JsonArray;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/grack/nanojson/JsonParser;->token:I

    if-eq v3, p2, :cond_6b

    invoke-direct {p0, v2, v2}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    move-result v3

    if-ne v3, v4, :cond_3b

    goto :goto_74

    :cond_3b
    iget v3, p0, Lcom/grack/nanojson/JsonParser;->token:I

    if-ne v3, v0, :cond_4f

    invoke-direct {p0, v2, v2}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    move-result v3

    if-eq v3, v4, :cond_46

    goto :goto_29

    :cond_46
    iget-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    const-string p2, "Trailing comma found in array"

    invoke-virtual {p1, v1, p2, v0}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_4f
    iget-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a comma or end of the array instead of "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->token:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v0}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_6b
    iget-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    const-string p2, "Semi-string is not allowed in array"

    invoke-virtual {p1, v1, p2, v0}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_74
    :goto_74
    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    const/16 p1, 0xb

    :goto_78
    iput p1, p0, Lcom/grack/nanojson/JsonParser;->token:I

    return p1

    :pswitch_7b  #0xa
    new-instance p1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {p1}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_13d

    :goto_87
    iget v3, p0, Lcom/grack/nanojson/JsonParser;->token:I

    packed-switch v3, :pswitch_data_188

    :pswitch_8c  #0x9, 0xa, 0xb
    iget-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected STRING, got "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->token:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v0}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :pswitch_a8  #0x5, 0x6, 0x7
    iget-object v3, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    :pswitch_b0  #0x8, 0xc
    iget-object v3, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lcom/grack/nanojson/JsonParser;->token:I

    const-string v6, "Expected COLON, got "

    const/4 v7, 0x2

    if-ne v5, p2, :cond_dc

    invoke-direct {p0, v2, v0}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    move-result v5

    if-ne v5, v7, :cond_c2

    goto :goto_e2

    :cond_c2
    iget-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->token:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v0}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_dc
    invoke-direct {p0, v2, v2}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    move-result v5

    if-ne v5, v7, :cond_123

    :goto_e2
    invoke-direct {p0, v2, v2}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->currentValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/grack/nanojson/JsonObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2, v2}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    move-result v3

    if-ne v3, v4, :cond_f3

    goto :goto_13d

    :cond_f3
    iget v3, p0, Lcom/grack/nanojson/JsonParser;->token:I

    if-ne v3, v0, :cond_107

    invoke-direct {p0, v0, v2}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    move-result v3

    if-eq v3, v4, :cond_fe

    goto :goto_87

    :cond_fe
    iget-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    const-string p2, "Trailing object found in array"

    invoke-virtual {p1, v1, p2, v0}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_107
    iget-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a comma or end of the object instead of "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->token:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v0}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_123
    iget-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->token:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v0}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_13d
    :goto_13d
    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    const/16 p1, 0xa

    goto/16 :goto_78

    :pswitch_143  #0x9
    iget-boolean p1, p0, Lcom/grack/nanojson/JsonParser;->lazyNumbers:Z

    if-eqz p1, :cond_159

    new-instance p1, Lcom/grack/nanojson/JsonLazyNumber;

    iget-object p2, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-object p2, p2, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-boolean v0, v0, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    invoke-direct {p1, p2, v0}, Lcom/grack/nanojson/JsonLazyNumber;-><init>(Ljava/lang/String;Z)V

    goto :goto_16c

    :cond_159
    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->parseNumber()Ljava/lang/Number;

    move-result-object p1

    goto :goto_16c

    :pswitch_15e  #0x8, 0xc
    iget-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-object p1, p1, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_16c

    :pswitch_167  #0x7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_16c

    :pswitch_16a  #0x6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_16c
    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    goto :goto_171

    :pswitch_16f  #0x5
    iput-object v1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    :goto_171
    iget p1, p0, Lcom/grack/nanojson/JsonParser;->token:I

    return p1

    :pswitch_data_174
    .packed-switch 0x5
        :pswitch_16f  #00000005
        :pswitch_16a  #00000006
        :pswitch_167  #00000007
        :pswitch_15e  #00000008
        :pswitch_143  #00000009
        :pswitch_7b  #0000000a
        :pswitch_1d  #0000000b
        :pswitch_15e  #0000000c
    .end packed-switch

    :pswitch_data_188
    .packed-switch 0x5
        :pswitch_a8  #00000005
        :pswitch_a8  #00000006
        :pswitch_a8  #00000007
        :pswitch_b0  #00000008
        :pswitch_8c  #00000009
        :pswitch_8c  #0000000a
        :pswitch_8c  #0000000b
        :pswitch_b0  #0000000c
    .end packed-switch
.end method

.method public static any()Lcom/grack/nanojson/JsonParser$JsonParserContext;
    .registers 2

    new-instance v0, Lcom/grack/nanojson/JsonParser$JsonParserContext;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static array()Lcom/grack/nanojson/JsonParser$JsonParserContext;
    .registers 2

    new-instance v0, Lcom/grack/nanojson/JsonParser$JsonParserContext;

    const-class v1, Lcom/grack/nanojson/JsonArray;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private currentValue()Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/grack/nanojson/JsonParser;->token:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected JSON value, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method public static object()Lcom/grack/nanojson/JsonParser$JsonParserContext;
    .registers 2

    new-instance v0, Lcom/grack/nanojson/JsonParser$JsonParserContext;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private parseNumber()Ljava/lang/Number;
    .registers 7

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-object v0, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_9
    iget-object v2, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-boolean v2, v2, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    if-eqz v2, :cond_18

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2a

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    const/16 v5, 0x2d

    if-ne v2, v4, :cond_44

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_44

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    rsub-int/lit8 v2, v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_44
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_4b

    move v3, v1

    :cond_4b
    if-eqz v3, :cond_53

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_57

    :cond_53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_57
    const/16 v4, 0xa

    if-lt v2, v4, :cond_84

    if-ne v2, v4, :cond_66

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_66

    goto :goto_84

    :cond_66
    const/16 v4, 0x13

    if-lt v2, v4, :cond_7b

    if-ne v2, v4, :cond_75

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-ge v2, v3, :cond_75

    goto :goto_7b

    :cond_75
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_7b
    :goto_7b
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_84
    :goto_84
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_8c} :catch_8d

    return-object v0

    :catch_8d
    move-exception v2

    iget-object v3, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method parse(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->currentValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v0}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4a

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_45

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_45

    :cond_21
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON did not contain the correct type, expected "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1, v2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_45
    :goto_45
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4a
    iget-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Lcom/grack/nanojson/JsonTokener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected end of input, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->token:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0, v2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1
.end method
