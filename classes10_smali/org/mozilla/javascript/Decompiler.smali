.class public Lorg/mozilla/javascript/Decompiler;
.super Ljava/lang/Object;
.source "Decompiler.java"


# static fields
.field public static final CASE_GAP_PROP:I = 0x3

.field private static final FUNCTION_END:I = 0xa8

.field public static final INDENT_GAP_PROP:I = 0x2

.field public static final INITIAL_INDENT_PROP:I = 0x1

.field public static final ONLY_BODY_FLAG:I = 0x1

.field public static final TO_SOURCE_FLAG:I = 0x2

.field private static final printSource:Z


# instance fields
.field private sourceBuffer:[C

.field private sourceTop:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    return-void
.end method

.method private append(C)V
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->increaseSourceCapacity(I)V

    :cond_c
    iget-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    return-void
.end method

.method private appendString(Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0x8000

    const/4 v2, 0x1

    if-lt v0, v1, :cond_c

    const/4 v3, 0x2

    goto :goto_d

    :cond_c
    const/4 v3, 0x1

    :goto_d
    iget v4, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    iget-object v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v3, v3

    if-le v4, v3, :cond_19

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/Decompiler;->increaseSourceCapacity(I)V

    :cond_19
    if-lt v0, v1, :cond_28

    iget-object v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v5, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    ushr-int/lit8 v6, v0, 0x10

    or-int/2addr v1, v6

    int-to-char v1, v1

    aput-char v1, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    :cond_28
    iget-object v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    int-to-char v5, v0

    aput-char v5, v1, v3

    add-int/2addr v3, v2

    iput v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput v4, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    return-void
.end method

.method public static decompile(Ljava/lang/String;ILorg/mozilla/javascript/UintMap;)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    const-string v0, ""

    return-object v0

    :cond_d
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v5

    if-ltz v5, :cond_4c4

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-virtual {v1, v6, v7}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v8

    if-ltz v8, :cond_4be

    const/4 v9, 0x3

    invoke-virtual {v1, v9, v6}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v1

    if-ltz v1, :cond_4b8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_2f

    const/4 v10, 0x1

    goto :goto_30

    :cond_2f
    const/4 v10, 0x0

    :goto_30
    and-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_36

    const/4 v11, 0x1

    goto :goto_37

    :cond_36
    const/4 v11, 0x0

    :goto_37
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x89

    if-ne v12, v13, :cond_42

    const/4 v12, -0x1

    const/4 v13, 0x1

    goto :goto_47

    :cond_42
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x0

    :goto_47
    const/16 v14, 0x28

    const/16 v15, 0xa

    const/16 v4, 0x20

    if-nez v11, :cond_5b

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    :goto_53
    if-ge v15, v5, :cond_60

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_53

    :cond_5b
    if-ne v12, v6, :cond_60

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_60
    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_63
    if-ge v13, v2, :cond_4a1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v6, 0x27

    if-eq v14, v3, :cond_44b

    if-eq v14, v7, :cond_438

    const/16 v7, 0x32

    if-eq v14, v7, :cond_42e

    const/16 v7, 0x43

    if-eq v14, v7, :cond_425

    const/16 v7, 0x49

    if-eq v14, v7, :cond_41b

    const/16 v7, 0xa1

    if-eq v14, v7, :cond_412

    const/16 v7, 0xa8

    if-eq v14, v7, :cond_234

    const/16 v7, 0x34

    if-eq v14, v7, :cond_409

    const/16 v7, 0x35

    if-eq v14, v7, :cond_400

    const/16 v7, 0x90

    if-eq v14, v7, :cond_3f7

    const/16 v7, 0x91

    if-eq v14, v7, :cond_3ee

    const/16 v7, 0x93

    if-eq v14, v7, :cond_3e5

    const/16 v7, 0x94

    if-eq v14, v7, :cond_3dc

    packed-switch v14, :pswitch_data_4cc

    packed-switch v14, :pswitch_data_500

    packed-switch v14, :pswitch_data_518

    packed-switch v14, :pswitch_data_556

    packed-switch v14, :pswitch_data_578

    packed-switch v14, :pswitch_data_584

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/Token;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_cc  #0xa6
    const-string/jumbo v6, "yield *"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_d4  #0xa5
    const-string v6, " => "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_db  #0x9b
    const-string v6, "const "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_e2  #0x9a
    const-string v6, "let "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_e9  #0x98, 0x99, 0xa4
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x98

    if-ne v6, v7, :cond_f7

    const-string v6, "get "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_104

    :cond_f7
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x99

    if-ne v6, v7, :cond_104

    const-string v6, "set "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_104
    :goto_104
    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v3

    const/4 v6, 0x0

    invoke-static {v0, v13, v6, v9}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v7

    add-int/lit8 v13, v7, 0x1

    goto/16 :goto_49e

    :pswitch_110  #0x7f
    const-string/jumbo v6, "void "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_118  #0x7e
    const-string v6, "finally "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_11f  #0x7d
    const-string v6, "catch "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_126  #0x7c
    const-string/jumbo v6, "with "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_12e  #0x7b
    const-string/jumbo v6, "var "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_136  #0x7a
    const-string v7, "continue"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-ne v6, v7, :cond_234

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_146  #0x79
    const-string v7, "break"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-ne v6, v7, :cond_234

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_156  #0x78
    const-string v6, "for "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_15d  #0x77
    const-string v6, "do "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_164  #0x76
    const-string/jumbo v6, "while "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_16c  #0x75
    const-string v6, "default"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_173  #0x74
    const-string v6, "case "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_17a  #0x73
    const-string/jumbo v6, "switch "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_182  #0x72
    const-string v6, "else "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_189  #0x71
    const-string v6, "if "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_190  #0x6e
    add-int/lit8 v13, v13, 0x1

    const-string v6, "function "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_199  #0x6d
    const/16 v6, 0x2e

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_1a0  #0x6c
    const-string v6, "--"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_1a7  #0x6b
    const-string v6, "++"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_1ae  #0x6a
    const-string v6, " && "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_1b5  #0x69
    const-string v6, " || "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_1bc  #0x68
    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v6

    if-ne v3, v6, :cond_1c9

    const/16 v6, 0x3a

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :cond_1c9
    const-string v6, " : "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_234

    :pswitch_1d0  #0x67
    const-string v6, " ? "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_1d6  #0x66
    const-string v6, " %= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_1dc  #0x65
    const-string v6, " /= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_1e2  #0x64
    const-string v6, " *= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_1e8  #0x63
    const-string v6, " -= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_1ee  #0x62
    const-string v6, " += "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_1f4  #0x61
    const-string v6, " >>>= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_1fa  #0x60
    const-string v6, " >>= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_200  #0x5f
    const-string v6, " <<= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_206  #0x5e
    const-string v6, " &= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_20c  #0x5d
    const-string v6, " ^= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_212  #0x5c
    const-string v6, " |= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_218  #0x5b
    const-string v6, " = "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_21e  #0x5a
    const-string v6, ", "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_234

    :pswitch_224  #0x59
    const/16 v6, 0x29

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x56

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-ne v6, v7, :cond_234

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_234
    :goto_234
    const/16 v7, 0x28

    goto/16 :goto_49e

    :pswitch_238  #0x58
    const/16 v7, 0x28

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_23f  #0x57
    const/16 v7, 0x28

    add-int/lit8 v15, v15, -0x1

    if-eqz v10, :cond_249

    if-nez v15, :cond_249

    goto/16 :goto_49e

    :cond_249
    const/16 v6, 0x7d

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v3, :cond_268

    const/16 v14, 0x72

    if-eq v6, v14, :cond_262

    const/16 v14, 0x76

    if-eq v6, v14, :cond_262

    const/16 v14, 0xa8

    if-eq v6, v14, :cond_268

    goto/16 :goto_49e

    :cond_262
    sub-int/2addr v5, v8

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :cond_268
    sub-int/2addr v5, v8

    goto/16 :goto_49e

    :pswitch_26b  #0x56
    const/16 v7, 0x28

    add-int/lit8 v15, v15, 0x1

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v6

    if-ne v3, v6, :cond_276

    add-int/2addr v5, v8

    :cond_276
    const/16 v6, 0x7b

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_27d  #0x55
    const/16 v7, 0x28

    const/16 v6, 0x5d

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_286  #0x54
    const/16 v7, 0x28

    const/16 v6, 0x5b

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_28f  #0x53
    const/16 v7, 0x28

    const/16 v6, 0x3b

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v6

    if-eq v3, v6, :cond_49e

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_2a1  #0x52
    const/16 v7, 0x28

    const-string/jumbo v6, "try "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_2ab  #0x2f
    const/16 v7, 0x28

    const-string v6, " !== "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_2b4  #0x2e
    const/16 v7, 0x28

    const-string v6, " === "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_2bd  #0x2d
    const/16 v7, 0x28

    const-string/jumbo v6, "true"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_2c7  #0x2c
    const/16 v7, 0x28

    const-string v6, "false"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_2d0  #0x2b
    const/16 v7, 0x28

    const-string/jumbo v6, "this"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_2da  #0x2a
    const/16 v7, 0x28

    const-string v6, "null"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_2e3  #0x29
    const/16 v7, 0x28

    add-int/lit8 v13, v13, 0x1

    invoke-static {v0, v13, v3, v9}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v13

    goto :goto_2fe

    :pswitch_2ec  #0x28
    const/16 v7, 0x28

    add-int/lit8 v13, v13, 0x1

    invoke-static {v0, v13, v9}, Lorg/mozilla/javascript/Decompiler;->printSourceNumber(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v13

    goto :goto_2fe

    :pswitch_2f5  #0x27, 0x30
    const/16 v7, 0x28

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    invoke-static {v0, v13, v6, v9}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v13

    :goto_2fe
    const/4 v7, 0x4

    const/16 v14, 0x28

    goto/16 :goto_63

    :pswitch_303  #0x20
    const/16 v7, 0x28

    const-string/jumbo v6, "typeof "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_30d  #0x1f
    const/16 v7, 0x28

    const-string v6, "delete "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_316  #0x1e
    const/16 v7, 0x28

    const-string v6, "new "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_31f  #0x1d
    const/16 v7, 0x28

    const/16 v6, 0x2d

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_328  #0x1c
    const/16 v7, 0x28

    const/16 v6, 0x2b

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_331  #0x1b
    const/16 v7, 0x28

    const/16 v6, 0x7e

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_33a  #0x1a
    const/16 v7, 0x28

    const/16 v6, 0x21

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_343  #0x19
    const/16 v7, 0x28

    const-string v6, " % "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_34c  #0x18
    const/16 v7, 0x28

    const-string v6, " / "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_355  #0x17
    const/16 v7, 0x28

    const-string v6, " * "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_35e  #0x16
    const/16 v7, 0x28

    const-string v6, " - "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_367  #0x15
    const/16 v7, 0x28

    const-string v6, " + "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_370  #0x14
    const/16 v7, 0x28

    const-string v6, " >>> "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_379  #0x13
    const/16 v7, 0x28

    const-string v6, " >> "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_382  #0x12
    const/16 v7, 0x28

    const-string v6, " << "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_38b  #0x11
    const/16 v7, 0x28

    const-string v6, " >= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_394  #0x10
    const/16 v7, 0x28

    const-string v6, " > "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_39d  #0xf
    const/16 v7, 0x28

    const-string v6, " <= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_3a6  #0xe
    const/16 v7, 0x28

    const-string v6, " < "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_3af  #0xd
    const/16 v7, 0x28

    const-string v6, " != "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_3b8  #0xc
    const/16 v7, 0x28

    const-string v6, " == "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_3c1  #0xb
    const/16 v7, 0x28

    const-string v6, " & "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_3ca  #0xa
    const/16 v7, 0x28

    const-string v6, " ^ "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :pswitch_3d3  #0x9
    const/16 v7, 0x28

    const-string v6, " | "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :cond_3dc
    const/16 v7, 0x28

    const/16 v6, 0x40

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :cond_3e5
    const/16 v7, 0x28

    const-string v6, ".("

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :cond_3ee
    const/16 v7, 0x28

    const-string v6, "::"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :cond_3f7
    const/16 v7, 0x28

    const-string v6, ".."

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :cond_400
    const/16 v7, 0x28

    const-string v6, " instanceof "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :cond_409
    const/16 v7, 0x28

    const-string v6, " in "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :cond_412
    const/16 v7, 0x28

    const-string v6, "debugger;\n"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :cond_41b
    const/16 v7, 0x28

    const-string/jumbo v6, "yield "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :cond_425
    const/16 v7, 0x28

    const-string v6, ": "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :cond_42e
    const/16 v7, 0x28

    const-string/jumbo v6, "throw "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49e

    :cond_438
    const/16 v7, 0x28

    const-string v6, "return"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x53

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v14

    if-eq v6, v14, :cond_49e

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_49e

    :cond_44b
    const/16 v7, 0x28

    if-eqz v11, :cond_450

    goto :goto_49e

    :cond_450
    const/4 v14, 0x0

    if-nez v17, :cond_461

    if-eqz v10, :cond_45c

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-int/2addr v5, v8

    const/16 v16, 0x0

    goto :goto_45e

    :cond_45c
    const/16 v16, 0x1

    :goto_45e
    const/16 v17, 0x1

    goto :goto_463

    :cond_461
    const/16 v16, 0x1

    :goto_463
    if-eqz v16, :cond_46a

    const/16 v7, 0xa

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_46a
    add-int/lit8 v7, v13, 0x1

    if-ge v7, v2, :cond_49e

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v14, 0x74

    if-eq v7, v14, :cond_494

    const/16 v14, 0x75

    if-ne v7, v14, :cond_47b

    goto :goto_494

    :cond_47b
    const/16 v14, 0x57

    if-ne v7, v14, :cond_480

    goto :goto_490

    :cond_480
    if-ne v7, v6, :cond_492

    add-int/lit8 v6, v13, 0x2

    invoke-static {v0, v6}, Lorg/mozilla/javascript/Decompiler;->getSourceStringEnd(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x68

    if-ne v6, v7, :cond_492

    :goto_490
    move v6, v8

    goto :goto_496

    :cond_492
    const/4 v6, 0x0

    goto :goto_496

    :cond_494
    :goto_494
    sub-int v6, v8, v1

    :goto_496
    if-ge v6, v5, :cond_49e

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_496

    :cond_49e
    :goto_49e
    add-int/2addr v13, v3

    goto/16 :goto_2fe

    :cond_4a1
    if-nez v11, :cond_4ab

    if-nez v10, :cond_4b3

    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4b3

    :cond_4ab
    const/4 v0, 0x2

    if-ne v12, v0, :cond_4b3

    const/16 v0, 0x29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4b3
    :goto_4b3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4b8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4c4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_4cb

    :goto_4ca
    throw v0

    :goto_4cb
    goto :goto_4ca

    :pswitch_data_4cc
    .packed-switch 0x9
        :pswitch_3d3  #00000009
        :pswitch_3ca  #0000000a
        :pswitch_3c1  #0000000b
        :pswitch_3b8  #0000000c
        :pswitch_3af  #0000000d
        :pswitch_3a6  #0000000e
        :pswitch_39d  #0000000f
        :pswitch_394  #00000010
        :pswitch_38b  #00000011
        :pswitch_382  #00000012
        :pswitch_379  #00000013
        :pswitch_370  #00000014
        :pswitch_367  #00000015
        :pswitch_35e  #00000016
        :pswitch_355  #00000017
        :pswitch_34c  #00000018
        :pswitch_343  #00000019
        :pswitch_33a  #0000001a
        :pswitch_331  #0000001b
        :pswitch_328  #0000001c
        :pswitch_31f  #0000001d
        :pswitch_316  #0000001e
        :pswitch_30d  #0000001f
        :pswitch_303  #00000020
    .end packed-switch

    :pswitch_data_500
    .packed-switch 0x27
        :pswitch_2f5  #00000027
        :pswitch_2ec  #00000028
        :pswitch_2e3  #00000029
        :pswitch_2da  #0000002a
        :pswitch_2d0  #0000002b
        :pswitch_2c7  #0000002c
        :pswitch_2bd  #0000002d
        :pswitch_2b4  #0000002e
        :pswitch_2ab  #0000002f
        :pswitch_2f5  #00000030
    .end packed-switch

    :pswitch_data_518
    .packed-switch 0x52
        :pswitch_2a1  #00000052
        :pswitch_28f  #00000053
        :pswitch_286  #00000054
        :pswitch_27d  #00000055
        :pswitch_26b  #00000056
        :pswitch_23f  #00000057
        :pswitch_238  #00000058
        :pswitch_224  #00000059
        :pswitch_21e  #0000005a
        :pswitch_218  #0000005b
        :pswitch_212  #0000005c
        :pswitch_20c  #0000005d
        :pswitch_206  #0000005e
        :pswitch_200  #0000005f
        :pswitch_1fa  #00000060
        :pswitch_1f4  #00000061
        :pswitch_1ee  #00000062
        :pswitch_1e8  #00000063
        :pswitch_1e2  #00000064
        :pswitch_1dc  #00000065
        :pswitch_1d6  #00000066
        :pswitch_1d0  #00000067
        :pswitch_1bc  #00000068
        :pswitch_1b5  #00000069
        :pswitch_1ae  #0000006a
        :pswitch_1a7  #0000006b
        :pswitch_1a0  #0000006c
        :pswitch_199  #0000006d
        :pswitch_190  #0000006e
    .end packed-switch

    :pswitch_data_556
    .packed-switch 0x71
        :pswitch_189  #00000071
        :pswitch_182  #00000072
        :pswitch_17a  #00000073
        :pswitch_173  #00000074
        :pswitch_16c  #00000075
        :pswitch_164  #00000076
        :pswitch_15d  #00000077
        :pswitch_156  #00000078
        :pswitch_146  #00000079
        :pswitch_136  #0000007a
        :pswitch_12e  #0000007b
        :pswitch_126  #0000007c
        :pswitch_11f  #0000007d
        :pswitch_118  #0000007e
        :pswitch_110  #0000007f
    .end packed-switch

    :pswitch_data_578
    .packed-switch 0x98
        :pswitch_e9  #00000098
        :pswitch_e9  #00000099
        :pswitch_e2  #0000009a
        :pswitch_db  #0000009b
    .end packed-switch

    :pswitch_data_584
    .packed-switch 0xa4
        :pswitch_e9  #000000a4
        :pswitch_d4  #000000a5
        :pswitch_cc  #000000a6
    .end packed-switch
.end method

.method private static getNext(Ljava/lang/String;II)I
    .registers 3

    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_9

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private static getSourceStringEnd(Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result p0

    return p0
.end method

.method private increaseSourceCapacity(I)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v0, v0

    if-gt p1, v0, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_8
    iget-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-ge v1, p1, :cond_10

    goto :goto_11

    :cond_10
    move p1, v1

    :goto_11
    new-array p1, p1, [C

    iget v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    return-void
.end method

.method private static printSourceNumber(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .registers 10

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, 0x1

    const-wide/16 v1, 0x0

    const/16 v3, 0x53

    if-ne v0, v3, :cond_16

    if-eqz p2, :cond_13

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    int-to-double v1, p0

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    :cond_16
    const/16 v3, 0x4a

    if-eq v0, v3, :cond_25

    const/16 v4, 0x44

    if-ne v0, v4, :cond_1f

    goto :goto_25

    :cond_1f
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_25
    :goto_25
    if-eqz p2, :cond_55

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-long v1, v1

    const/16 v4, 0x30

    shl-long/2addr v1, v4

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v4, p1, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    int-to-long v4, p0

    or-long/2addr v1, v4

    if-ne v0, v3, :cond_51

    long-to-double v1, v1

    goto :goto_55

    :cond_51
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    :cond_55
    :goto_55
    add-int/lit8 p1, p1, 0x4

    :goto_57
    if-eqz p2, :cond_62

    const/16 p0, 0xa

    invoke-static {v1, v2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_62
    return p1
.end method

.method private static printSourceString(Ljava/lang/String;IZLjava/lang/StringBuilder;)I
    .registers 6

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, 0x1

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    and-int/lit16 v0, v0, 0x7fff

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    :cond_17
    if-eqz p3, :cond_34

    add-int v1, p1, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-nez p2, :cond_25

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_25
    const/16 p2, 0x22

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_34
    :goto_34
    add-int/2addr p1, v0

    return p1
.end method

.method private sourceToString(I)Ljava/lang/String;
    .registers 5

    if-ltz p1, :cond_6

    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    if-ge v0, p1, :cond_9

    :cond_6
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method addEOL(I)V
    .registers 3

    if-ltz p1, :cond_f

    const/16 v0, 0xa7

    if-gt p1, v0, :cond_f

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method addName(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->appendString(Ljava/lang/String;)V

    return-void
.end method

.method addNumber(D)V
    .registers 11

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    double-to-long v0, p1

    long-to-double v2, v0

    const/16 v4, 0x10

    const/16 v5, 0x20

    const/16 v6, 0x30

    cmpl-double v7, v2, p1

    if-eqz v7, :cond_35

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long v0, p1, v6

    long-to-int v1, v0

    int-to-char v0, v1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long v0, p1, v5

    long-to-int v1, v0

    int-to-char v0, v1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long v0, p1, v4

    long-to-int v1, v0

    int-to-char v0, v1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    long-to-int p2, p1

    int-to-char p1, p2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    goto :goto_6f

    :cond_35
    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_3e

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3e
    const-wide/32 p1, 0xffff

    cmp-long v2, v0, p1

    if-gtz v2, :cond_50

    const/16 p1, 0x53

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    long-to-int p1, v0

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    goto :goto_6f

    :cond_50
    const/16 p1, 0x4a

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long p1, v0, v6

    long-to-int p2, p1

    int-to-char p1, p2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long p1, v0, v5

    long-to-int p2, p1

    int-to-char p1, p2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long p1, v0, v4

    long-to-int p2, p1

    int-to-char p1, p2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    long-to-int p1, v0

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    :goto_6f
    return-void
.end method

.method addRegexp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->appendString(Ljava/lang/String;)V

    return-void
.end method

.method addString(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->appendString(Ljava/lang/String;)V

    return-void
.end method

.method addToken(I)V
    .registers 3

    if-ltz p1, :cond_b

    const/16 v0, 0xa7

    if-gt p1, v0, :cond_b

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method getCurrentOffset()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    return v0
.end method

.method getEncodedSource()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->sourceToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method markFunctionEnd(I)I
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Decompiler;->getCurrentOffset()I

    move-result p1

    const/16 v0, 0xa8

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    return p1
.end method

.method markFunctionStart(I)I
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Decompiler;->getCurrentOffset()I

    move-result v0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_10

    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    :cond_10
    return v0
.end method
