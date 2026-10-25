.class Lorg/mozilla/javascript/DToA;
.super Ljava/lang/Object;
.source "DToA.java"


# static fields
.field private static final Bias:I = 0x3ff

.field private static final Bletch:I = 0x10

.field private static final Bndry_mask:I = 0xfffff

.field static final DTOSTR_EXPONENTIAL:I = 0x3

.field static final DTOSTR_FIXED:I = 0x2

.field static final DTOSTR_PRECISION:I = 0x4

.field static final DTOSTR_STANDARD:I = 0x0

.field static final DTOSTR_STANDARD_EXPONENTIAL:I = 0x1

.field private static final Exp_11:I = 0x3ff00000

.field private static final Exp_mask:I = 0x7ff00000

.field private static final Exp_mask_shifted:I = 0x7ff

.field private static final Exp_msk1:I = 0x100000

.field private static final Exp_msk1L:J = 0x10000000000000L

.field private static final Exp_shift:I = 0x14

.field private static final Exp_shift1:I = 0x14

.field private static final Exp_shiftL:I = 0x34

.field private static final Frac_mask:I = 0xfffff

.field private static final Frac_mask1:I = 0xfffff

.field private static final Frac_maskL:J = 0xfffffffffffffL

.field private static final Int_max:I = 0xe

.field private static final Log2P:I = 0x1

.field private static final P:I = 0x35

.field private static final Quick_max:I = 0xe

.field private static final Sign_bit:I = -0x80000000

.field private static final Ten_pmax:I = 0x16

