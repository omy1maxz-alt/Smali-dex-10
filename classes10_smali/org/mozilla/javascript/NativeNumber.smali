.class final Lorg/mozilla/javascript/NativeNumber;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeNumber.java"


# static fields
.field private static final ConstructorId_isFinite:I = -0x1

.field private static final ConstructorId_isInteger:I = -0x3

.field private static final ConstructorId_isNaN:I = -0x2

.field private static final ConstructorId_isSafeInteger:I = -0x4

.field private static final ConstructorId_parseFloat:I = -0x5

.field private static final ConstructorId_parseInt:I = -0x6

.field private static final Id_constructor:I = 0x1

.field private static final Id_toExponential:I = 0x7

.field private static final Id_toFixed:I = 0x6

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toPrecision:I = 0x8

.field private static final Id_toSource:I = 0x4

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x5

.field private static final MAX_PRECISION:I = 0x64

.field private static final MAX_PROTOTYPE_ID:I = 0x8

.field public static final MAX_SAFE_INTEGER:D = 9.007199254740991E15

.field private static final MIN_SAFE_INTEGER:D = -9.007199254740991E15

.field private static final NUMBER_TAG:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x30a28b6f31d79da5L


# instance fields
.field private doubleValue:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Number"

    sput-object v0, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(D)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iput-wide p1, p0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    return-void
.end method

