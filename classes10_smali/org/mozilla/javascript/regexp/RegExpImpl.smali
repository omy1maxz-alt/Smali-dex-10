.class public Lorg/mozilla/javascript/regexp/RegExpImpl;
.super Ljava/lang/Object;
.source "RegExpImpl.java"

# interfaces
.implements Lorg/mozilla/javascript/RegExpProxy;


# instance fields
.field protected input:Ljava/lang/String;

.field protected lastMatch:Lorg/mozilla/javascript/regexp/SubString;

.field protected lastParen:Lorg/mozilla/javascript/regexp/SubString;

.field protected leftContext:Lorg/mozilla/javascript/regexp/SubString;

.field protected multiline:Z

.field protected parens:[Lorg/mozilla/javascript/regexp/SubString;

.field protected rightContext:Lorg/mozilla/javascript/regexp/SubString;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .registers 8

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    array-length v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    aget-object v0, p2, v1

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v2, :cond_f

    goto :goto_37

    :cond_f
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v0, :cond_1a

    aget-object p0, p2, v1

    check-cast p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    goto :goto_43

    :cond_1a
    aget-object v0, p2, v1

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    array-length v2, p2

    if-ge p3, v2, :cond_2c

    aput-object v0, p2, v1

    aget-object p2, p2, p3

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2d

    :cond_2c
    const/4 p2, 0x0

    :goto_2d
    invoke-static {p0, v0, p2, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object p0

    new-instance p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {p2, p1, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V

    goto :goto_42

    :cond_37
    :goto_37
    const-string p2, ""

    invoke-static {p0, p2, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object p0

    new-instance p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {p2, p1, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V

    :goto_42
    move-object p0, p2

    :goto_43
    return-object p0
.end method

.method private static do_replace(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;)V
    .registers 11

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    iget p0, p0, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p0, v3, :cond_3c

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    :cond_e
    invoke-virtual {v1, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v1, p0, v3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v4

    if-eqz v4, :cond_2e

    iget v5, v4, Lorg/mozilla/javascript/regexp/SubString;->length:I

    if-lez v5, :cond_27

    iget-object v6, v4, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iget v4, v4, Lorg/mozilla/javascript/regexp/SubString;->index:I

    add-int/2addr v5, v4

    invoke-virtual {v0, v6, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_27
    aget v4, v3, v2

    add-int/2addr v4, p0

    aget v5, v3, v2

    add-int/2addr p0, v5

    goto :goto_33

    :cond_2e
    add-int/lit8 v4, p0, 0x1

    move v7, v4

    move v4, p0

    move p0, v7

    :goto_33
    const/16 v5, 0x24

    invoke-virtual {v1, v5, p0}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-gez p0, :cond_e

    move v2, v4

    :cond_3c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, v2, :cond_49

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    return-void
.end method

.method private static find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I
    .registers 22

    move-object v3, p2

    move-object v4, p3

    move v0, p4

    const/4 v1, 0x0

    aget v2, p7, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x78

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v0, v6, :cond_59

    if-nez p6, :cond_59

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v8, :cond_59

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_59

    if-nez v2, :cond_33

    :goto_22
    if-ge v2, v5, :cond_31

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_31

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_31
    aput v2, p7, v1

    :cond_33
    if-ne v2, v5, :cond_36

    return v7

    :cond_36
    :goto_36
    if-ge v2, v5, :cond_45

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_45

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_45
    move v0, v2

    :goto_46
    if-ge v0, v5, :cond_55

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_55

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_55
    sub-int/2addr v0, v2

    aput v0, p8, v1

    return v2

    :cond_59
    if-le v2, v5, :cond_5c

    return v7

    :cond_5c
    if-eqz p6, :cond_73

    move-object/from16 v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-interface/range {v0 .. v9}, Lorg/mozilla/javascript/RegExpProxy;->find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_73
    if-eqz v0, :cond_7c

    const/16 v9, 0x82

    if-ge v0, v9, :cond_7c

    if-nez v5, :cond_7c

    return v7

    :cond_7c
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_91

    if-ne v0, v6, :cond_8b

    if-ne v2, v5, :cond_89

    aput v8, p8, v1

    return v2

    :cond_89
    add-int/2addr v2, v8

    return v2

    :cond_8b
    if-ne v2, v5, :cond_8e

    goto :goto_90

    :cond_8e
    add-int/lit8 v7, v2, 0x1

    :goto_90
    return v7

    :cond_91
    aget v0, p7, v1

    if-lt v0, v5, :cond_96

    return v5

    :cond_96
    aget v0, p7, v1

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_9f

    move v5, v0

    :cond_9f
    return v5
.end method

.method private static interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;
    .registers 12

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_b

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_b
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    const/16 v0, 0x8c

    const/4 v2, 0x0

    if-eqz p0, :cond_23

    if-gt p0, v0, :cond_23

    if-lez p3, :cond_23

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_23

    return-object v2

    :cond_23
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, p3, 0x1

    if-lt v4, v3, :cond_2c

    return-object v2

    :cond_2c
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8d

    const/16 v1, 0x30

    if-eqz p0, :cond_5a

    if-gt p0, v0, :cond_5a

    if-ne v4, v1, :cond_40

    return-object v2

    :cond_40
    move p0, p3

    const/4 v0, 0x0

    :goto_42
    add-int/lit8 p0, p0, 0x1

    if-ge p0, v3, :cond_83

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_83

    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    if-ge v2, v0, :cond_58

    goto :goto_83

    :cond_58
    move v0, v2

    goto :goto_42

    :cond_5a
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-nez p0, :cond_60

    const/4 p0, 0x0

    goto :goto_61

    :cond_60
    array-length p0, p0

    :goto_61
    sub-int/2addr v4, v1

    if-le v4, p0, :cond_65

    return-object v2

    :cond_65
    add-int/lit8 v0, p3, 0x2

    if-ge v0, v3, :cond_7e

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_7e

    mul-int/lit8 v3, v4, 0xa

    sub-int/2addr p2, v1

    add-int/2addr v3, p2

    if-gt v3, p0, :cond_7e

    add-int/lit8 v0, v0, 0x1

    move p0, v0

    move v0, v3

    goto :goto_80

    :cond_7e
    move p0, v0

    move v0, v4

    :goto_80
    if-nez v0, :cond_83

    return-object v2

    :cond_83
    :goto_83
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr p0, p3

    aput p0, p4, v6

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object p0

    return-object p0

    :cond_8d
    const/4 p2, 0x2

    aput p2, p4, v6

    if-eq v4, v1, :cond_bd

    const/16 p2, 0x2b

    if-eq v4, p2, :cond_ba

    const/16 p2, 0x60

    if-eq v4, p2, :cond_a9

    const/16 p0, 0x26

    if-eq v4, p0, :cond_a6

    const/16 p0, 0x27

    if-eq v4, p0, :cond_a3

    return-object v2

    :cond_a3
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    return-object p0

    :cond_a6
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    return-object p0

    :cond_a9
    const/16 p2, 0x78

    if-ne p0, p2, :cond_b7

    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iput v6, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget-object p2, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iget p2, p2, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iput p2, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    :cond_b7
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    return-object p0

    :cond_ba
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    return-object p0

    :cond_bd
    new-instance p0, Lorg/mozilla/javascript/regexp/SubString;

    const-string p1, "$"

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    iget-object v9, v8, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    invoke-virtual/range {p6 .. p6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getFlags()I

    move-result v0

    const/4 v10, 0x1

    and-int/2addr v0, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, v8, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    new-array v12, v10, [I

    aput v11, v12, v11

    const/4 v1, 0x0

    iget v2, v8, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_48

    const/4 v6, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v9

    move-object v5, v12

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, v7, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_d8

    :cond_41
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_d8

    :cond_48
    const/4 v13, 0x2

    if-eqz v0, :cond_c3

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    move-object/from16 v14, p6

    iput-object v0, v14, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    const/4 v15, 0x0

    :goto_52
    aget v0, v12, v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_c1

    const/4 v6, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v9

    move-object v5, v12

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_bf

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_bf

    :cond_74
    iget v0, v8, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    if-ne v0, v10, :cond_80

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    invoke-static {v8, v5, v4, v15, v7}, Lorg/mozilla/javascript/regexp/RegExpImpl;->match_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/regexp/RegExpImpl;)V

    goto :goto_a7

    :cond_80
    move-object/from16 v5, p0

    move-object/from16 v4, p1

    if-eq v0, v13, :cond_89

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_89
    iget-object v0, v7, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iget v3, v8, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    iget v1, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    sub-int v16, v1, v3

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    add-int/2addr v1, v0

    iput v1, v8, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p4

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/RegExpImpl;->replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V

    :goto_a7
    iget-object v0, v7, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    if-nez v0, :cond_bb

    aget v0, v12, v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_b6

    goto :goto_bf

    :cond_b6
    aget v0, v12, v11

    add-int/2addr v0, v10

    aput v0, v12, v11

    :cond_bb
    add-int/lit8 v15, v15, 0x1

    move-object v1, v6

    goto :goto_52

    :cond_bf
    :goto_bf
    move-object v0, v6

    goto :goto_d8

    :cond_c1
    move-object v0, v1

    goto :goto_d8

    :cond_c3
    move-object/from16 v14, p6

    if-ne v2, v13, :cond_c9

    const/4 v6, 0x0

    goto :goto_ca

    :cond_c9
    const/4 v6, 0x1

    :goto_ca
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v9

    move-object v5, v12

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v0

    :goto_d8
    return-object v0
.end method

.method private static match_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/regexp/RegExpImpl;)V
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    :cond_b
    iget-object p1, p4, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    invoke-virtual {p1}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p3, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method private static replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V
    .registers 12

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-nez v0, :cond_b

    const/4 v2, 0x0

    goto :goto_c

    :cond_b
    array-length v2, v0

    :goto_c
    add-int/lit8 v3, v2, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    invoke-virtual {v4}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    :goto_18
    if-ge v1, v2, :cond_30

    aget-object v4, v0, v1

    if-eqz v4, :cond_27

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    goto :goto_2d

    :cond_27
    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aput-object v5, v3, v4

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_30
    add-int/lit8 v0, v2, 0x1

    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v1, v1, Lorg/mozilla/javascript/regexp/SubString;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    add-int/lit8 v2, v2, 0x2

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    if-eq p3, v0, :cond_4b

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_4b
    new-instance v0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/RegExpImpl;-><init>()V

    iget-boolean v1, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    iput-boolean v1, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    :try_start_5b
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    invoke-interface {v0, p1, p2, p2, v3}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_69
    .catchall {:try_start_5b .. :try_end_69} :catchall_71

    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_a2

    :catchall_71
    move-exception p0

    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    throw p0

    :cond_76
    const/4 p2, 0x0

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    if-ltz v2, :cond_a2

    const/4 v3, 0x1

    new-array v3, v3, [I

    :cond_84
    iget-object v4, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    invoke-static {p1, p3, v4, v2, v3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v4

    if-eqz v4, :cond_96

    iget v4, v4, Lorg/mozilla/javascript/regexp/SubString;->length:I

    aget v5, v3, v1

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    aget v4, v3, v1

    add-int/2addr v2, v4

    goto :goto_98

    :cond_96
    add-int/lit8 v2, v2, 0x1

    :goto_98
    iget-object v4, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    const/16 v5, 0x24

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_84

    :cond_a2
    :goto_a2
    add-int/2addr v0, p5

    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v1, v1, Lorg/mozilla/javascript/regexp/SubString;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    if-nez v1, :cond_b4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    goto :goto_bc

    :cond_b4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    :goto_bc
    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    add-int/2addr p5, p4

    invoke-virtual {v1, v0, p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    if-eqz p4, :cond_cc

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    :cond_cc
    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->do_replace(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;)V

    :goto_cf
    return-void
.end method


# virtual methods
.method public action(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 14

    new-instance v7, Lorg/mozilla/javascript/regexp/GlobData;

    invoke-direct {v7}, Lorg/mozilla/javascript/regexp/GlobData;-><init>()V

    iput p5, v7, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    const v0, 0x7fffffff

    const/16 v1, 0xa0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p5, v3, :cond_115

    const/4 v4, 0x2

    if-eq p5, v4, :cond_37

    const/4 v4, 0x3

    if-ne p5, v4, :cond_32

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p5

    if-ge p5, v1, :cond_23

    const/4 v0, 0x1

    :cond_23
    invoke-static {p1, p2, p4, v0, v2}, Lorg/mozilla/javascript/regexp/RegExpImpl;->createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_32
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_37
    array-length p5, p4

    if-lez p5, :cond_42

    aget-object p5, p4, v2

    instance-of p5, p5, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz p5, :cond_42

    const/4 p5, 0x1

    goto :goto_43

    :cond_42
    const/4 p5, 0x0

    :goto_43
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    if-ge v0, v1, :cond_50

    array-length v0, p4

    if-le v0, v4, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    or-int/2addr p5, v0

    :cond_50
    const/4 v0, 0x0

    if-eqz p5, :cond_5a

    invoke-static {p1, p2, p4, v4, v3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    goto :goto_67

    :cond_5a
    array-length v1, p4

    if-ge v1, v3, :cond_60

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_62

    :cond_60
    aget-object v1, p4, v2

    :goto_62
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v0

    :goto_67
    array-length v5, p4

    if-ge v5, v4, :cond_6d

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_6f

    :cond_6d
    aget-object v3, p4, v3

    :goto_6f
    instance-of v4, v3, Lorg/mozilla/javascript/Function;

    if-eqz v4, :cond_83

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_7f

    instance-of v4, v3, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-nez v4, :cond_83

    :cond_7f
    check-cast v3, Lorg/mozilla/javascript/Function;

    move-object v4, v0

    goto :goto_89

    :cond_83
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object v3, v0

    :goto_89
    iput-object v3, v7, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    iput-object v4, v7, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    if-nez v4, :cond_91

    const/4 v3, -0x1

    goto :goto_97

    :cond_91
    const/16 v3, 0x24

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    :goto_97
    iput v3, v7, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    iput-object v0, v7, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    iput v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    if-eqz p5, :cond_aa

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_dc

    :cond_aa
    iget-object p3, v7, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    if-ltz p4, :cond_da

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p5

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0, p3, v2, p4}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0, p3, p4, p5}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    add-int v1, p4, p5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p4

    sub-int/2addr v2, p5

    invoke-direct {v0, p3, v1, v2}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_dc

    :cond_da
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_dc
    iget-object p4, v7, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    if-nez p4, :cond_100

    iget-boolean p4, v7, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    if-nez p4, :cond_fd

    if-eqz p3, :cond_fd

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_ef

    goto :goto_fd

    :cond_ef
    iget-object p3, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v4, p3, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v5, p3, Lorg/mozilla/javascript/regexp/SubString;->length:I

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/RegExpImpl;->replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V

    goto :goto_100

    :cond_fd
    :goto_fd
    iget-object p1, v7, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    return-object p1

    :cond_100
    :goto_100
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    iget-object p2, v7, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    iget-object p3, p1, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iget p4, p1, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget p1, p1, Lorg/mozilla/javascript/regexp/SubString;->length:I

    add-int/2addr p1, p4

    invoke-virtual {p2, p3, p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object p1, v7, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_115
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p5

    if-ge p5, v1, :cond_11c

    const/4 v0, 0x1

    :cond_11c
    invoke-static {p1, p2, p4, v0, v2}, Lorg/mozilla/javascript/regexp/RegExpImpl;->createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v7, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    if-nez p2, :cond_12f

    goto :goto_130

    :cond_12f
    move-object p1, p2

    :goto_130
    return-object p1
.end method

.method public compileRegExp(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object p1

    return-object p1
.end method

.method public find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I
    .registers 23

    move-object v7, p0

    const/4 v8, 0x0

    aget v0, p6, v8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v10

    move-object/from16 v11, p5

    check-cast v11, Lorg/mozilla/javascript/regexp/NativeRegExp;

    :goto_10
    aget v12, p6, v8

    aput v0, p6, v8

    const/4 v6, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_31

    aput v12, p6, v8

    aput v1, p7, v8

    aput-boolean v8, p8, v8

    return v9

    :cond_31
    aget v0, p6, v8

    aput v12, p6, v8

    aput-boolean v1, p8, v8

    iget-object v2, v7, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iget v2, v2, Lorg/mozilla/javascript/regexp/SubString;->length:I

    aput v2, p7, v8

    aget v2, p7, v8

    if-nez v2, :cond_53

    aget v2, p6, v8

    if-ne v0, v2, :cond_53

    if-ne v0, v9, :cond_50

    const/16 v2, 0x78

    if-ne v10, v2, :cond_4e

    aput v1, p7, v8

    goto :goto_56

    :cond_4e
    const/4 v0, -0x1

    goto :goto_56

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_53
    aget v1, p7, v8

    sub-int/2addr v0, v1

    :goto_56
    iget-object v1, v7, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-nez v1, :cond_5c

    const/4 v1, 0x0

    goto :goto_5d

    :cond_5c
    array-length v1, v1

    :goto_5d
    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, p9, v8

    const/4 v2, 0x0

    :goto_62
    if-ge v2, v1, :cond_73

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v3

    aget-object v4, p9, v8

    invoke-virtual {v3}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :cond_73
    return v0
.end method

.method getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-eqz v0, :cond_c

    array-length v1, v0

    if-ge p1, v1, :cond_c

    aget-object p1, v0, p1

    if-eqz p1, :cond_c

    return-object p1

    :cond_c
    new-instance p1, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {p1}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    return-object p1
.end method

.method public isRegExp(Lorg/mozilla/javascript/Scriptable;)Z
    .registers 2

    instance-of p1, p1, Lorg/mozilla/javascript/regexp/NativeRegExp;

    return p1
.end method

.method public js_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 32

    move-object/from16 v11, p3

    move-object/from16 v0, p4

    const/4 v12, 0x0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v13, v14, v12}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v15

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    aget-object v1, v0, v2

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v1, v3, :cond_1a

    const/16 v16, 0x1

    goto :goto_1c

    :cond_1a
    const/16 v16, 0x0

    :goto_1c
    const-wide/16 v3, 0x0

    if-eqz v16, :cond_3e

    aget-object v1, v0, v2

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_2b

    return-object v15

    :cond_2b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v3, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_3b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    int-to-long v3, v1

    goto :goto_3e

    :cond_3b
    move-wide/from16 v17, v5

    goto :goto_40

    :cond_3e
    :goto_3e
    move-wide/from16 v17, v3

    :goto_40
    array-length v1, v0

    if-lt v1, v2, :cond_125

    aget-object v1, v0, v12

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v1, v3, :cond_4b

    goto/16 :goto_125

    :cond_4b
    new-array v10, v2, [I

    aget-object v1, v0, v12

    instance-of v1, v1, Lorg/mozilla/javascript/Scriptable;

    const/4 v3, 0x0

    if-eqz v1, :cond_6e

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v1

    if-eqz v1, :cond_69

    aget-object v4, v0, v12

    check-cast v4, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1, v4}, Lorg/mozilla/javascript/RegExpProxy;->isRegExp(Lorg/mozilla/javascript/Scriptable;)Z

    move-result v5

    if-eqz v5, :cond_69

    move-object/from16 v19, v1

    move-object/from16 v20, v4

    goto :goto_72

    :cond_69
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    goto :goto_72

    :cond_6e
    move-object/from16 v19, v3

    move-object/from16 v20, v19

    :goto_72
    if-nez v20, :cond_83

    aget-object v0, v0, v12

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, v10, v12

    move-object/from16 v21, v0

    goto :goto_85

    :cond_83
    move-object/from16 v21, v3

    :goto_85
    new-array v9, v2, [I

    aput v12, v9, v12

    new-array v8, v2, [Z

    aput-boolean v12, v8, v12

    new-array v7, v2, [[Ljava/lang/String;

    aput-object v3, v7, v12

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v6

    const/4 v5, 0x0

    :goto_96
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v21

    move v4, v6

    move v12, v5

    move-object/from16 v5, v19

    move v13, v6

    move-object/from16 v6, v20

    move-object/from16 v23, v7

    move-object v7, v9

    move-object/from16 v24, v8

    move-object v8, v10

    move-object/from16 v25, v9

    move-object/from16 v9, v24

    move-object/from16 v26, v10

    move-object/from16 v10, v23

    invoke-static/range {v0 .. v10}, Lorg/mozilla/javascript/regexp/RegExpImpl;->find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_124

    if-eqz v16, :cond_c0

    int-to-long v1, v12

    cmp-long v3, v1, v17

    if-gez v3, :cond_124

    :cond_c0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_c7

    goto :goto_124

    :cond_c7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d1

    move-object v1, v11

    const/16 v22, 0x0

    goto :goto_d9

    :cond_d1
    const/16 v22, 0x0

    aget v1, v25, v22

    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_d9
    invoke-interface {v15, v12, v15, v1}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v5, v12, 0x1

    if-eqz v20, :cond_100

    aget-boolean v1, v24, v22

    if-eqz v1, :cond_100

    aget-object v1, v23, v22

    array-length v1, v1

    const/4 v2, 0x0

    :goto_e8
    if-ge v2, v1, :cond_fe

    if-eqz v16, :cond_f2

    int-to-long v3, v5

    cmp-long v6, v3, v17

    if-ltz v6, :cond_f2

    goto :goto_fe

    :cond_f2
    aget-object v3, v23, v22

    aget-object v3, v3, v2

    invoke-interface {v15, v5, v15, v3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    :cond_fe
    :goto_fe
    aput-boolean v22, v24, v22

    :cond_100
    aget v1, v26, v22

    add-int/2addr v0, v1

    aput v0, v25, v22

    const/16 v0, 0x82

    if-ge v13, v0, :cond_116

    if-eqz v13, :cond_116

    if-nez v16, :cond_116

    aget v0, v25, v22

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_116

    goto :goto_124

    :cond_116
    move v6, v13

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    const/4 v12, 0x0

    move-object/from16 v13, p1

    goto/16 :goto_96

    :cond_124
    :goto_124
    return-object v15

    :cond_125
    :goto_125
    const/4 v0, 0x0

    invoke-interface {v15, v0, v15, v11}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object v15
.end method

.method public wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    new-instance p1, Lorg/mozilla/javascript/regexp/NativeRegExp;

    check-cast p3, Lorg/mozilla/javascript/regexp/RECompiled;

    invoke-direct {p1, p2, p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V

    return-object p1
.end method