.field private static final bigtens:[D

.field private static final dtoaModes:[I

.field private static final n_bigtens:I = 0x5

.field private static final tens:[D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x17

    new-array v0, v0, [D

    fill-array-data v0, :array_1a

    sput-object v0, Lorg/mozilla/javascript/DToA;->tens:[D

    const/4 v0, 0x5

    new-array v1, v0, [D

    fill-array-data v1, :array_7a

    sput-object v1, Lorg/mozilla/javascript/DToA;->bigtens:[D

    new-array v0, v0, [I

    fill-array-data v0, :array_92

    sput-object v0, Lorg/mozilla/javascript/DToA;->dtoaModes:[I

    return-void

    nop

    :array_1a
    .array-data 8
        0x3ff0000000000000L  # 1.0
        0x4024000000000000L  # 10.0
        0x4059000000000000L  # 100.0
        0x408f400000000000L  # 1000.0
        0x40c3880000000000L  # 10000.0
        0x40f86a0000000000L  # 100000.0
        0x412e848000000000L  # 1000000.0
        0x416312d000000000L  # 1.0E7
        0x4197d78400000000L  # 1.0E8
        0x41cdcd6500000000L  # 1.0E9
        0x4202a05f20000000L  # 1.0E10
        0x42374876e8000000L  # 1.0E11
        0x426d1a94a2000000L  # 1.0E12
        0x42a2309ce5400000L  # 1.0E13
        0x42d6bcc41e900000L  # 1.0E14
        0x430c6bf526340000L  # 1.0E15
        0x4341c37937e08000L  # 1.0E16
        0x4376345785d8a000L  # 1.0E17
        0x43abc16d674ec800L  # 1.0E18
        0x43e158e460913d00L  # 1.0E19
        0x4415af1d78b58c40L  # 1.0E20
        0x444b1ae4d6e2ef50L  # 1.0E21
        0x4480f0cf064dd592L  # 1.0E22
    .end array-data

    :array_7a
    .array-data 8
        0x4341c37937e08000L  # 1.0E16
        0x4693b8b5b5056e17L  # 1.0E32
        0x4d384f03e93ff9f5L  # 1.0E64
        0x5a827748f9301d32L  # 1.0E128
        0x75154fdd7f73bf3cL  # 1.0E256
    .end array-data

    :array_92
    .array-data 4
        0x0
        0x0
        0x3
        0x2
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BASEDIGIT(I)C
    .registers 2

    const/16 v0, 0xa

    if-lt p0, v0, :cond_7

    add-int/lit8 p0, p0, 0x57

    goto :goto_9

    :cond_7
    add-int/lit8 p0, p0, 0x30

    :goto_9
    int-to-char p0, p0

    return p0
.end method

.method static JS_dtoa(DIZI[ZLjava/lang/StringBuilder;)I
    .registers 48

    move/from16 v0, p2

    move-object/from16 v1, p6

    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [I

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v5

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    const/4 v6, 0x0

    if-eqz v5, :cond_24

    aput-boolean v2, p5, v6

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v5

    const v7, 0x7fffffff

    and-int/2addr v5, v7

    move-wide/from16 v7, p0

    invoke-static {v7, v8, v5}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v7

    goto :goto_28

    :cond_24
    move-wide/from16 v7, p0

    aput-boolean v6, p5, v6

    :goto_28
    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v5

    const/high16 v9, 0x7ff00000

    and-int/2addr v5, v9

    const v10, 0xfffff

    if-ne v5, v9, :cond_4c

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v0

    if-nez v0, :cond_44

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v0

    and-int/2addr v0, v10

    if-nez v0, :cond_44

    const-string v0, "Infinity"

    goto :goto_46

    :cond_44
    const-string v0, "NaN"

    :goto_46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x270f

    return v0

    :cond_4c
    const-wide/16 v11, 0x0

    const/16 v5, 0x30

    cmpl-double v9, v7, v11

    if-nez v9, :cond_5b

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_5b
    invoke-static {v7, v8, v3, v4}, Lorg/mozilla/javascript/DToA;->d2b(D[I[I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v13

    ushr-int/lit8 v13, v13, 0x14

    and-int/lit16 v13, v13, 0x7ff

    const/16 v14, 0x20

    if-eqz v13, :cond_7f

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v15

    and-int/2addr v15, v10

    const/high16 v16, 0x3ff00000  # 1.875f

    or-int v15, v15, v16

    invoke-static {v7, v8, v15}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v15

    add-int/lit16 v13, v13, -0x3ff

    move-object/from16 v17, v3

    move-wide v2, v15

    const/4 v10, 0x0

    goto :goto_b7

    :cond_7f
    aget v13, v4, v6

    aget v15, v3, v6

    add-int/2addr v13, v15

    add-int/lit16 v13, v13, 0x432

    if-le v13, v14, :cond_9e

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v15

    int-to-long v14, v15

    rsub-int/lit8 v16, v13, 0x40

    shl-long v14, v14, v16

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v16

    add-int/lit8 v17, v13, -0x20

    ushr-int v10, v16, v17

    move-object/from16 v17, v3

    int-to-long v2, v10

    or-long/2addr v2, v14

    goto :goto_a8

    :cond_9e
    move-object/from16 v17, v3

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v2

    int-to-long v2, v2

    rsub-int/lit8 v10, v13, 0x20

    shl-long/2addr v2, v10

    :goto_a8
    long-to-double v2, v2

    invoke-static {v2, v3}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v10

    const/high16 v14, 0x1f00000

    sub-int/2addr v10, v14

    invoke-static {v2, v3, v10}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v2

    add-int/lit16 v13, v13, -0x433

    const/4 v10, 0x1

    :goto_b7
    const-wide/high16 v14, 0x3ff8000000000000L  # 1.5

    sub-double/2addr v2, v14

    const-wide v14, 0x3fd287a7636f4361L  # 0.289529654602168

    mul-double v2, v2, v14

    const-wide v14, 0x3fc68a288b60c8b3L  # 0.1760912590558

    add-double/2addr v2, v14

    int-to-double v14, v13

    const-wide v18, 0x3fd34413509f79fbL  # 0.301029995663981

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v18

    add-double/2addr v2, v14

    double-to-int v14, v2

    cmpg-double v15, v2, v11

    if-gez v15, :cond_df

    int-to-double v11, v14

    cmpl-double v15, v2, v11

    if-eqz v15, :cond_df

    add-int/lit8 v14, v14, -0x1

    :cond_df
    if-ltz v14, :cond_f1

    const/16 v2, 0x16

    if-gt v14, v2, :cond_f1

    sget-object v2, Lorg/mozilla/javascript/DToA;->tens:[D

    aget-wide v11, v2, v14

    cmpg-double v2, v7, v11

    if-gez v2, :cond_ef

    add-int/lit8 v14, v14, -0x1

    :cond_ef
    const/4 v2, 0x0

    goto :goto_f2

    :cond_f1
    const/4 v2, 0x1

    :goto_f2
    aget v3, v4, v6

    sub-int/2addr v3, v13

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    if-ltz v3, :cond_fc

    move v11, v3

    const/4 v3, 0x0

    goto :goto_fe

    :cond_fc
    neg-int v3, v3

    const/4 v11, 0x0

    :goto_fe
    if-ltz v14, :cond_104

    add-int/2addr v11, v14

    move v13, v14

    const/4 v12, 0x0

    goto :goto_107

    :cond_104
    sub-int/2addr v3, v14

    neg-int v12, v14

    const/4 v13, 0x0

    :goto_107
    if-ltz v0, :cond_10d

    const/16 v15, 0x9

    if-le v0, v15, :cond_10e

    :cond_10d
    const/4 v0, 0x0

    :cond_10e
    const/4 v15, 0x5

    if-le v0, v15, :cond_116

    add-int/lit8 v0, v0, -0x4

    const/16 v20, 0x0

    goto :goto_118

    :cond_116
    const/16 v20, 0x1

    :goto_118
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v21, -0x1

    if-eqz v0, :cond_153

    const/4 v15, 0x1

    if-eq v0, v15, :cond_153

    if-eq v0, v6, :cond_146

    if-eq v0, v5, :cond_135

    const/4 v5, 0x4

    if-eq v0, v5, :cond_147

    const/4 v5, 0x5

    if-eq v0, v5, :cond_133

    move/from16 v5, p4

    move-object/from16 v24, v9

    const/4 v6, 0x0

    const/16 v21, 0x0

    goto :goto_158

    :cond_133
    const/4 v5, 0x1

    goto :goto_136

    :cond_135
    const/4 v5, 0x0

    :goto_136
    add-int v16, p4, v14

    add-int/lit8 v21, v16, 0x1

    add-int/lit8 v15, v21, -0x1

    move-object/from16 v24, v9

    move/from16 v6, v21

    move/from16 v21, v15

    move v15, v5

    move/from16 v5, p4

    goto :goto_158

    :cond_146
    const/4 v15, 0x0

    :cond_147
    if-gtz p4, :cond_14b

    const/4 v5, 0x1

    goto :goto_14d

    :cond_14b
    move/from16 v5, p4

    :goto_14d
    move v6, v5

    move/from16 v21, v6

    move-object/from16 v24, v9

    goto :goto_158

    :cond_153
    move-object/from16 v24, v9

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v15, 0x1

    :goto_158
    const-wide/16 v25, 0x30

    const-wide/high16 v27, 0x4024000000000000L  # 10.0

    if-ltz v6, :cond_330

    const/16 v9, 0xe

    if-gt v6, v9, :cond_330

    if-eqz v20, :cond_330

    if-lez v14, :cond_19f

    sget-object v9, Lorg/mozilla/javascript/DToA;->tens:[D

    and-int/lit8 v20, v14, 0xf

    aget-wide v29, v9, v20

    shr-int/lit8 v9, v14, 0x4

    and-int/lit8 v20, v9, 0x10

    if-eqz v20, :cond_181

    and-int/lit8 v9, v9, 0xf

    sget-object v20, Lorg/mozilla/javascript/DToA;->bigtens:[D

    const/16 v22, 0x4

    aget-wide v31, v20, v22

    div-double v31, v7, v31

    const/16 v20, 0x0

    const/16 v23, 0x3

    goto :goto_187

    :cond_181
    move-wide/from16 v31, v7

    const/16 v20, 0x0

    const/16 v23, 0x2

    :goto_187
    if-eqz v9, :cond_19a

    and-int/lit8 v33, v9, 0x1

    if-eqz v33, :cond_195

    add-int/lit8 v23, v23, 0x1

    sget-object v33, Lorg/mozilla/javascript/DToA;->bigtens:[D

    aget-wide v34, v33, v20

    mul-double v29, v29, v34

    :cond_195
    shr-int/lit8 v9, v9, 0x1

    add-int/lit8 v20, v20, 0x1

    goto :goto_187

    :cond_19a
    div-double v31, v31, v29

    move/from16 v9, v23

    goto :goto_1cb

    :cond_19f
    neg-int v9, v14

    if-eqz v9, :cond_1c8

    sget-object v20, Lorg/mozilla/javascript/DToA;->tens:[D

    and-int/lit8 v23, v9, 0xf

    aget-wide v29, v20, v23

    mul-double v29, v29, v7

    const/16 v20, 0x4

    shr-int/lit8 v9, v9, 0x4

    move/from16 v20, v9

    move-wide/from16 v31, v29

    const/4 v9, 0x2

    const/16 v23, 0x0

    :goto_1b5
    if-eqz v20, :cond_1cb

    and-int/lit8 v29, v20, 0x1

    if-eqz v29, :cond_1c3

    add-int/lit8 v9, v9, 0x1

    sget-object v29, Lorg/mozilla/javascript/DToA;->bigtens:[D

    aget-wide v33, v29, v23

    mul-double v31, v31, v33

    :cond_1c3
    shr-int/lit8 v20, v20, 0x1

    add-int/lit8 v23, v23, 0x1

    goto :goto_1b5

    :cond_1c8
    move-wide/from16 v31, v7

    const/4 v9, 0x2

    :cond_1cb
    :goto_1cb
    if-eqz v2, :cond_1ef

    const-wide/high16 v29, 0x3ff0000000000000L  # 1.0

    cmpg-double v20, v31, v29

    if-gez v20, :cond_1ef

    if-lez v6, :cond_1ef

    if-gtz v21, :cond_1e0

    move/from16 v29, v6

    move-wide/from16 v33, v7

    move/from16 v23, v14

    const/16 v20, 0x1

    goto :goto_1f7

    :cond_1e0
    add-int/lit8 v20, v14, -0x1

    mul-double v31, v31, v27

    add-int/lit8 v9, v9, 0x1

    move/from16 v29, v6

    move-wide/from16 v33, v7

    move/from16 v23, v20

    move/from16 v6, v21

    goto :goto_1f5

    :cond_1ef
    move/from16 v29, v6

    move-wide/from16 v33, v7

    move/from16 v23, v14

    :goto_1f5
    const/16 v20, 0x0

    :goto_1f7
    int-to-double v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v31

    const-wide/high16 v35, 0x401c000000000000L  # 7.0

    add-double v7, v7, v35

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v9

    const/high16 v30, 0x3400000

    sub-int v9, v9, v30

    invoke-static {v7, v8, v9}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v7

    if-nez v6, :cond_237

    const-wide/high16 v35, 0x4014000000000000L  # 5.0

    sub-double v31, v31, v35

    cmpl-double v9, v31, v7

    if-lez v9, :cond_222

    const/16 v9, 0x31

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    add-int/lit8 v23, v23, 0x1

    :goto_21f
    add-int/lit8 v23, v23, 0x1

    return v23

    :cond_222
    move/from16 v30, v10

    neg-double v9, v7

    cmpg-double v20, v31, v9

    if-gez v20, :cond_234

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0

    :cond_234
    const/16 v20, 0x1

    goto :goto_239

    :cond_237
    move/from16 v30, v10

    :goto_239
    if-nez v20, :cond_318

    const-wide/high16 v9, 0x3fe0000000000000L  # 0.5

    if-eqz v15, :cond_2a9

    sget-object v20, Lorg/mozilla/javascript/DToA;->tens:[D

    add-int/lit8 v35, v6, -0x1

    aget-wide v35, v20, v35

    div-double v9, v9, v35

    sub-double/2addr v9, v7

    move/from16 v35, v2

    move/from16 v36, v3

    move/from16 v38, v13

    move/from16 v37, v14

    move-wide/from16 v2, v31

    const/4 v7, 0x0

    :goto_253
    double-to-long v13, v2

    move/from16 v39, v11

    move/from16 v40, v12

    long-to-double v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v31, v2, v11

    add-long v13, v13, v25

    long-to-int v2, v13

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmpg-double v2, v31, v9

    if-gez v2, :cond_26b

    const/4 v2, 0x1

    goto :goto_21f

    :cond_26b
    const/4 v2, 0x1

    const-wide/high16 v11, 0x3ff0000000000000L  # 1.0

    sub-double v11, v11, v31

    cmpg-double v3, v11, v9

    if-gez v3, :cond_29b

    :cond_274
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x39

    if-eq v0, v3, :cond_28b

    move v5, v0

    goto :goto_295

    :cond_28b
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_274

    add-int/lit8 v23, v23, 0x1

    const/16 v5, 0x30

    :goto_295
    add-int/2addr v5, v2

    int-to-char v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21f

    :cond_29b
    add-int/2addr v7, v2

    if-lt v7, v6, :cond_2a0

    goto/16 :goto_30e

    :cond_2a0
    mul-double v9, v9, v27

    mul-double v2, v31, v27

    move/from16 v11, v39

    move/from16 v12, v40

    goto :goto_253

    :cond_2a9
    move/from16 v35, v2

    move/from16 v36, v3

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v38, v13

    move/from16 v37, v14

    sget-object v2, Lorg/mozilla/javascript/DToA;->tens:[D

    add-int/lit8 v3, v6, -0x1

    aget-wide v11, v2, v3

    mul-double v7, v7, v11

    move-wide/from16 v11, v31

    const/4 v2, 0x1

    :goto_2c0
    double-to-long v13, v11

    long-to-double v9, v13

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v31, v11, v9

    add-long v13, v13, v25

    long-to-int v3, v13

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v2, v6, :cond_311

    const-wide/high16 v9, 0x3fe0000000000000L  # 0.5

    add-double v2, v7, v9

    cmpl-double v9, v31, v2

    if-lez v9, :cond_301

    :cond_2d8
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x39

    if-eq v0, v3, :cond_2f0

    move v5, v0

    goto :goto_2fa

    :cond_2f0
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2d8

    add-int/lit8 v23, v23, 0x1

    const/16 v5, 0x30

    :goto_2fa
    add-int/2addr v5, v2

    int-to-char v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_21f

    :cond_301
    const/4 v2, 0x1

    const-wide/high16 v9, 0x3fe0000000000000L  # 0.5

    sub-double/2addr v9, v7

    cmpg-double v3, v31, v9

    if-gez v3, :cond_30e

    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->stripTrailingZeroes(Ljava/lang/StringBuilder;)V

    goto/16 :goto_21f

    :cond_30e
    :goto_30e
    const/16 v20, 0x1

    goto :goto_324

    :cond_311
    const-wide/high16 v9, 0x3fe0000000000000L  # 0.5

    add-int/lit8 v2, v2, 0x1

    mul-double v11, v31, v27

    goto :goto_2c0

    :cond_318
    move/from16 v35, v2

    move/from16 v36, v3

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v38, v13

    move/from16 v37, v14

    :goto_324
    const/4 v2, 0x0

    if-eqz v20, :cond_32b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_343

    :cond_32b
    move/from16 v14, v23

    move-wide/from16 v7, v31

    goto :goto_349

    :cond_330
    move/from16 v35, v2

    move/from16 v36, v3

    move/from16 v29, v6

    move-wide/from16 v33, v7

    move/from16 v30, v10

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v38, v13

    move/from16 v37, v14

    const/4 v2, 0x0

    :goto_343
    move/from16 v6, v29

    move-wide/from16 v7, v33

    move/from16 v14, v37

    :goto_349
    aget v3, v17, v2

    const-wide/16 v9, 0x1

    if-ltz v3, :cond_3e0

    const/16 v2, 0xe

    if-gt v14, v2, :cond_3e0

    sget-object v0, Lorg/mozilla/javascript/DToA;->tens:[D

    aget-wide v2, v0, v14

    if-gez v5, :cond_380

    if-gtz v6, :cond_380

    if-ltz v6, :cond_375

    const-wide/high16 v4, 0x4014000000000000L  # 5.0

    mul-double v2, v2, v4

    cmpg-double v0, v7, v2

    if-ltz v0, :cond_375

    if-nez p3, :cond_36c

    cmpl-double v0, v7, v2

    if-nez v0, :cond_36c

    goto :goto_375

    :cond_36c
    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    add-int/2addr v14, v0

    add-int/2addr v14, v0

    return v14

    :cond_375
    :goto_375
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_380
    const/4 v0, 0x1

    :goto_381
    div-double v4, v7, v2

    double-to-long v4, v4

    long-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v2

    sub-double/2addr v7, v11

    add-long v11, v4, v25

    long-to-int v12, v11

    int-to-char v11, v12

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v0, v6, :cond_3d2

    add-double/2addr v7, v7

    cmpl-double v0, v7, v2

    if-gtz v0, :cond_3aa

    cmpl-double v0, v7, v2

    if-nez v0, :cond_3a8

    and-long v2, v4, v9

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3aa

    if-eqz p3, :cond_3a8

    goto :goto_3aa

    :cond_3a8
    const/4 v4, 0x1

    goto :goto_3db

    :cond_3aa
    :goto_3aa
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v2, 0x39

    if-eq v0, v2, :cond_3c2

    move v5, v0

    goto :goto_3cc

    :cond_3c2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3aa

    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0x30

    :goto_3cc
    add-int/2addr v5, v4

    int-to-char v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3db

    :cond_3d2
    const/4 v4, 0x1

    mul-double v7, v7, v27

    const-wide/16 v11, 0x0

    cmpl-double v5, v7, v11

    if-nez v5, :cond_3dd

    :goto_3db
    add-int/2addr v14, v4

    return v14

    :cond_3dd
    add-int/lit8 v0, v0, 0x1

    goto :goto_381

    :cond_3e0
    const/4 v2, 0x0

    if-eqz v15, :cond_424

    const/4 v3, 0x2

    if-ge v0, v3, :cond_3fa

    const/4 v2, 0x0

    if-eqz v30, :cond_3ef

    aget v3, v17, v2

    add-int/lit16 v3, v3, 0x433

    move v2, v3

    goto :goto_3f3

    :cond_3ef
    aget v3, v4, v2

    rsub-int/lit8 v2, v3, 0x36

    :goto_3f3
    move/from16 v3, v36

    move/from16 v13, v38

    move/from16 v12, v40

    goto :goto_419

    :cond_3fa
    add-int/lit8 v2, v6, -0x1

    move/from16 v12, v40

    if-lt v12, v2, :cond_405

    sub-int v2, v12, v2

    move/from16 v13, v38

    goto :goto_40a

    :cond_405
    sub-int/2addr v2, v12

    add-int v13, v38, v2

    add-int/2addr v12, v2

    const/4 v2, 0x0

    :goto_40a
    if-gez v6, :cond_413

    sub-int v3, v36, v6

    move/from16 v40, v12

    move v12, v2

    const/4 v2, 0x0

    goto :goto_419

    :cond_413
    move/from16 v40, v12

    move/from16 v3, v36

    move v12, v2

    move v2, v6

    :goto_419
    add-int v4, v36, v2

    add-int v11, v39, v2

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    move/from16 v5, v40

    goto :goto_42e

    :cond_424
    move/from16 v12, v40

    move v5, v12

    move/from16 v3, v36

    move v4, v3

    move/from16 v13, v38

    move/from16 v11, v39

    :goto_42e
    if-lez v3, :cond_43f

    if-lez v11, :cond_43f

    if-ge v3, v11, :cond_437

    move/from16 v17, v3

    goto :goto_439

    :cond_437
    move/from16 v17, v11

    :goto_439
    sub-int v4, v4, v17

    sub-int v3, v3, v17

    sub-int v11, v11, v17

    :cond_43f
    if-lez v5, :cond_461

    if-eqz v15, :cond_45a

    if-lez v12, :cond_450

    invoke-static {v2, v12}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v9, v24

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_452

    :cond_450
    move-object/from16 v9, v24

    :goto_452
    sub-int/2addr v5, v12

    if-eqz v5, :cond_463

    invoke-static {v9, v5}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_463

    :cond_45a
    move-object/from16 v9, v24

    invoke-static {v9, v5}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_463

    :cond_461
    move-object/from16 v9, v24

    :cond_463
    :goto_463
    const-wide/16 v17, 0x1

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    if-lez v13, :cond_46f

    invoke-static {v5, v13}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    :cond_46f
    const/4 v10, 0x2

    if-ge v0, v10, :cond_491

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v10

    if-nez v10, :cond_491

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v10

    const v12, 0xfffff

    and-int/2addr v10, v12

    if-nez v10, :cond_491

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v10

    const/high16 v12, 0x7fe00000

    and-int/2addr v10, v12

    if-eqz v10, :cond_491

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x1

    goto :goto_492

    :cond_491
    const/4 v10, 0x0

    :goto_492
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    move/from16 p1, v6

    move-wide/from16 v18, v7

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/16 v17, 0x0

    :goto_49e
    if-ge v6, v7, :cond_4b0

    shl-int/lit8 v7, v17, 0x8

    array-length v8, v12

    if-ge v6, v8, :cond_4aa

    aget-byte v8, v12, v6

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    :cond_4aa
    move/from16 v17, v7

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x4

    goto :goto_49e

    :cond_4b0
    if-eqz v13, :cond_4bb

    invoke-static/range {v17 .. v17}, Lorg/mozilla/javascript/DToA;->hi0bits(I)I

    move-result v6

    const/16 v7, 0x20

    rsub-int/lit8 v6, v6, 0x20

    goto :goto_4bc

    :cond_4bb
    const/4 v6, 0x1

    :goto_4bc
    add-int/2addr v6, v11

    and-int/lit8 v6, v6, 0x1f

    if-eqz v6, :cond_4c3

    rsub-int/lit8 v6, v6, 0x20

    :cond_4c3
    const/4 v7, 0x4

    if-le v6, v7, :cond_4cc

    add-int/lit8 v6, v6, -0x4

    :goto_4c8
    add-int/2addr v4, v6

    add-int/2addr v3, v6

    add-int/2addr v11, v6

    goto :goto_4d1

    :cond_4cc
    if-ge v6, v7, :cond_4d1

    add-int/lit8 v6, v6, 0x1c

    goto :goto_4c8

    :cond_4d1
    :goto_4d1
    if-lez v4, :cond_4d7

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    :cond_4d7
    if-lez v11, :cond_4dd

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    :cond_4dd
    const-wide/16 v6, 0xa

    if-eqz v35, :cond_4fe

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_4fe

    add-int/lit8 v14, v14, -0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    if-eqz v15, :cond_4fb

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :cond_4fb
    move/from16 v4, v21

    goto :goto_500

    :cond_4fe
    move/from16 v4, p1

    :goto_500
    if-gtz v4, :cond_532

    const/4 v8, 0x2

    if-le v0, v8, :cond_532

    if-ltz v4, :cond_527

    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_527

    if-nez v0, :cond_51e

    if-nez p3, :cond_51e

    const/4 v0, 0x0

    const/4 v8, 0x1

    goto :goto_529

    :cond_51e
    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    add-int/2addr v14, v8

    add-int/2addr v14, v8

    return v14

    :cond_527
    const/4 v8, 0x1

    const/4 v0, 0x0

    :goto_529
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v8

    :cond_532
    const/4 v8, 0x1

    if-eqz v15, :cond_62f

    if-lez v3, :cond_53b

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    :cond_53b
    if-eqz v10, :cond_542

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_543

    :cond_542
    move-object v3, v2

    :goto_543
    const/4 v10, 0x1

    :goto_544
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v9

    aget-object v11, v9, v8

    const/4 v8, 0x0

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    const/16 v9, 0x30

    add-int/2addr v8, v9

    int-to-char v8, v8

    invoke-virtual {v11, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gtz v13, :cond_565

    const/4 v12, 0x1

    goto :goto_569

    :cond_565
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v12

    :goto_569
    if-nez v12, :cond_595

    if-nez v0, :cond_595

    invoke-static/range {v18 .. v19}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v13

    const/4 v15, 0x1

    and-int/2addr v13, v15

    if-nez v13, :cond_596

    const/16 v13, 0x39

    if-ne v8, v13, :cond_58b

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_589

    add-int/lit8 v14, v14, 0x1

    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_589
    add-int/2addr v14, v15

    return v14

    :cond_58b
    if-lez v9, :cond_590

    add-int/lit8 v8, v8, 0x1

    int-to-char v8, v8

    :cond_590
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v14, v15

    return v14

    :cond_595
    const/4 v15, 0x1

    :cond_596
    if-ltz v9, :cond_5f7

    if-nez v9, :cond_5a4

    if-nez v0, :cond_5a4

    invoke-static/range {v18 .. v19}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v9

    and-int/2addr v9, v15

    if-nez v9, :cond_5a4

    goto :goto_5f7

    :cond_5a4
    if-lez v12, :cond_5c5

    const/16 v9, 0x39

    if-ne v8, v9, :cond_5bd

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_5ba

    add-int/lit8 v14, v14, 0x1

    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5ba
    const/4 v0, 0x1

    add-int/2addr v14, v0

    return v14

    :cond_5bd
    const/4 v0, 0x1

    add-int/2addr v8, v0

    int-to-char v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v14, v0

    return v14

    :cond_5c5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v10, v4, :cond_5ce

    move-object v3, v11

    const/4 v11, 0x1

    goto/16 :goto_648

    :cond_5ce
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    if-ne v2, v3, :cond_5e2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v3, v2

    goto :goto_5f2

    :cond_5e2
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :goto_5f2
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto/16 :goto_544

    :cond_5f7
    :goto_5f7
    if-lez v12, :cond_629

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_60c

    if-nez v2, :cond_629

    and-int/lit8 v2, v8, 0x1

    if-eq v2, v0, :cond_60c

    if-eqz p3, :cond_629

    :cond_60c
    add-int/lit8 v0, v8, 0x1

    int-to-char v0, v0

    const/16 v2, 0x39

    if-ne v8, v2, :cond_626

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_623

    add-int/lit8 v14, v14, 0x1

    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_623
    const/4 v11, 0x1

    add-int/2addr v14, v11

    return v14

    :cond_626
    const/4 v11, 0x1

    move v8, v0

    goto :goto_62a

    :cond_629
    const/4 v11, 0x1

    :goto_62a
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v14, v11

    return v14

    :cond_62f
    const/4 v11, 0x1

    const/4 v0, 0x1

    :goto_631
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    aget-object v3, v2, v11

    const/4 v8, 0x0

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    const/16 v9, 0x30

    add-int/2addr v2, v9

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lt v0, v4, :cond_66f

    move v8, v2

    :goto_648
    invoke-virtual {v3, v11}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_65f

    if-nez v0, :cond_65b

    and-int/lit8 v0, v8, 0x1

    if-eq v0, v11, :cond_65f

    if-eqz p3, :cond_65b

    goto :goto_65f

    :cond_65b
    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->stripTrailingZeroes(Ljava/lang/StringBuilder;)V

    goto :goto_66d

    :cond_65f
    :goto_65f
    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_66d

    add-int/2addr v14, v11

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v14, v11

    return v14

    :cond_66d
    :goto_66d
    add-int/2addr v14, v11

    return v14

    :cond_66f
    const/16 v2, 0x31

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    move-object v9, v3

    goto :goto_631
.end method

.method static JS_dtobasestr(ID)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x2

    if-gt v0, p0, :cond_146

    const/16 v0, 0x24

    if-gt p0, v0, :cond_146

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "NaN"

    return-object p0

    :cond_10
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_22

    cmpl-double p0, p1, v1

    if-lez p0, :cond_1f

    const-string p0, "Infinity"

    goto :goto_21

    :cond_1f
    const-string p0, "-Infinity"

    :goto_21
    return-object p0

    :cond_22
    cmpl-double v0, p1, v1

    if-nez v0, :cond_29

    const-string p0, "0"

    return-object p0

    :cond_29
    const/4 v0, 0x0

    const/4 v3, 0x1

    cmpl-double v4, p1, v1

    if-ltz v4, :cond_31

    const/4 v1, 0x0

    goto :goto_33

    :cond_31
    neg-double p1, p1

    const/4 v1, 0x1

    :goto_33
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v6, v4

    long-to-double v8, v6

    cmpl-double v2, v8, v4

    if-nez v2, :cond_45

    if-eqz v1, :cond_40

    neg-long v6, v6

    :cond_40
    invoke-static {v6, v7, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    goto :goto_79

    :cond_45
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const/16 v2, 0x34

    shr-long v8, v6, v2

    long-to-int v2, v8

    and-int/lit16 v2, v2, 0x7ff

    const-wide v8, 0xfffffffffffffL

    if-nez v2, :cond_5a

    and-long/2addr v6, v8

    shl-long/2addr v6, v3

    goto :goto_5e

    :cond_5a
    and-long/2addr v6, v8

    const-wide/high16 v8, 0x10000000000000L

    or-long/2addr v6, v8

    :goto_5e
    if-eqz v1, :cond_61

    neg-long v6, v6

    :cond_61
    add-int/lit16 v2, v2, -0x433

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    if-lez v2, :cond_6e

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_75

    :cond_6e
    if-gez v2, :cond_75

    neg-int v2, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    :cond_75
    :goto_75
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_79
    cmpl-double v2, p1, v4

    if-nez v2, :cond_7e

    return-object v1

    :cond_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-double v4, p1, v4

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/16 v1, 0x20

    shr-long v6, p1, v1

    long-to-int v1, v6

    long-to-int p2, p1

    new-array p1, v3, [I

    new-array v6, v3, [I

    invoke-static {v4, v5, p1, v6}, Lorg/mozilla/javascript/DToA;->d2b(D[I[I)Ljava/math/BigInteger;

    move-result-object v4

    ushr-int/lit8 v5, v1, 0x14

    and-int/lit16 v5, v5, 0x7ff

    neg-int v5, v5

    if-nez v5, :cond_a7

    const/4 v5, -0x1

    :cond_a7
    add-int/lit16 v5, v5, 0x434

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    if-nez p2, :cond_c5

    const v9, 0xfffff

    and-int/2addr v9, v1

    if-nez v9, :cond_c5

    const/high16 v9, 0x7fe00000

    and-int/2addr v1, v9

    if-eqz v1, :cond_c5

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v9, 0x2

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_c6

    :cond_c5
    move-object v1, v8

    :goto_c6
    aget p1, p1, v0

    add-int/2addr p1, v5

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    int-to-long v5, p0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    const/4 p0, 0x0

    :goto_db
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    aget-object v6, p1, v3

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-char p1, p1

    if-ne v8, v1, :cond_f4

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v8, v1

    goto :goto_fd

    :cond_f4
    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v8, v7

    :goto_fd
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-gtz v10, :cond_10d

    const/4 v9, 0x1

    goto :goto_111

    :cond_10d
    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    :goto_111
    if-nez v9, :cond_11a

    and-int/lit8 v10, p2, 0x1

    if-nez v10, :cond_11a

    if-lez v7, :cond_135

    goto :goto_125

    :cond_11a
    if-ltz v7, :cond_128

    if-nez v7, :cond_123

    and-int/lit8 v7, p2, 0x1

    if-nez v7, :cond_123

    goto :goto_128

    :cond_123
    if-lez v9, :cond_136

    :goto_125
    add-int/lit8 p1, p1, 0x1

    goto :goto_135

    :cond_128
    :goto_128
    if-lez v9, :cond_135

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-lez p0, :cond_135

    goto :goto_125

    :cond_135
    :goto_135
    const/4 p0, 0x1

    :cond_136
    invoke-static {p1}, Lorg/mozilla/javascript/DToA;->BASEDIGIT(I)C

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_144

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_144
    move-object p1, v6

    goto :goto_db

    :cond_146
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad base: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_15e

    :goto_15d
    throw p1

    :goto_15e
    goto :goto_15d
.end method

.method static JS_dtostr(Ljava/lang/StringBuilder;IID)V
    .registers 16

    const/4 v0, 0x1

    new-array v8, v0, [Z

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-ne p1, v9, :cond_1a

    const-wide v1, 0x444b1ae4d6e2ef50L  # 1.0E21

    cmpl-double v3, p3, v1

    if-gez v3, :cond_19

    const-wide v1, -0x3bb4e51b291d10b0L  # -1.0E21

    cmpg-double v3, p3, v1

    if-gtz v3, :cond_1a

    :cond_19
    const/4 p1, 0x0

    :cond_1a
    sget-object v1, Lorg/mozilla/javascript/DToA;->dtoaModes:[I

    aget v3, v1, p1

    if-lt p1, v9, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    move-wide v1, p3

    move v5, p2

    move-object v6, v8

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/DToA;->JS_dtoa(DIZI[ZLjava/lang/StringBuilder;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x270f

    if-eq v1, v3, :cond_99

    const/4 v3, -0x5

    if-eqz p1, :cond_4f

    if-eq p1, v0, :cond_4c

    if-eq p1, v9, :cond_48

    const/4 v4, 0x3

    if-eq p1, v4, :cond_4d

    const/4 v4, 0x4

    if-eq p1, v4, :cond_43

    const/4 p1, 0x0

    :goto_41
    const/4 p2, 0x0

    goto :goto_5b

    :cond_43
    if-lt v1, v3, :cond_4d

    if-le v1, p2, :cond_57

    goto :goto_4d

    :cond_48
    if-ltz p2, :cond_56

    add-int/2addr p2, v1

    goto :goto_57

    :cond_4c
    const/4 p2, 0x0

    :cond_4d
    :goto_4d
    const/4 p1, 0x1

    goto :goto_5b

    :cond_4f
    if-lt v1, v3, :cond_59

    const/16 p1, 0x15

    if-le v1, p1, :cond_56

    goto :goto_59

    :cond_56
    move p2, v1

    :cond_57
    :goto_57
    const/4 p1, 0x0

    goto :goto_5b

    :cond_59
    :goto_59
    const/4 p1, 0x1

    goto :goto_41

    :goto_5b
    const/16 v3, 0x30

    if-ge v2, p2, :cond_69

    :cond_5f
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, p2, :cond_5f

    move v2, p2

    :cond_69
    const/16 p2, 0x2e

    if-eqz p1, :cond_83

    if-eq v2, v0, :cond_72

    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_72
    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v0

    if-ltz v1, :cond_7f

    const/16 p1, 0x2b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7f
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_99

    :cond_83
    if-eq v1, v2, :cond_99

    if-lez v1, :cond_8b

    invoke-virtual {p0, v1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_99

    :cond_8b
    const/4 p1, 0x0

    :goto_8c
    rsub-int/lit8 v2, v1, 0x1

    if-ge p1, v2, :cond_96

    invoke-virtual {p0, v10, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_8c

    :cond_96
    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_99
    :goto_99
    aget-boolean p1, v8, v10

    if-eqz p1, :cond_c9

    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_ab

    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result p1

    if-eqz p1, :cond_c9

    :cond_ab
    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p1

    const/high16 p2, 0x7ff00000

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_c4

    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result p1

    if-nez p1, :cond_c9

    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p1

    const p2, 0xfffff

    and-int/2addr p1, p2

    if-nez p1, :cond_c9

    :cond_c4
    const/16 p1, 0x2d

    invoke-virtual {p0, v10, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_c9
    return-void
.end method

.method private static d2b(D[I[I)Ljava/math/BigInteger;
    .registers 12

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v2, v1

    long-to-int p1, p0

    const p0, 0xfffff

    and-int/2addr p0, v2

    const v1, 0x7fffffff

    and-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_19

    const/high16 v2, 0x100000

    or-int/2addr p0, v2

    :cond_19
    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_3d

    const/16 v5, 0x8

    new-array v5, v5, [B

    invoke-static {p1}, Lorg/mozilla/javascript/DToA;->lo0bits(I)I

    move-result v6

    ushr-int/2addr p1, v6

    if-eqz v6, :cond_33

    rsub-int/lit8 v7, v6, 0x20

    shl-int v7, p0, v7

    or-int/2addr p1, v7

    invoke-static {v5, v3, p1}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    shr-int/2addr p0, v6

    goto :goto_36

    :cond_33
    invoke-static {v5, v3, p1}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    :goto_36
    invoke-static {v5, v4, p0}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    if-eqz p0, :cond_49

    const/4 p1, 0x2

    goto :goto_4a

    :cond_3d
    new-array v5, v3, [B

    invoke-static {p0}, Lorg/mozilla/javascript/DToA;->lo0bits(I)I

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {v5, v4, p0}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    add-int/lit8 v6, p1, 0x20

    :cond_49
    const/4 p1, 0x1

    :goto_4a
    if-eqz v1, :cond_58

    add-int/lit16 v1, v1, -0x3ff

    add-int/lit8 v1, v1, -0x34

    add-int/2addr v1, v6

    aput v1, p2, v4

    rsub-int/lit8 p0, v6, 0x35

    aput p0, p3, v4

    goto :goto_69

    :cond_58
    add-int/lit16 v1, v1, -0x3ff

    add-int/lit8 v1, v1, -0x34

    add-int/2addr v1, v2

    add-int/2addr v1, v6

    aput v1, p2, v4

    mul-int/lit8 p1, p1, 0x20

    invoke-static {p0}, Lorg/mozilla/javascript/DToA;->hi0bits(I)I

    move-result p0

    sub-int/2addr p1, p0

    aput p1, p3, v4

    :goto_69
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v5}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method private static hi0bits(I)I
    .registers 3

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_a

    shl-int/lit8 p0, p0, 0x10

    const/16 v0, 0x10

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    if-nez v1, :cond_14

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 p0, p0, 0x8

    :cond_14
    const/high16 v1, -0x10000000

    and-int/2addr v1, p0

    if-nez v1, :cond_1d

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 p0, p0, 0x4

    :cond_1d
    const/high16 v1, -0x40000000  # -2.0f

    and-int/2addr v1, p0

    if-nez v1, :cond_26

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 p0, p0, 0x2

    :cond_26
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-nez v1, :cond_35

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x40000000  # 2.0f

    and-int/2addr p0, v1

    if-nez p0, :cond_35

    const/16 p0, 0x20

    return p0

    :cond_35
    return v0
.end method

.method private static lo0bits(I)I
    .registers 4

    and-int/lit8 v0, p0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-eqz p0, :cond_10

    return v2

    :cond_10
    return v0

    :cond_11
    const v0, 0xffff

    and-int/2addr v0, p0

    if-nez v0, :cond_1b

    ushr-int/lit8 p0, p0, 0x10

    const/16 v1, 0x10

    :cond_1b
    and-int/lit16 v0, p0, 0xff

    if-nez v0, :cond_23

    add-int/lit8 v1, v1, 0x8

    ushr-int/lit8 p0, p0, 0x8

    :cond_23
    and-int/lit8 v0, p0, 0xf

    if-nez v0, :cond_2b

    add-int/lit8 v1, v1, 0x4

    ushr-int/lit8 p0, p0, 0x4

    :cond_2b
    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_33

    add-int/lit8 v1, v1, 0x2

    ushr-int/lit8 p0, p0, 0x2

    :cond_33
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_40

    add-int/lit8 v1, v1, 0x1

    ushr-int/2addr p0, v2

    and-int/2addr p0, v2

    if-nez p0, :cond_40

    const/16 p0, 0x20

    return p0

    :cond_40
    return v1
.end method

.method static pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 4

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static roundOff(Ljava/lang/StringBuilder;)Z
    .registers 6

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-eq v3, v4, :cond_4

    add-int/2addr v3, v2

    int-to-char v3, v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return v1

    :cond_1c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return v2
.end method

.method static setWord0(DI)D
    .registers 7

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    int-to-long v0, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method private static stripTrailingZeroes(Ljava/lang/StringBuilder;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_12

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_12

    move v0, v1

    goto :goto_4

    :cond_12
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private static stuffBits([BII)V
    .registers 5

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method static word0(D)I
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method static word1(D)I
    .registers 2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method
