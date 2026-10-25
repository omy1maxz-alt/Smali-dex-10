.class public Lorg/mozilla/javascript/NativeGlobal;
.super Ljava/lang/Object;
.source "NativeGlobal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mozilla/javascript/IdFunctionCall;


# static fields
.field private static final FTAG:Ljava/lang/Object;

.field private static final INVALID_UTF8:I = 0x7fffffff

.field private static final Id_decodeURI:I = 0x1

.field private static final Id_decodeURIComponent:I = 0x2

.field private static final Id_encodeURI:I = 0x3

.field private static final Id_encodeURIComponent:I = 0x4

.field private static final Id_escape:I = 0x5

.field private static final Id_eval:I = 0x6

.field private static final Id_isFinite:I = 0x7

.field private static final Id_isNaN:I = 0x8

.field private static final Id_isXMLName:I = 0x9

.field private static final Id_new_CommonError:I = 0xe

.field private static final Id_parseFloat:I = 0xa

.field private static final Id_parseInt:I = 0xb

.field private static final Id_unescape:I = 0xc

.field private static final Id_uneval:I = 0xd

.field private static final LAST_SCOPE_FUNCTION_ID:I = 0xd

.field private static final URI_DECODE_RESERVED:Ljava/lang/String; = ";/?:@&=+$,#"