.method private static execConstructorCall(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_9a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e  #0xffffffff
    array-length p0, p1

    if-eqz p0, :cond_28

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object v1, p1, v0

    if-ne p0, v1, :cond_18

    goto :goto_28

    :cond_18
    aget-object p0, p1, v0

    instance-of p0, p0, Ljava/lang/Number;

    if-eqz p0, :cond_25

    aget-object p0, p1, v0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isFinite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_25
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_28
    :goto_28
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_2b  #0xfffffffe
    array-length p0, p1

    if-eqz p0, :cond_47

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object v1, p1, v0

    if-ne p0, v1, :cond_35

    goto :goto_47

    :cond_35
    aget-object p0, p1, v0

    instance-of p0, p0, Ljava/lang/Number;

    if-eqz p0, :cond_44

    aget-object p0, p1, v0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isNaN(Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_44
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_47
    :goto_47
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_4a  #0xfffffffd
    array-length p0, p1

    if-eqz p0, :cond_6a

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object v1, p1, v0

    if-ne p0, v1, :cond_54

    goto :goto_6a

    :cond_54
    aget-object p0, p1, v0

    instance-of p0, p0, Ljava/lang/Number;

    if-eqz p0, :cond_67

    aget-object p0, p1, v0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isInteger(Ljava/lang/Number;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_67
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_6a
    :goto_6a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_6d  #0xfffffffc
    array-length p0, p1

    if-eqz p0, :cond_8d

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object v1, p1, v0

    if-ne p0, v1, :cond_77

    goto :goto_8d

    :cond_77
    aget-object p0, p1, v0

    instance-of p0, p0, Ljava/lang/Number;

    if-eqz p0, :cond_8a

    aget-object p0, p1, v0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isSafeInteger(Ljava/lang/Number;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_8a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_8d
    :goto_8d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_90  #0xfffffffb
    invoke-static {p1}, Lorg/mozilla/javascript/NativeGlobal;->js_parseFloat([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_95  #0xfffffffa
    invoke-static {p1}, Lorg/mozilla/javascript/NativeGlobal;->js_parseInt([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_9a
    .packed-switch -0x6
        :pswitch_95  #fffffffa
        :pswitch_90  #fffffffb
        :pswitch_6d  #fffffffc
        :pswitch_4a  #fffffffd
        :pswitch_2b  #fffffffe
        :pswitch_e  #ffffffff
    .end packed-switch
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/NativeNumber;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeNumber;-><init>(D)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static isDoubleInteger(D)Z
    .registers 5

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v2, v0, p0

    if-nez v2, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private static isDoubleInteger(Ljava/lang/Double;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double p0, v0, v2

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private static isDoubleSafeInteger(D)Z
    .registers 5

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(D)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide v0, 0x433fffffffffffffL  # 9.007199254740991E15

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_1a

    const-wide v0, -0x3cc0000000000001L  # -9.007199254740991E15

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private static isDoubleSafeInteger(Ljava/lang/Double;)Z
    .registers 6

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x433fffffffffffffL  # 9.007199254740991E15

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_22

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, -0x3cc0000000000001L  # -9.007199254740991E15

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method static isFinite(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static isInteger(Ljava/lang/Number;)Z
    .registers 3

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Double;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(Ljava/lang/Double;)Z

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(D)Z

    move-result p0

    return p0
.end method

.method private static isNaN(Ljava/lang/Number;)Ljava/lang/Boolean;
    .registers 3

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static isSafeInteger(Ljava/lang/Number;)Z
    .registers 3

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Double;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isDoubleSafeInteger(Ljava/lang/Double;)Z

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeNumber;->isDoubleSafeInteger(D)Z

    move-result p0

    return p0
.end method

.method private static num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;
    .registers 13

    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_5

    goto :goto_1b

    :cond_5
    aget-object p3, p2, v1

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    int-to-double v4, p5

    cmpg-double p3, v2, v4

    if-ltz p3, :cond_29

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    cmpl-double p3, v2, v4

    if-gtz p3, :cond_29

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v1

    move p3, p4

    :goto_1b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v1, p6

    invoke-static {p2, p3, v1, p0, p1}, Lorg/mozilla/javascript/DToA;->JS_dtostr(Ljava/lang/StringBuilder;IID)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    aget-object p0, p2, v1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.bad.precision"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 17

    move-object v0, p4

    move-object/from16 v2, p5

    sget-object v1, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    move-object v3, p1

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v6, :cond_31

    array-length v1, v2

    if-lt v1, v6, :cond_24

    aget-object v1, v2, v7

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    :cond_24
    if-nez v0, :cond_2c

    new-instance v0, Lorg/mozilla/javascript/NativeNumber;

    invoke-direct {v0, v4, v5}, Lorg/mozilla/javascript/NativeNumber;-><init>(D)V

    return-object v0

    :cond_2c
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_31
    if-ge v1, v6, :cond_38

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeNumber;->execConstructorCall(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_38
    instance-of v6, v0, Lorg/mozilla/javascript/NativeNumber;

    if-eqz v6, :cond_ef

    check-cast v0, Lorg/mozilla/javascript/NativeNumber;

    iget-wide v8, v0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    const-string v0, "Infinity"

    const-string v3, "-Infinity"

    const-string v6, "NaN"

    const/16 v10, 0xa

    packed-switch v1, :pswitch_data_f4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_55  #0x8
    array-length v1, v2

    if-eqz v1, :cond_7e

    aget-object v1, v2, v7

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v1, v7, :cond_5f

    goto :goto_7e

    :cond_5f
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_66

    return-object v6

    :cond_66
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_72

    cmpl-double v1, v8, v4

    if-ltz v1, :cond_71

    return-object v0

    :cond_71
    return-object v3

    :cond_72
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-wide v0, v8

    move-object/from16 v2, p5

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/NativeNumber;->num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7e
    :goto_7e
    invoke-static {v8, v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_83  #0x7
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_8a

    return-object v6

    :cond_8a
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_96

    cmpl-double v1, v8, v4

    if-ltz v1, :cond_95

    return-object v0

    :cond_95
    return-object v3

    :cond_96
    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-wide v0, v8

    move-object/from16 v2, p5

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/NativeNumber;->num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a2  #0x6
    move-object v0, p2

    iget v0, v0, Lorg/mozilla/javascript/Context;->version:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_ae

    const/16 v0, -0x14

    const/16 v5, -0x14

    goto :goto_af

    :cond_ae
    const/4 v5, 0x0

    :goto_af
    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-wide v0, v8

    move-object/from16 v2, p5

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/NativeNumber;->num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_ba  #0x5
    invoke-static {v8, v9}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :pswitch_bf  #0x4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(new Number("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_da  #0x2, 0x3
    array-length v0, v2

    if-eqz v0, :cond_ea

    aget-object v0, v2, v7

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_e4

    goto :goto_ea

    :cond_e4
    aget-object v0, v2, v7

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v10

    :cond_ea
    :goto_ea
    invoke-static {v8, v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_ef
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :pswitch_data_f4
    .packed-switch 0x2
        :pswitch_da  #00000002
        :pswitch_da  #00000003
        :pswitch_bf  #00000004
        :pswitch_ba  #00000005
        :pswitch_a2  #00000006
        :pswitch_83  #00000007
        :pswitch_55  #00000008
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .registers 11

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    const-string v1, "NaN"

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "POSITIVE_INFINITY"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "NEGATIVE_INFINITY"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MAX_VALUE"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MIN_VALUE"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide v0, 0x433fffffffffffffL  # 9.007199254740991E15

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MAX_SAFE_INTEGER"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide v0, -0x3cc0000000000001L  # -9.007199254740991E15

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MIN_SAFE_INTEGER"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object v0, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    const/4 v6, -0x1

    const-string v7, "isFinite"

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v6, -0x2

    const-string v7, "isNaN"

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v6, -0x3

    const-string v7, "isInteger"

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v6, -0x4

    const-string v7, "isSafeInteger"

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v6, -0x5

    const-string v7, "parseFloat"

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v6, -0x6

    const-string v7, "parseInt"

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/16 v4, 0x74

    const/4 v5, 0x0

    if-eq v0, v3, :cond_4d

    if-eq v0, v2, :cond_39

    const/16 v6, 0xb

    if-eq v0, v6, :cond_25

    const/16 v2, 0xd

    if-eq v0, v2, :cond_20

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1c

    goto :goto_61

    :cond_1c
    const-string/jumbo v0, "toLocaleString"

    goto :goto_63

    :cond_20
    const-string/jumbo v0, "toExponential"

    const/4 v1, 0x7

    goto :goto_63

    :cond_25
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_31

    const/4 v1, 0x1

    const-string v0, "constructor"

    goto :goto_63

    :cond_31
    if-ne v0, v4, :cond_61

    const-string/jumbo v0, "toPrecision"

    const/16 v1, 0x8

    goto :goto_63

    :cond_39
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_46

    const/4 v1, 0x4

    const-string/jumbo v0, "toSource"

    goto :goto_63

    :cond_46
    if-ne v0, v4, :cond_61

    const/4 v1, 0x2

    const-string/jumbo v0, "toString"

    goto :goto_63

    :cond_4d
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_58

    const/4 v1, 0x6

    const-string/jumbo v0, "toFixed"

    goto :goto_63

    :cond_58
    const/16 v1, 0x76

    if-ne v0, v1, :cond_61

    const/4 v1, 0x5

    const-string/jumbo v0, "valueOf"

    goto :goto_63

    :cond_61
    :goto_61
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_63
    if-eqz v0, :cond_6e

    if-eq v0, p1, :cond_6e

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6e

    goto :goto_6f

    :cond_6e
    move v5, v1

    :goto_6f
    return v5
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Number"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_36

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f  #0x8
    const-string/jumbo v0, "toPrecision"

    goto :goto_2f

    :pswitch_13  #0x7
    const-string/jumbo v0, "toExponential"

    goto :goto_2f

    :pswitch_17  #0x6
    const-string/jumbo v0, "toFixed"

    goto :goto_2f

    :pswitch_1b  #0x5
    const-string/jumbo v1, "valueOf"

    goto :goto_22

    :pswitch_1f  #0x4
    const-string/jumbo v1, "toSource"

    :goto_22
    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_2f

    :pswitch_25  #0x3
    const-string/jumbo v0, "toLocaleString"

    goto :goto_2f

    :pswitch_29  #0x2
    const-string/jumbo v0, "toString"

    goto :goto_2f

    :pswitch_2d  #0x1
    const-string v0, "constructor"

    :goto_2f
    sget-object v2, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2d  #00000001
        :pswitch_29  #00000002
        :pswitch_25  #00000003
        :pswitch_1f  #00000004
        :pswitch_1b  #00000005
        :pswitch_17  #00000006
        :pswitch_13  #00000007
        :pswitch_f  #00000008
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
