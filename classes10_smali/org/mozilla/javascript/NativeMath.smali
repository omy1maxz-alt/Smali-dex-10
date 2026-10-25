.class final Lorg/mozilla/javascript/NativeMath;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeMath.java"


# static fields
.field private static final Double32:Ljava/lang/Double;

.field private static final Id_E:I = 0x25

.field private static final Id_LN10:I = 0x27

.field private static final Id_LN2:I = 0x28

.field private static final Id_LOG10E:I = 0x2a

.field private static final Id_LOG2E:I = 0x29

.field private static final Id_PI:I = 0x26

.field private static final Id_SQRT1_2:I = 0x2b

.field private static final Id_SQRT2:I = 0x2c

.field private static final Id_abs:I = 0x2

.field private static final Id_acos:I = 0x3

.field private static final Id_acosh:I = 0x1e

.field private static final Id_asin:I = 0x4

.field private static final Id_asinh:I = 0x1f

.field private static final Id_atan:I = 0x5

.field private static final Id_atan2:I = 0x6

.field private static final Id_atanh:I = 0x20

.field private static final Id_cbrt:I = 0x14

.field private static final Id_ceil:I = 0x7

.field private static final Id_clz32:I = 0x24

.field private static final Id_cos:I = 0x8

.field private static final Id_cosh:I = 0x15

.field private static final Id_exp:I = 0x9

.field private static final Id_expm1:I = 0x16

.field private static final Id_floor:I = 0xa

.field private static final Id_fround:I = 0x23

.field private static final Id_hypot:I = 0x17

.field private static final Id_imul:I = 0x1c

.field private static final Id_log:I = 0xb

.field private static final Id_log10:I = 0x19

.field private static final Id_log1p:I = 0x18

.field private static final Id_log2:I = 0x22

.field private static final Id_max:I = 0xc

.field private static final Id_min:I = 0xd

.field private static final Id_pow:I = 0xe

.field private static final Id_random:I = 0xf

.field private static final Id_round:I = 0x10

.field private static final Id_sign:I = 0x21

.field private static final Id_sin:I = 0x11

.field private static final Id_sinh:I = 0x1a

.field private static final Id_sqrt:I = 0x12

.field private static final Id_tan:I = 0x13

.field private static final Id_tanh:I = 0x1b

.field private static final Id_toSource:I = 0x1

.field private static final Id_trunc:I = 0x1d

.field private static final LAST_METHOD_ID:I = 0x24

.field private static final LOG2E:D = 1.4426950408889634

.field private static final MATH_TAG:Ljava/lang/Object;

.field private static final MAX_ID:I = 0x2c