.field static final serialVersionUID:J = 0x546211ef26c230caL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Global"

    sput-object v0, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructError(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/EcmaError;
    .registers 4

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static constructError(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILjava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .registers 14

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v4, p7

    move v5, p6

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method private static decode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a
    if-eq v4, v1, :cond_130

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-eq v6, v7, :cond_1e

    if-eqz v3, :cond_1b

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    move v5, v7

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1e
    if-nez v3, :cond_26

    new-array v3, v1, [C

    invoke-virtual {v0, v2, v4, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    move v5, v4

    :cond_26
    add-int/lit8 v6, v4, 0x3

    if-gt v6, v1, :cond_12b

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v4, 0x2

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v8, v9}, Lorg/mozilla/javascript/NativeGlobal;->unHex(CC)I

    move-result v8

    if-ltz v8, :cond_126

    and-int/lit16 v9, v8, 0x80

    if-nez v9, :cond_43

    :cond_40
    int-to-char v7, v8

    goto/16 :goto_f7

    :cond_43
    and-int/lit16 v9, v8, 0xc0

    const/16 v10, 0x80

    if-eq v9, v10, :cond_121

    and-int/lit8 v9, v8, 0x20

    const/high16 v11, 0x10000

    if-nez v9, :cond_55

    and-int/lit8 v8, v8, 0x1f

    const/4 v9, 0x1

    const/16 v12, 0x80

    goto :goto_82

    :cond_55
    and-int/lit8 v9, v8, 0x10

    if-nez v9, :cond_62

    and-int/lit8 v8, v8, 0xf

    const/16 v9, 0x800

    const/4 v12, 0x2

    const/4 v9, 0x2

    const/16 v12, 0x800

    goto :goto_82

    :cond_62
    and-int/lit8 v9, v8, 0x8

    if-nez v9, :cond_6c

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x3

    const/high16 v12, 0x10000

    goto :goto_82

    :cond_6c
    and-int/lit8 v9, v8, 0x4

    if-nez v9, :cond_79

    and-int/lit8 v8, v8, 0x3

    const/high16 v9, 0x200000

    const/4 v12, 0x4

    const/4 v9, 0x4

    const/high16 v12, 0x200000

    goto :goto_82

    :cond_79
    and-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_11c

    const/4 v9, 0x5

    and-int/lit8 v8, v8, 0x1

    const/high16 v12, 0x4000000

    :goto_82
    mul-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v6

    if-gt v13, v1, :cond_117

    const/4 v13, 0x0

    :goto_88
    if-eq v13, v9, :cond_ba

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v7, :cond_b5

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v15, v6, 0x2

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v14, v15}, Lorg/mozilla/javascript/NativeGlobal;->unHex(CC)I

    move-result v14

    if-ltz v14, :cond_b0

    and-int/lit16 v15, v14, 0xc0

    if-ne v15, v10, :cond_b0

    shl-int/lit8 v8, v8, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v8, v14

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v13, v13, 0x1

    goto :goto_88

    :cond_b0
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_b5
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_ba
    const v7, 0xd800

    if-lt v8, v12, :cond_d5

    if-lt v8, v7, :cond_c7

    const v9, 0xdfff

    if-gt v8, v9, :cond_c7

    goto :goto_d5

    :cond_c7
    const v9, 0xfffe

    if-eq v8, v9, :cond_d1

    const v9, 0xffff

    if-ne v8, v9, :cond_d8

    :cond_d1
    const v8, 0xfffd

    goto :goto_d8

    :cond_d5
    :goto_d5
    const v8, 0x7fffffff

    :cond_d8
    :goto_d8
    if-lt v8, v11, :cond_40

    sub-int/2addr v8, v11

    const v9, 0xfffff

    if-gt v8, v9, :cond_f2

    ushr-int/lit8 v9, v8, 0xa

    add-int/2addr v9, v7

    int-to-char v7, v9

    and-int/lit16 v8, v8, 0x3ff

    const v9, 0xdc00

    add-int/2addr v8, v9

    int-to-char v8, v8

    add-int/lit8 v9, v5, 0x1

    aput-char v7, v3, v5

    move v7, v8

    move v5, v9

    goto :goto_f7

    :cond_f2
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :goto_f7
    if-eqz p1, :cond_10f

    const-string v8, ";/?:@&=+$,#"

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_10f

    :goto_101
    if-eq v4, v6, :cond_114

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v3, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_101

    :cond_10f
    add-int/lit8 v4, v5, 0x1

    aput-char v7, v3, v5

    move v5, v4

    :cond_114
    move v4, v6

    goto/16 :goto_a

    :cond_117
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_11c
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_121
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_126
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_12b
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_130
    if-nez v3, :cond_133

    goto :goto_138

    :cond_133
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v2, v5}, Ljava/lang/String;-><init>([CII)V

    :goto_138
    return-object v0
.end method

.method private static encode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    :goto_8
    if-eq v4, v0, :cond_90

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, p1}, Lorg/mozilla/javascript/NativeGlobal;->encodeUnescaped(CZ)Z

    move-result v6

    if-eqz v6, :cond_1b

    if-eqz v2, :cond_8c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8c

    :cond_1b
    if-nez v2, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v3, 0x6

    new-array v3, v3, [B

    :cond_2d
    const v6, 0xdfff

    const v7, 0xdc00

    if-gt v7, v5, :cond_3d

    if-le v5, v6, :cond_38

    goto :goto_3d

    :cond_38
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_3d
    :goto_3d
    const v8, 0xd800

    if-lt v5, v8, :cond_67

    const v9, 0xdbff

    if-ge v9, v5, :cond_48

    goto :goto_67

    :cond_48
    add-int/lit8 v4, v4, 0x1

    if-eq v4, v0, :cond_62

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v7, v9, :cond_5d

    if-gt v9, v6, :cond_5d

    sub-int/2addr v5, v8

    shl-int/lit8 v5, v5, 0xa

    sub-int/2addr v9, v7

    add-int/2addr v5, v9

    const/high16 v6, 0x10000

    add-int/2addr v5, v6

    goto :goto_67

    :cond_5d
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_62
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_67
    :goto_67
    invoke-static {v3, v5}, Lorg/mozilla/javascript/NativeGlobal;->oneUcs4ToUtf8Char([BI)I

    move-result v5

    const/4 v6, 0x0

    :goto_6c
    if-ge v6, v5, :cond_8c

    aget-byte v7, v3, v6

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x25

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v8, v7, 0x4

    invoke-static {v8}, Lorg/mozilla/javascript/NativeGlobal;->toHexChar(I)C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, v7, 0xf

    invoke-static {v7}, Lorg/mozilla/javascript/NativeGlobal;->toHexChar(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    :cond_8c
    :goto_8c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_90
    if-nez v2, :cond_93

    goto :goto_97

    :cond_93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_97
    return-object p0
.end method

.method private static encodeUnescaped(CZ)Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x41

    if-gt v1, p0, :cond_9

    const/16 v1, 0x5a

    if-le p0, v1, :cond_19

    :cond_9
    const/16 v1, 0x61

    if-gt v1, p0, :cond_11

    const/16 v1, 0x7a

    if-le p0, v1, :cond_19

    :cond_11
    const/16 v1, 0x30

    if-gt v1, p0, :cond_1a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1a

    :cond_19
    return v0

    :cond_1a
    const-string v1, "-_.!~*\'()"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_23

    return v0

    :cond_23
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    const-string p1, ";/?:@&=+$,#"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    return v0

    :cond_31
    return v1
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 19

    move-object/from16 v7, p1

    new-instance v8, Lorg/mozilla/javascript/NativeGlobal;

    invoke-direct {v8}, Lorg/mozilla/javascript/NativeGlobal;-><init>()V

    const/4 v9, 0x1

    const/4 v10, 0x1

    :goto_9
    const/16 v0, 0xd

    const/4 v11, 0x2

    if-gt v10, v0, :cond_59

    packed-switch v10, :pswitch_data_cc

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_16  #0xd
    const-string/jumbo v0, "uneval"

    goto :goto_40

    :pswitch_1a  #0xc
    const-string/jumbo v0, "unescape"

    goto :goto_40

    :pswitch_1e  #0xb
    const-string v0, "parseInt"

    move-object v4, v0

    const/4 v5, 0x2

    goto :goto_42

    :pswitch_23  #0xa
    const-string v0, "parseFloat"

    goto :goto_40

    :pswitch_26  #0x9
    const-string v0, "isXMLName"

    goto :goto_40

    :pswitch_29  #0x8
    const-string v0, "isNaN"

    goto :goto_40

    :pswitch_2c  #0x7
    const-string v0, "isFinite"

    goto :goto_40

    :pswitch_2f  #0x6
    const-string v0, "eval"

    goto :goto_40

    :pswitch_32  #0x5
    const-string v0, "escape"

    goto :goto_40

    :pswitch_35  #0x4
    const-string v0, "encodeURIComponent"

    goto :goto_40

    :pswitch_38  #0x3
    const-string v0, "encodeURI"

    goto :goto_40

    :pswitch_3b  #0x2
    const-string v0, "decodeURIComponent"

    goto :goto_40

    :pswitch_3e  #0x1
    const-string v0, "decodeURI"

    :goto_40
    move-object v4, v0

    const/4 v5, 0x1

    :goto_42
    new-instance v11, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v2, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    move-object v0, v11

    move-object v1, v8

    move v3, v10

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    if-eqz p2, :cond_53

    invoke-virtual {v11}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_53
    invoke-virtual {v11}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_59
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    const-string v1, "NaN"

    const/4 v2, 0x7

    invoke-static {v7, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "Infinity"

    invoke-static {v7, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const-string/jumbo v1, "undefined"

    invoke-static {v7, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {}, Lorg/mozilla/javascript/TopLevel$NativeErrors;->values()[Lorg/mozilla/javascript/TopLevel$NativeErrors;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_7b
    if-ge v12, v10, :cond_ca

    aget-object v0, v9, v12

    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->Error:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    if-ne v0, v1, :cond_86

    move-object/from16 v13, p0

    goto :goto_c7

    :cond_86
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->Error:Lorg/mozilla/javascript/TopLevel$Builtins;

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    move-object/from16 v13, p0

    invoke-static {v13, v7, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->newBuiltinObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/mozilla/javascript/ScriptableObject;

    const-string v0, "name"

    invoke-virtual {v14, v0, v14, v4}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, ""

    invoke-virtual {v14, v0, v14, v1}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    new-instance v15, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v2, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    const/16 v3, 0xe

    const/4 v5, 0x1

    move-object v0, v15

    move-object v1, v8

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v15, v14}, Lorg/mozilla/javascript/IdFunctionObject;->markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V

    const-string v0, "constructor"

    invoke-virtual {v14, v0, v14, v15}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    invoke-virtual {v14, v0, v11}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Ljava/lang/String;I)V

    if-eqz p2, :cond_c4

    invoke-virtual {v14}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    invoke-virtual {v15}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_c4
    invoke-virtual {v15}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    :goto_c7
    add-int/lit8 v12, v12, 0x1

    goto :goto_7b

    :cond_ca
    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_3b  #00000002
        :pswitch_38  #00000003
        :pswitch_35  #00000004
        :pswitch_32  #00000005
        :pswitch_2f  #00000006
        :pswitch_2c  #00000007
        :pswitch_29  #00000008
        :pswitch_26  #00000009
        :pswitch_23  #0000000a
        :pswitch_1e  #0000000b
        :pswitch_1a  #0000000c
        :pswitch_16  #0000000d
    .end packed-switch
.end method

.method static isEvalFunction(Ljava/lang/Object;)Z
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v0, :cond_17

    check-cast p0, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v0, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private static js_escape([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_27

    aget-object p0, p0, v3

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_20

    double-to-int p0, v4

    int-to-double v6, p0

    cmpl-double v2, v6, v4

    if-nez v2, :cond_20

    and-int/lit8 v2, p0, -0x8

    if-nez v2, :cond_20

    goto :goto_28

    :cond_20
    const-string p0, "msg.bad.esc.mask"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_27
    const/4 p0, 0x7

    :goto_28
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2d
    if-eq v0, v4, :cond_bf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-eqz p0, :cond_74

    const/16 v7, 0x30

    if-lt v5, v7, :cond_3f

    const/16 v7, 0x39

    if-le v5, v7, :cond_6d

    :cond_3f
    const/16 v7, 0x41

    if-lt v5, v7, :cond_47

    const/16 v7, 0x5a

    if-le v5, v7, :cond_6d

    :cond_47
    const/16 v7, 0x61

    if-lt v5, v7, :cond_4f

    const/16 v7, 0x7a

    if-le v5, v7, :cond_6d

    :cond_4f
    const/16 v7, 0x40

    if-eq v5, v7, :cond_6d

    const/16 v7, 0x2a

    if-eq v5, v7, :cond_6d

    const/16 v7, 0x5f

    if-eq v5, v7, :cond_6d

    const/16 v7, 0x2d

    if-eq v5, v7, :cond_6d

    const/16 v7, 0x2e

    if-eq v5, v7, :cond_6d

    and-int/lit8 v7, p0, 0x4

    if-eqz v7, :cond_74

    const/16 v7, 0x2f

    if-eq v5, v7, :cond_6d

    if-ne v5, v6, :cond_74

    :cond_6d
    if-eqz v2, :cond_bb

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bb

    :cond_74
    if-nez v2, :cond_83

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x3

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_83
    const/16 v7, 0x100

    const/4 v8, 0x2

    const/16 v9, 0x25

    const/4 v10, 0x4

    if-ge v5, v7, :cond_99

    const/16 v7, 0x20

    if-ne v5, v7, :cond_95

    if-ne p0, v8, :cond_95

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bb

    :cond_95
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a2

    :cond_99
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x75

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    :goto_a2
    sub-int/2addr v8, v3

    mul-int/lit8 v8, v8, 0x4

    :goto_a5
    if-ltz v8, :cond_bb

    shr-int v6, v5, v8

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0xa

    if-ge v6, v7, :cond_b2

    add-int/lit8 v6, v6, 0x30

    goto :goto_b4

    :cond_b2
    add-int/lit8 v6, v6, 0x37

    :goto_b4
    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x4

    goto :goto_a5

    :cond_bb
    :goto_bb
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2d

    :cond_bf
    if-nez v2, :cond_c2

    goto :goto_c6

    :cond_c2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c6
    return-object v1
.end method

.method private static js_eval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v4, "eval code"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v2

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->evalSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static js_parseFloat([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    if-ne v3, v2, :cond_18

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    :cond_18
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    move-result v5

    if-nez v5, :cond_b1

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    if-eq v4, v5, :cond_2d

    if-ne v4, v6, :cond_2b

    goto :goto_2d

    :cond_2b
    move v7, v3

    goto :goto_3b

    :cond_2d
    :goto_2d
    add-int/lit8 v4, v3, 0x1

    if-ne v4, v2, :cond_34

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    :cond_34
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v12, v7

    move v7, v4

    move v4, v12

    :goto_3b
    const/16 v8, 0x49

    if-ne v4, v8, :cond_60

    add-int/lit8 v1, v7, 0x8

    if-gt v1, v2, :cond_5d

    const-string v1, "Infinity"

    const/16 v2, 0x8

    invoke-virtual {p0, v7, v1, v0, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v6, :cond_56

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    goto :goto_58

    :cond_56
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    :goto_58
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_5d
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    :cond_60
    const/4 v4, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_63
    if-ge v7, v2, :cond_9f

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v5, :cond_90

    const/16 v11, 0x45

    if-eq v10, v11, :cond_86

    const/16 v11, 0x65

    if-eq v10, v11, :cond_86

    if-eq v10, v6, :cond_90

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_81

    packed-switch v10, :pswitch_data_b6

    goto :goto_9f

    :pswitch_7d  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    if-eq v8, v4, :cond_9c

    const/4 v0, 0x1

    goto :goto_9c

    :cond_81
    if-eq v9, v4, :cond_84

    goto :goto_9f

    :cond_84
    move v9, v7

    goto :goto_9c

    :cond_86
    if-eq v8, v4, :cond_89

    goto :goto_9f

    :cond_89
    add-int/lit8 v10, v2, -0x1

    if-ne v7, v10, :cond_8e

    goto :goto_9f

    :cond_8e
    move v8, v7

    goto :goto_9c

    :cond_90
    add-int/lit8 v10, v7, -0x1

    if-eq v8, v10, :cond_95

    goto :goto_9f

    :cond_95
    add-int/lit8 v10, v2, -0x1

    if-ne v7, v10, :cond_9c

    add-int/lit8 v7, v7, -0x1

    goto :goto_9f

    :cond_9c
    :goto_9c
    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    :cond_9f
    :goto_9f
    if-eq v8, v4, :cond_a4

    if-nez v0, :cond_a4

    goto :goto_a5

    :cond_a4
    move v8, v7

    :goto_a5
    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :try_start_a9
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0
    :try_end_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_ad} :catch_ae

    return-object p0

    :catch_ae
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    :cond_b1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    nop

    :pswitch_data_b6
    .packed-switch 0x30
        :pswitch_7d  #00000030
        :pswitch_7d  #00000031
        :pswitch_7d  #00000032
        :pswitch_7d  #00000033
        :pswitch_7d  #00000034
        :pswitch_7d  #00000035
        :pswitch_7d  #00000036
        :pswitch_7d  #00000037
        :pswitch_7d  #00000038
        :pswitch_7d  #00000039
    .end packed-switch
.end method

.method static js_parseInt([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32([Ljava/lang/Object;I)I

    move-result p0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    :cond_13
    const/4 v4, 0x0

    :cond_14
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    move-result v6

    if-nez v6, :cond_1f

    goto :goto_23

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v3, :cond_14

    :goto_23
    const/16 v6, 0x2b

    if-eq v5, v6, :cond_2e

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    if-eqz v0, :cond_30

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    :cond_30
    const/16 v5, 0x58

    const/16 v6, 0x78

    const/16 v7, 0x10

    const/4 v8, -0x1

    const/16 v9, 0x30

    if-nez p0, :cond_3d

    const/4 p0, -0x1

    goto :goto_5d

    :cond_3d
    const/4 v10, 0x2

    if-lt p0, v10, :cond_a0

    const/16 v10, 0x24

    if-le p0, v10, :cond_45

    goto :goto_a0

    :cond_45
    if-ne p0, v7, :cond_5d

    sub-int v10, v3, v4

    if-le v10, v2, :cond_5d

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_5d

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v6, :cond_5b

    if-ne v10, v5, :cond_5d

    :cond_5b
    add-int/lit8 v4, v4, 0x2

    :cond_5d
    :goto_5d
    if-ne p0, v8, :cond_93

    const/16 p0, 0xa

    sub-int/2addr v3, v4

    if-le v3, v2, :cond_90

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_90

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_8d

    if-ne v3, v5, :cond_75

    goto :goto_8d

    :cond_75
    if-gt v9, v3, :cond_90

    const/16 v5, 0x39

    if-gt v3, v5, :cond_90

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v3

    if-eqz v3, :cond_89

    invoke-virtual {v3}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v3

    const/16 v5, 0x96

    if-ge v3, v5, :cond_90

    :cond_89
    const/16 v7, 0x8

    move v4, v2

    goto :goto_94

    :cond_8d
    :goto_8d
    add-int/lit8 v4, v4, 0x2

    goto :goto_94

    :cond_90
    const/16 v7, 0xa

    goto :goto_94

    :cond_93
    move v7, p0

    :goto_94
    invoke-static {v1, v4, v7}, Lorg/mozilla/javascript/ScriptRuntime;->stringPrefixToNumber(Ljava/lang/String;II)D

    move-result-wide v1

    if-eqz v0, :cond_9b

    neg-double v1, v1

    :cond_9b
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_a0
    :goto_a0
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0
.end method

.method private static js_unescape([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_4b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    move v4, v2

    :goto_16
    if-eq v2, v3, :cond_45

    aget-char v5, p0, v2

    add-int/lit8 v2, v2, 0x1

    if-ne v5, v1, :cond_40

    if-eq v2, v3, :cond_40

    aget-char v6, p0, v2

    const/16 v7, 0x75

    if-ne v6, v7, :cond_2b

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v2, 0x5

    goto :goto_2e

    :cond_2b
    add-int/lit8 v7, v2, 0x2

    move v6, v2

    :goto_2e
    if-gt v7, v3, :cond_40

    const/4 v8, 0x0

    :goto_31
    if-eq v6, v7, :cond_3c

    aget-char v9, p0, v6

    invoke-static {v9, v8}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    :cond_3c
    if-ltz v8, :cond_40

    int-to-char v5, v8

    move v2, v7

    :cond_40
    aput-char v5, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_45
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0, v4}, Ljava/lang/String;-><init>([CII)V

    move-object p0, v1

    :cond_4b
    return-object p0
.end method

.method private static oneUcs4ToUtf8Char([BI)I
    .registers 7

    and-int/lit8 v0, p1, -0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    goto :goto_2e

    :cond_a
    ushr-int/lit8 v0, p1, 0xb

    const/4 v3, 0x2

    :goto_d
    if-eqz v0, :cond_14

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_14
    move v0, v3

    :goto_15
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_23

    and-int/lit8 v4, p1, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v0

    ushr-int/lit8 p1, p1, 0x6

    goto :goto_15

    :cond_23
    rsub-int/lit8 v0, v3, 0x8

    shl-int v0, v2, v0

    rsub-int v0, v0, 0x100

    add-int/2addr v0, p1

    int-to-byte p1, v0

    aput-byte p1, p0, v1

    move v2, v3

    :goto_2e
    return v2
.end method

.method private static toHexChar(I)C
    .registers 2

    shr-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    const/16 v0, 0xa

    if-ge p0, v0, :cond_e

    add-int/lit8 p0, p0, 0x30

    goto :goto_11

    :cond_e
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x41

    :goto_11
    int-to-char p0, p0

    return p0
.end method

.method private static unHex(C)I
    .registers 3

    const/16 v0, 0x41

    if-gt v0, p0, :cond_c

    const/16 v1, 0x46

    if-gt p0, v1, :cond_c

    :goto_8
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_c
    const/16 v0, 0x61

    if-gt v0, p0, :cond_15

    const/16 v1, 0x66

    if-gt p0, v1, :cond_15

    goto :goto_8

    :cond_15
    const/16 v0, 0x30

    if-gt v0, p0, :cond_1f

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1f

    sub-int/2addr p0, v0

    return p0

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method private static unHex(CC)I
    .registers 2

    invoke-static {p0}, Lorg/mozilla/javascript/NativeGlobal;->unHex(C)I

    move-result p0

    invoke-static {p1}, Lorg/mozilla/javascript/NativeGlobal;->unHex(C)I

    move-result p1

    if-ltz p0, :cond_10

    if-ltz p1, :cond_10

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method private static uriError()Lorg/mozilla/javascript/EcmaError;
    .registers 2

    const-string v0, "msg.bad.uri"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "URIError"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object p4, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8e

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p4, :pswitch_data_94

    goto/16 :goto_8e

    :pswitch_13  #0xe
    invoke-static {p2, p3, p1, p5}, Lorg/mozilla/javascript/NativeError;->make(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeError;

    move-result-object p1

    return-object p1

    :pswitch_18  #0xd
    array-length p1, p5

    if-eqz p1, :cond_1e

    aget-object p1, p5, v1

    goto :goto_20

    :cond_1e
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_20
    invoke-static {p2, p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_25  #0xc
    invoke-static {p5}, Lorg/mozilla/javascript/NativeGlobal;->js_unescape([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2a  #0xb
    invoke-static {p5}, Lorg/mozilla/javascript/NativeGlobal;->js_parseInt([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2f  #0xa
    invoke-static {p5}, Lorg/mozilla/javascript/NativeGlobal;->js_parseFloat([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_34  #0x9
    array-length p1, p5

    if-nez p1, :cond_3a

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_3c

    :cond_3a
    aget-object p1, p5, v1

    :goto_3c
    invoke-static {p3}, Lorg/mozilla/javascript/xml/XMLLib;->extractFromScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lorg/mozilla/javascript/xml/XMLLib;->isXMLName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_49  #0x8
    array-length p1, p5

    if-ge p1, v0, :cond_4d

    goto :goto_57

    :cond_4d
    aget-object p1, p5, v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    :goto_57
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_5c  #0x7
    array-length p1, p5

    if-ge p1, v0, :cond_62

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_62
    aget-object p1, p5, v1

    invoke-static {p1}, Lorg/mozilla/javascript/NativeNumber;->isFinite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_69  #0x6
    invoke-static {p2, p3, p5}, Lorg/mozilla/javascript/NativeGlobal;->js_eval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6e  #0x5
    invoke-static {p5}, Lorg/mozilla/javascript/NativeGlobal;->js_escape([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_73  #0x3, 0x4
    invoke-static {p5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    if-ne p4, p2, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v0, 0x0

    :goto_7c
    invoke-static {p1, v0}, Lorg/mozilla/javascript/NativeGlobal;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_81  #0x1, 0x2
    invoke-static {p5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    if-ne p4, v0, :cond_88

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    :goto_89
    invoke-static {p1, v0}, Lorg/mozilla/javascript/NativeGlobal;->decode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8e
    :goto_8e
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_81  #00000001
        :pswitch_81  #00000002
        :pswitch_73  #00000003
        :pswitch_73  #00000004
        :pswitch_6e  #00000005
        :pswitch_69  #00000006
        :pswitch_5c  #00000007
        :pswitch_49  #00000008
        :pswitch_34  #00000009
        :pswitch_2f  #0000000a
        :pswitch_2a  #0000000b
        :pswitch_25  #0000000c
        :pswitch_18  #0000000d
        :pswitch_13  #0000000e
    .end packed-switch
.end method