.field private static final serialVersionUID:J = -0x7aa9e4af6da33631L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Math"

    sput-object v0, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    const-wide/high16 v0, 0x4040000000000000L  # 32.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeMath;->Double32:Ljava/lang/Double;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeMath;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeMath;-><init>()V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p1, :cond_19

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_19
    const/4 p1, 0x2

    const-string v1, "Math"

    invoke-static {p0, v1, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static js_hypot([Ljava/lang/Object;)D
    .registers 11

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    :cond_5
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    if-ge v3, v2, :cond_28

    aget-object v6, p0, v3

    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1a

    const/4 v5, 0x1

    goto :goto_25

    :cond_1a
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_22

    const/4 v4, 0x1

    goto :goto_25

    :cond_22
    mul-double v6, v6, v6

    add-double/2addr v0, v6

    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_28
    if-eqz v4, :cond_2d

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_2d
    if-eqz v5, :cond_32

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    return-wide v0

    :cond_32
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static js_imul([Ljava/lang/Object;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32([Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32([Ljava/lang/Object;I)I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method private static js_pow(DD)D
    .registers 23

    move-wide/from16 v0, p2

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v5, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_11

    move-wide v5, v0

    goto/16 :goto_a9

    :cond_11
    cmpl-double v2, v0, v7

    if-nez v2, :cond_18

    move-wide v5, v3

    goto/16 :goto_a9

    :cond_18
    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x1

    const-wide/high16 v15, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    cmpl-double v2, p0, v7

    if-nez v2, :cond_48

    div-double v3, v3, p0

    cmpl-double v2, v3, v7

    if-lez v2, :cond_2d

    cmpl-double v2, v0, v7

    if-lez v2, :cond_a9

    goto :goto_80

    :cond_2d
    double-to-long v2, v0

    long-to-double v9, v2

    cmpl-double v4, v9, v0

    if-nez v4, :cond_43

    and-long/2addr v2, v13

    cmp-long v4, v2, v11

    if-eqz v4, :cond_43

    cmpl-double v2, v0, v7

    if-lez v2, :cond_40

    const-wide/high16 v9, -0x8000000000000000L

    goto/16 :goto_a8

    :cond_40
    move-wide v9, v15

    goto/16 :goto_a8

    :cond_43
    cmpl-double v2, v0, v7

    if-lez v2, :cond_a9

    goto :goto_80

    :cond_48
    invoke-static/range {p0 .. p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_a8

    const-wide/high16 v17, -0x4010000000000000L  # -1.0

    cmpl-double v2, v0, v5

    if-nez v2, :cond_6a

    cmpg-double v0, p0, v17

    if-ltz v0, :cond_a9

    cmpg-double v0, v3, p0

    if-gez v0, :cond_61

    goto :goto_a9

    :cond_61
    cmpg-double v0, v17, p0

    if-gez v0, :cond_a8

    cmpg-double v0, p0, v3

    if-gez v0, :cond_a8

    goto :goto_80

    :cond_6a
    cmpl-double v2, v0, v15

    if-nez v2, :cond_82

    cmpg-double v0, p0, v17

    if-ltz v0, :cond_80

    cmpg-double v0, v3, p0

    if-gez v0, :cond_77

    goto :goto_80

    :cond_77
    cmpg-double v0, v17, p0

    if-gez v0, :cond_a8

    cmpg-double v0, p0, v3

    if-gez v0, :cond_a8

    goto :goto_a9

    :cond_80
    :goto_80
    move-wide v5, v7

    goto :goto_a9

    :cond_82
    cmpl-double v2, p0, v5

    if-nez v2, :cond_8b

    cmpl-double v2, v0, v7

    if-lez v2, :cond_80

    goto :goto_a9

    :cond_8b
    cmpl-double v2, p0, v15

    if-nez v2, :cond_a8

    double-to-long v2, v0

    long-to-double v9, v2

    cmpl-double v4, v9, v0

    if-nez v4, :cond_a3

    and-long/2addr v2, v13

    cmp-long v4, v2, v11

    if-eqz v4, :cond_a3

    cmpl-double v2, v0, v7

    if-lez v2, :cond_9f

    goto :goto_a1

    :cond_9f
    const-wide/high16 v15, -0x8000000000000000L

    :goto_a1
    move-wide v5, v15

    goto :goto_a9

    :cond_a3
    cmpl-double v2, v0, v7

    if-lez v2, :cond_80

    goto :goto_a9

    :cond_a8
    :goto_a8
    move-wide v5, v9

    :cond_a9
    :goto_a9
    return-wide v5
.end method

.method private static js_trunc(D)D
    .registers 5

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_b

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    goto :goto_f

    :cond_b
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_f
    return-wide p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v0, p5

    sget-object v1, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v1

    const-wide/16 v2, 0x0

    const-wide v4, 0x3ff71547652b82feL  # 1.4426950408889634

    const-wide/high16 v6, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    const-wide/high16 v8, -0x4010000000000000L  # -1.0

    const-wide/high16 v10, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    const/4 v12, 0x1

    const-wide/high16 v15, 0x3ff0000000000000L  # 1.0

    const-wide/16 v17, 0x0

    const/4 v13, 0x0

    packed-switch v1, :pswitch_data_2c0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_35  #0x24
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v6, v0, v17

    if-eqz v6, :cond_69

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_69

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_4a

    goto :goto_69

    :cond_4a
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_55

    sget-object v0, Lorg/mozilla/javascript/NativeMath;->Double32:Ljava/lang/Double;

    return-object v0

    :cond_55
    const-wide/high16 v2, 0x403f000000000000L  # 31.0

    ushr-long/2addr v0, v13

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_69
    :goto_69
    sget-object v0, Lorg/mozilla/javascript/NativeMath;->Double32:Ljava/lang/Double;

    return-object v0

    :pswitch_6c  #0x23
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v13, v0

    goto/16 :goto_2b7

    :pswitch_74  #0x22
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpg-double v2, v0, v17

    if-gez v2, :cond_7e

    goto/16 :goto_2a3

    :cond_7e
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    :cond_84
    :goto_84
    move-wide v13, v0

    goto/16 :goto_2b7

    :pswitch_87  #0x21
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_a9

    cmpl-double v2, v0, v17

    if-nez v2, :cond_a0

    div-double/2addr v15, v0

    cmpl-double v0, v15, v17

    if-lez v0, :cond_9d

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    return-object v0

    :cond_9d
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->negativeZeroObj:Ljava/lang/Double;

    return-object v0

    :cond_a0
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_a9
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object v0

    :pswitch_ac  #0x20
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_de

    cmpg-double v2, v8, v0

    if-gtz v2, :cond_de

    cmpg-double v2, v0, v15

    if-gtz v2, :cond_de

    cmpl-double v2, v0, v17

    if-nez v2, :cond_cd

    div-double/2addr v15, v0

    cmpl-double v0, v15, v17

    if-lez v0, :cond_ca

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    return-object v0

    :cond_ca
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->negativeZeroObj:Ljava/lang/Double;

    return-object v0

    :cond_cd
    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    add-double v4, v0, v15

    sub-double/2addr v0, v15

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_de
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object v0

    :pswitch_e1  #0x1f
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_f0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_f0
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_116

    cmpl-double v2, v0, v17

    if-nez v2, :cond_105

    div-double/2addr v15, v0

    cmpl-double v0, v15, v17

    if-lez v0, :cond_102

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    return-object v0

    :cond_102
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->negativeZeroObj:Ljava/lang/Double;

    return-object v0

    :cond_105
    mul-double v2, v0, v0

    add-double/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_116
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object v0

    :pswitch_119  #0x1e
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_134

    mul-double v2, v0, v0

    sub-double/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_134
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object v0

    :pswitch_137  #0x1d
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeMath;->js_trunc(D)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_141  #0x1c
    invoke-static/range {p5 .. p5}, Lorg/mozilla/javascript/NativeMath;->js_imul([Ljava/lang/Object;)I

    move-result v0

    int-to-double v13, v0

    goto/16 :goto_2b7

    :pswitch_148  #0x1b
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_152  #0x1a
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_15c  #0x19
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_166  #0x18
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_170  #0x17
    invoke-static/range {p5 .. p5}, Lorg/mozilla/javascript/NativeMath;->js_hypot([Ljava/lang/Object;)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_176  #0x16
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->expm1(D)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_180  #0x15
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_18a  #0x14
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_194  #0x13
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_19e  #0x12
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_1a8  #0x11
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1b4

    goto/16 :goto_2a3

    :cond_1b4
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    goto/16 :goto_84

    :pswitch_1ba  #0x10
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2b7

    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2b7

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1d5

    long-to-double v0, v0

    goto/16 :goto_84

    :cond_1d5
    cmpg-double v0, v13, v17

    if-gez v0, :cond_1dd

    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->negativeZero:D

    goto/16 :goto_84

    :cond_1dd
    cmpl-double v0, v13, v17

    if-eqz v0, :cond_2b7

    :goto_1e1
    move-wide/from16 v13, v17

    goto/16 :goto_2b7

    :pswitch_1e5  #0xf
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_1eb  #0xe
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v1

    invoke-static {v0, v12}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/mozilla/javascript/NativeMath;->js_pow(DD)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_1f9  #0xc, 0xd
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1fe

    goto :goto_1ff

    :cond_1fe
    move-wide v6, v10

    :goto_1ff
    array-length v3, v0

    if-eq v13, v3, :cond_220

    aget-object v3, v0, v13

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_211

    move-wide v13, v3

    goto/16 :goto_2b7

    :cond_211
    if-ne v1, v2, :cond_218

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    goto :goto_21c

    :cond_218
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    :goto_21c
    move-wide v6, v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_1ff

    :cond_220
    move-wide v13, v6

    goto/16 :goto_2b7

    :pswitch_223  #0xb
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpg-double v2, v0, v17

    if-gez v2, :cond_22d

    goto/16 :goto_2a3

    :cond_22d
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    goto/16 :goto_84

    :pswitch_233  #0xa
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    goto/16 :goto_2b7

    :pswitch_23d  #0x9
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v2, v0, v10

    if-nez v2, :cond_247

    goto/16 :goto_84

    :cond_247
    cmpl-double v2, v0, v6

    if-nez v2, :cond_24c

    goto :goto_1e1

    :cond_24c
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    goto/16 :goto_84

    :pswitch_252  #0x8
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_25d

    goto :goto_2a3

    :cond_25d
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    goto/16 :goto_84

    :pswitch_263  #0x7
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    goto :goto_2b7

    :pswitch_26c  #0x6
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v1

    invoke-static {v0, v12}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v13

    goto :goto_2b7

    :pswitch_279  #0x5
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    goto :goto_2b7

    :pswitch_282  #0x3, 0x4
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2a3

    cmpg-double v0, v8, v2

    if-gtz v0, :cond_2a3

    cmpg-double v0, v2, v15

    if-gtz v0, :cond_2a3

    const/4 v0, 0x3

    if-ne v1, v0, :cond_29d

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    goto/16 :goto_84

    :cond_29d
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    goto/16 :goto_84

    :cond_2a3
    :goto_2a3
    const-wide/high16 v13, 0x7ff8000000000000L  # Double.NaN

    goto :goto_2b7

    :pswitch_2a6  #0x2
    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v2, v0, v17

    if-nez v2, :cond_2b0

    goto/16 :goto_1e1

    :cond_2b0
    cmpg-double v2, v0, v17

    if-gez v2, :cond_84

    neg-double v0, v0

    goto/16 :goto_84

    :cond_2b7
    :goto_2b7
    invoke-static {v13, v14}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :pswitch_2bc  #0x1
    const-string v0, "Math"

    return-object v0

    nop

    :pswitch_data_2c0
    .packed-switch 0x1
        :pswitch_2bc  #00000001
        :pswitch_2a6  #00000002
        :pswitch_282  #00000003
        :pswitch_282  #00000004
        :pswitch_279  #00000005
        :pswitch_26c  #00000006
        :pswitch_263  #00000007
        :pswitch_252  #00000008
        :pswitch_23d  #00000009
        :pswitch_233  #0000000a
        :pswitch_223  #0000000b
        :pswitch_1f9  #0000000c
        :pswitch_1f9  #0000000d
        :pswitch_1eb  #0000000e
        :pswitch_1e5  #0000000f
        :pswitch_1ba  #00000010
        :pswitch_1a8  #00000011
        :pswitch_19e  #00000012
        :pswitch_194  #00000013
        :pswitch_18a  #00000014
        :pswitch_180  #00000015
        :pswitch_176  #00000016
        :pswitch_170  #00000017
        :pswitch_166  #00000018
        :pswitch_15c  #00000019
        :pswitch_152  #0000001a
        :pswitch_148  #0000001b
        :pswitch_141  #0000001c
        :pswitch_137  #0000001d
        :pswitch_119  #0000001e
        :pswitch_e1  #0000001f
        :pswitch_ac  #00000020
        :pswitch_87  #00000021
        :pswitch_74  #00000022
        :pswitch_6c  #00000023
        :pswitch_35  #00000024
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 18

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x72

    const/4 v5, 0x4

    const/16 v9, 0x6c

    const/16 v10, 0x70

    const/16 v11, 0x65

    const/16 v12, 0x4c

    const/16 v13, 0x68

    const/16 v15, 0x74

    const/16 v6, 0x63

    const/16 v4, 0x61

    const/16 v3, 0x73

    const/4 v8, 0x0

    const/4 v14, 0x1

    const/4 v7, 0x2

    packed-switch v1, :pswitch_data_2a6

    goto/16 :goto_297

    :pswitch_23  #0x8
    const-string/jumbo v1, "toSource"

    const/4 v5, 0x1

    goto/16 :goto_299

    :pswitch_29  #0x7
    const/16 v5, 0x2b

    const-string v1, "SQRT1_2"

    goto/16 :goto_299

    :pswitch_2f  #0x6
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_3b

    const/16 v5, 0x2a

    const-string v1, "LOG10E"

    goto/16 :goto_299

    :cond_3b
    const/16 v3, 0x66

    if-ne v1, v3, :cond_45

    const/16 v5, 0x23

    const-string v1, "fround"

    goto/16 :goto_299

    :cond_45
    if-ne v1, v2, :cond_297

    const/16 v5, 0xf

    const-string v1, "random"

    goto/16 :goto_299

    :pswitch_4d  #0x5
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_f1

    const/16 v12, 0x53

    if-eq v1, v12, :cond_eb

    if-eq v1, v4, :cond_a6

    if-eq v1, v6, :cond_a0

    if-eq v1, v13, :cond_9a

    if-eq v1, v9, :cond_84

    if-eq v1, v2, :cond_7e

    if-eq v1, v15, :cond_77

    if-eq v1, v11, :cond_71

    const/16 v2, 0x66

    if-eq v1, v2, :cond_6b

    goto/16 :goto_297

    :cond_6b
    const/16 v5, 0xa

    const-string v1, "floor"

    goto/16 :goto_299

    :cond_71
    const/16 v5, 0x16

    const-string v1, "expm1"

    goto/16 :goto_299

    :cond_77
    const/16 v5, 0x1d

    const-string/jumbo v1, "trunc"

    goto/16 :goto_299

    :cond_7e
    const/16 v5, 0x10

    const-string v1, "round"

    goto/16 :goto_299

    :cond_84
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_92

    const/16 v5, 0x19

    const-string v1, "log10"

    goto/16 :goto_299

    :cond_92
    if-ne v1, v10, :cond_297

    const/16 v5, 0x18

    const-string v1, "log1p"

    goto/16 :goto_299

    :cond_9a
    const/16 v5, 0x17

    const-string v1, "hypot"

    goto/16 :goto_299

    :cond_a0
    const/16 v5, 0x24

    const-string v1, "clz32"

    goto/16 :goto_299

    :cond_a6
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_b2

    const/16 v5, 0x1e

    const-string v1, "acosh"

    goto/16 :goto_299

    :cond_b2
    if-ne v1, v3, :cond_ba

    const/16 v5, 0x1f

    const-string v1, "asinh"

    goto/16 :goto_299

    :cond_ba
    if-ne v1, v15, :cond_297

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_d6

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_297

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x6e

    if-ne v1, v3, :cond_297

    const/4 v8, 0x6

    goto/16 :goto_2a5

    :cond_d6
    const/4 v2, 0x3

    const/16 v3, 0x6e

    if-ne v1, v13, :cond_297

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_297

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_297

    const/16 v8, 0x20

    goto/16 :goto_2a5

    :cond_eb
    const/16 v5, 0x2c

    const-string v1, "SQRT2"

    goto/16 :goto_299

    :cond_f1
    const/16 v5, 0x29

    const-string v1, "LOG2E"

    goto/16 :goto_299

    :pswitch_f7  #0x4
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_1a4

    if-eq v1, v11, :cond_19f

    const/16 v2, 0x69

    if-eq v1, v2, :cond_170

    const/16 v2, 0x6d

    if-eq v1, v2, :cond_16a

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_13c

    const/16 v2, 0x71

    if-eq v1, v2, :cond_135

    if-eq v1, v3, :cond_131

    if-eq v1, v15, :cond_12c

    packed-switch v1, :pswitch_data_2ba

    goto/16 :goto_297

    :pswitch_11a  #0x63
    const-string v1, "acos"

    const/4 v5, 0x3

    goto/16 :goto_299

    :pswitch_11f  #0x62
    const/16 v5, 0x14

    const-string v1, "cbrt"

    goto/16 :goto_299

    :pswitch_125  #0x61
    const/16 v5, 0x1b

    const-string/jumbo v1, "tanh"

    goto/16 :goto_299

    :cond_12c
    const/4 v5, 0x5

    const-string v1, "atan"

    goto/16 :goto_299

    :cond_131
    const-string v1, "asin"

    goto/16 :goto_299

    :cond_135
    const/16 v5, 0x12

    const-string/jumbo v1, "sqrt"

    goto/16 :goto_299

    :cond_13c
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_153

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_297

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_297

    const/16 v8, 0x15

    goto/16 :goto_2a5

    :cond_153
    const/4 v2, 0x3

    if-ne v1, v9, :cond_297

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x67

    if-ne v1, v3, :cond_297

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_297

    const/16 v8, 0x22

    goto/16 :goto_2a5

    :cond_16a
    const/16 v5, 0x1c

    const-string v1, "imul"

    goto/16 :goto_299

    :cond_170
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_189

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_297

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_297

    const/16 v8, 0x1a

    goto/16 :goto_2a5

    :cond_189
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_297

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_297

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_297

    const/16 v8, 0x21

    goto/16 :goto_2a5

    :cond_19f
    const/4 v5, 0x7

    const-string v1, "ceil"

    goto/16 :goto_299

    :cond_1a4
    const/16 v5, 0x27

    const-string v1, "LN10"

    goto/16 :goto_299

    :pswitch_1aa  #0x3
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_266

    if-eq v1, v4, :cond_256

    if-eq v1, v6, :cond_245

    if-eq v1, v11, :cond_234

    if-eq v1, v10, :cond_220

    if-eq v1, v9, :cond_20c

    const/16 v2, 0x6d

    if-eq v1, v2, :cond_1ea

    if-eq v1, v3, :cond_1d6

    if-eq v1, v15, :cond_1c4

    goto/16 :goto_297

    :cond_1c4
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_297

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_297

    const/16 v8, 0x13

    goto/16 :goto_2a5

    :cond_1d6
    const/16 v2, 0x6e

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_297

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x69

    if-ne v1, v3, :cond_297

    const/16 v8, 0x11

    goto/16 :goto_2a5

    :cond_1ea
    const/16 v2, 0x6e

    const/16 v3, 0x69

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1fe

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_297

    const/16 v8, 0xd

    goto/16 :goto_2a5

    :cond_1fe
    const/16 v2, 0x78

    if-ne v1, v2, :cond_297

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_297

    const/16 v8, 0xc

    goto/16 :goto_2a5

    :cond_20c
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_297

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_297

    const/16 v8, 0xb

    goto/16 :goto_2a5

    :cond_220
    const/16 v2, 0x6f

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x77

    if-ne v1, v3, :cond_297

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_297

    const/16 v8, 0xe

    goto/16 :goto_2a5

    :cond_234
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_297

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_297

    const/16 v8, 0x9

    goto :goto_2a5

    :cond_245
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_297

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_297

    const/16 v8, 0x8

    goto :goto_2a5

    :cond_256
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_297

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_297

    const/4 v8, 0x2

    goto :goto_2a5

    :cond_266
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_297

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_297

    const/16 v8, 0x28

    goto :goto_2a5

    :pswitch_279  #0x2
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_297

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_297

    const/16 v8, 0x26

    goto :goto_2a5

    :pswitch_28c  #0x1
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_297

    const/16 v8, 0x25

    goto :goto_2a5

    :cond_297
    :goto_297
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_299
    if-eqz v1, :cond_2a4

    if-eq v1, v0, :cond_2a4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a4

    goto :goto_2a5

    :cond_2a4
    move v8, v5

    :goto_2a5
    return v8

    :pswitch_data_2a6
    .packed-switch 0x1
        :pswitch_28c  #00000001
        :pswitch_279  #00000002
        :pswitch_1aa  #00000003
        :pswitch_f7  #00000004
        :pswitch_4d  #00000005
        :pswitch_2f  #00000006
        :pswitch_29  #00000007
        :pswitch_23  #00000008
    .end packed-switch

    :pswitch_data_2ba
    .packed-switch 0x61
        :pswitch_125  #00000061
        :pswitch_11f  #00000062
        :pswitch_11a  #00000063
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Math"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/16 v0, 0x24

    if-gt p1, v0, :cond_9a

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_f0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14  #0x24
    const-string v0, "clz32"

    goto/16 :goto_94

    :pswitch_18  #0x23
    const-string v0, "fround"

    goto/16 :goto_94

    :pswitch_1c  #0x22
    const-string v0, "log2"

    goto/16 :goto_94

    :pswitch_20  #0x21
    const-string/jumbo v0, "sign"

    goto/16 :goto_94

    :pswitch_25  #0x20
    const-string v0, "atanh"

    goto/16 :goto_94

    :pswitch_29  #0x1f
    const-string v0, "asinh"

    goto/16 :goto_94

    :pswitch_2d  #0x1e
    const-string v0, "acosh"

    goto/16 :goto_94

    :pswitch_31  #0x1d
    const-string/jumbo v0, "trunc"

    goto/16 :goto_94

    :pswitch_36  #0x1c
    const-string v0, "imul"

    goto :goto_81

    :pswitch_39  #0x1b
    const-string/jumbo v0, "tanh"

    goto/16 :goto_94

    :pswitch_3e  #0x1a
    const-string/jumbo v0, "sinh"

    goto/16 :goto_94

    :pswitch_43  #0x19
    const-string v0, "log10"

    goto :goto_94

    :pswitch_46  #0x18
    const-string v0, "log1p"

    goto :goto_94

    :pswitch_49  #0x17
    const-string v0, "hypot"

    goto :goto_81

    :pswitch_4c  #0x16
    const-string v0, "expm1"

    goto :goto_94

    :pswitch_4f  #0x15
    const-string v0, "cosh"

    goto :goto_94

    :pswitch_52  #0x14
    const-string v0, "cbrt"

    goto :goto_94

    :pswitch_55  #0x13
    const-string/jumbo v0, "tan"

    goto :goto_94

    :pswitch_59  #0x12
    const-string/jumbo v0, "sqrt"

    goto :goto_94

    :pswitch_5d  #0x11
    const-string/jumbo v0, "sin"

    goto :goto_94

    :pswitch_61  #0x10
    const-string v0, "round"

    goto :goto_94

    :pswitch_64  #0xf
    const-string v1, "random"

    goto :goto_92

    :pswitch_67  #0xe
    const-string v0, "pow"

    goto :goto_81

    :pswitch_6a  #0xd
    const-string v0, "min"

    goto :goto_81

    :pswitch_6d  #0xc
    const-string v0, "max"

    goto :goto_81

    :pswitch_70  #0xb
    const-string v0, "log"

    goto :goto_94

    :pswitch_73  #0xa
    const-string v0, "floor"

    goto :goto_94

    :pswitch_76  #0x9
    const-string v0, "exp"

    goto :goto_94

    :pswitch_79  #0x8
    const-string v0, "cos"

    goto :goto_94

    :pswitch_7c  #0x7
    const-string v0, "ceil"

    goto :goto_94

    :pswitch_7f  #0x6
    const-string v0, "atan2"

    :goto_81
    const/4 v2, 0x2

    goto :goto_94

    :pswitch_83  #0x5
    const-string v0, "atan"

    goto :goto_94

    :pswitch_86  #0x4
    const-string v0, "asin"

    goto :goto_94

    :pswitch_89  #0x3
    const-string v0, "acos"

    goto :goto_94

    :pswitch_8c  #0x2
    const-string v0, "abs"

    goto :goto_94

    :pswitch_8f  #0x1
    const-string/jumbo v1, "toSource"

    :goto_92
    move-object v0, v1

    const/4 v2, 0x0

    :goto_94
    sget-object v1, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v2}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    goto :goto_ee

    :cond_9a
    packed-switch p1, :pswitch_data_13c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a7  #0x2c
    const-wide v0, 0x3ff6a09e667f3bcdL  # 1.4142135623730951

    const-string v2, "SQRT2"

    goto :goto_e6

    :pswitch_af  #0x2b
    const-wide v0, 0x3fe6a09e667f3bcdL  # 0.7071067811865476

    const-string v2, "SQRT1_2"

    goto :goto_e6

    :pswitch_b7  #0x2a
    const-wide v0, 0x3fdbcb7b1526e50eL  # 0.4342944819032518

    const-string v2, "LOG10E"

    goto :goto_e6

    :pswitch_bf  #0x29
    const-wide v0, 0x3ff71547652b82feL  # 1.4426950408889634

    const-string v2, "LOG2E"

    goto :goto_e6

    :pswitch_c7  #0x28
    const-wide v0, 0x3fe62e42fefa39efL  # 0.6931471805599453

    const-string v2, "LN2"

    goto :goto_e6

    :pswitch_cf  #0x27
    const-wide v0, 0x40026bb1bbb55516L  # 2.302585092994046

    const-string v2, "LN10"

    goto :goto_e6

    :pswitch_d7  #0x26
    const-wide v0, 0x400921fb54442d18L  # Math.PI

    const-string v2, "PI"

    goto :goto_e6

    :pswitch_df  #0x25
    const-wide v0, 0x4005bf0a8b145769L  # Math.E

    const-string v2, "E"

    :goto_e6
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeValue(ILjava/lang/String;Ljava/lang/Object;I)V

    :goto_ee
    return-void

    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_8f  #00000001
        :pswitch_8c  #00000002
        :pswitch_89  #00000003
        :pswitch_86  #00000004
        :pswitch_83  #00000005
        :pswitch_7f  #00000006
        :pswitch_7c  #00000007
        :pswitch_79  #00000008
        :pswitch_76  #00000009
        :pswitch_73  #0000000a
        :pswitch_70  #0000000b
        :pswitch_6d  #0000000c
        :pswitch_6a  #0000000d
        :pswitch_67  #0000000e
        :pswitch_64  #0000000f
        :pswitch_61  #00000010
        :pswitch_5d  #00000011
        :pswitch_59  #00000012
        :pswitch_55  #00000013
        :pswitch_52  #00000014
        :pswitch_4f  #00000015
        :pswitch_4c  #00000016
        :pswitch_49  #00000017
        :pswitch_46  #00000018
        :pswitch_43  #00000019
        :pswitch_3e  #0000001a
        :pswitch_39  #0000001b
        :pswitch_36  #0000001c
        :pswitch_31  #0000001d
        :pswitch_2d  #0000001e
        :pswitch_29  #0000001f
        :pswitch_25  #00000020
        :pswitch_20  #00000021
        :pswitch_1c  #00000022
        :pswitch_18  #00000023
        :pswitch_14  #00000024
    .end packed-switch

    :pswitch_data_13c
    .packed-switch 0x25
        :pswitch_df  #00000025
        :pswitch_d7  #00000026
        :pswitch_cf  #00000027
        :pswitch_c7  #00000028
        :pswitch_bf  #00000029
        :pswitch_b7  #0000002a
        :pswitch_af  #0000002b
        :pswitch_a7  #0000002c
    .end packed-switch
.end method
