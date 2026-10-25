.class public Lorg/mozilla/javascript/v8dtoa/FastDtoa;
.super Ljava/lang/Object;
.source "FastDtoa.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final kFastDtoaMaximalLength:I = 0x11

.field static final kTen4:I = 0x2710

.field static final kTen5:I = 0x186a0

.field static final kTen6:I = 0xf4240

.field static final kTen7:I = 0x989680

.field static final kTen8:I = 0x5f5e100

.field static final kTen9:I = 0x3b9aca00

.field static final maximal_target_exponent:I = -0x20

.field static final minimal_target_exponent:I = -0x3c


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static biggestPowerTen(II)J
    .registers 13

    const v0, 0x3b9aca00

    const v1, 0x5f5e100

    const v2, 0x989680

    const v3, 0xf4240

    const v4, 0x186a0

    const/16 v5, 0x2710

    const/16 v6, 0x3e8

    const/16 v7, 0x64

    const/16 v8, 0xa

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_6c

    const/4 v0, 0x0

    :goto_1d
    const/4 v9, 0x0

    goto :goto_5e

    :pswitch_1f  #0x1e, 0x1f, 0x20
    if-gt v0, p0, :cond_24

    const/16 v9, 0x9

    goto :goto_5e

    :cond_24
    :pswitch_24  #0x1b, 0x1c, 0x1d
    if-gt v1, p0, :cond_2c

    const/16 v9, 0x8

    const v0, 0x5f5e100

    goto :goto_5e

    :cond_2c
    :pswitch_2c  #0x18, 0x19, 0x1a
    if-gt v2, p0, :cond_33

    const/4 v9, 0x7

    const v0, 0x989680

    goto :goto_5e

    :cond_33
    :pswitch_33  #0x14, 0x15, 0x16, 0x17
    if-gt v3, p0, :cond_3a

    const/4 v9, 0x6

    const v0, 0xf4240

    goto :goto_5e

    :cond_3a
    :pswitch_3a  #0x11, 0x12, 0x13
    if-gt v4, p0, :cond_41

    const/4 v9, 0x5

    const v0, 0x186a0

    goto :goto_5e

    :cond_41
    :pswitch_41  #0xe, 0xf, 0x10
    if-gt v5, p0, :cond_47

    const/4 v9, 0x4

    const/16 v0, 0x2710

    goto :goto_5e

    :cond_47
    :pswitch_47  #0xa, 0xb, 0xc, 0xd
    if-gt v6, p0, :cond_4d

    const/4 v9, 0x3

    const/16 v0, 0x3e8

    goto :goto_5e

    :cond_4d
    :pswitch_4d  #0x7, 0x8, 0x9
    if-gt v7, p0, :cond_53

    const/4 v9, 0x2

    const/16 v0, 0x64

    goto :goto_5e

    :cond_53
    :pswitch_53  #0x4, 0x5, 0x6
    if-gt v8, p0, :cond_58

    const/16 v0, 0xa

    goto :goto_5e

    :cond_58
    :pswitch_58  #0x1, 0x2, 0x3
    if-gt v9, p0, :cond_5c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_5c
    :pswitch_5c  #0x0
    const/4 v9, -0x1

    const/4 v0, 0x0

    :goto_5e
    int-to-long p0, v0

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    const-wide v0, 0xffffffffL

    int-to-long v2, v9

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_5c  #00000000
        :pswitch_58  #00000001
        :pswitch_58  #00000002
        :pswitch_58  #00000003
        :pswitch_53  #00000004
        :pswitch_53  #00000005
        :pswitch_53  #00000006
        :pswitch_4d  #00000007
        :pswitch_4d  #00000008
        :pswitch_4d  #00000009
        :pswitch_47  #0000000a
        :pswitch_47  #0000000b
        :pswitch_47  #0000000c
        :pswitch_47  #0000000d
        :pswitch_41  #0000000e
        :pswitch_41  #0000000f
        :pswitch_41  #00000010
        :pswitch_3a  #00000011
        :pswitch_3a  #00000012
        :pswitch_3a  #00000013
        :pswitch_33  #00000014
        :pswitch_33  #00000015
        :pswitch_33  #00000016
        :pswitch_33  #00000017
        :pswitch_2c  #00000018
        :pswitch_2c  #00000019
        :pswitch_2c  #0000001a
        :pswitch_24  #0000001b
        :pswitch_24  #0000001c
        :pswitch_24  #0000001d
        :pswitch_1f  #0000001e
        :pswitch_1f  #0000001f
        :pswitch_1f  #00000020
    .end packed-switch
.end method

.method static digitGen(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;I)Z
    .registers 26

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v7

    invoke-direct {v2, v3, v4, v7}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>(JI)V

    new-instance v3, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v4

    invoke-direct {v3, v7, v8, v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>(JI)V

    invoke-static {v3, v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->minus(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v2

    new-instance v4, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v7

    neg-int v7, v7

    shl-long v7, v5, v7

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v9

    invoke-direct {v4, v7, v8, v9}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>(JI)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v7

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v9

    neg-int v9, v9

    ushr-long/2addr v7, v9

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    long-to-int v8, v7

    invoke-virtual {v3}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v11

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v13

    sub-long/2addr v13, v5

    and-long/2addr v11, v13

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v7

    neg-int v7, v7

    rsub-int/lit8 v7, v7, 0x40

    invoke-static {v8, v7}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->biggestPowerTen(II)J

    move-result-wide v13

    const/16 v7, 0x20

    ushr-long v15, v13, v7

    and-long v5, v15, v9

    long-to-int v6, v5

    and-long/2addr v13, v9

    long-to-int v5, v13

    const/4 v7, 0x1

    add-int/2addr v5, v7

    :goto_67
    if-lez v5, :cond_b0

    div-int v13, v8, v6

    add-int/lit8 v13, v13, 0x30

    int-to-char v13, v13

    invoke-virtual {v1, v13}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->append(C)V

    rem-int/2addr v8, v6

    add-int/lit8 v5, v5, -0x1

    int-to-long v13, v8

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v15

    neg-int v15, v15

    shl-long/2addr v13, v15

    add-long/2addr v13, v11

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v15

    cmp-long v19, v13, v15

    if-gez v19, :cond_ad

    iget v7, v1, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    sub-int v7, v7, p4

    add-int/2addr v7, v5

    iput v7, v1, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    invoke-static {v3, v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->minus(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v9

    int-to-long v2, v6

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v0

    neg-int v0, v0

    shl-long v11, v2, v0

    const-wide/16 v15, 0x1

    move-object/from16 v0, p3

    move-wide v1, v7

    move-wide v3, v9

    move-wide v5, v13

    move-wide v7, v11

    move-wide v9, v15

    invoke-static/range {v0 .. v10}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->roundWeed(Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;JJJJJ)Z

    move-result v0

    return v0

    :cond_ad
    div-int/lit8 v6, v6, 0xa

    goto :goto_67

    :cond_b0
    const-wide/16 v13, 0x1

    :goto_b2
    const-wide/16 v15, 0x5

    mul-long v11, v11, v15

    mul-long v13, v13, v15

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v19

    mul-long v9, v19, v15

    invoke-virtual {v2, v9, v10}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setF(J)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setE(I)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v8

    ushr-long/2addr v8, v7

    invoke-virtual {v4, v8, v9}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setF(J)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setE(I)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v6

    neg-int v6, v6

    ushr-long v8, v11, v6

    const-wide v15, 0xffffffffL

    and-long/2addr v8, v15

    long-to-int v6, v8

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->append(C)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v8

    const-wide/16 v17, 0x1

    sub-long v8, v8, v17

    and-long/2addr v11, v8

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v8

    cmp-long v6, v11, v8

    if-gez v6, :cond_125

    iget v6, v1, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    sub-int v6, v6, p4

    add-int/2addr v6, v5

    iput v6, v1, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    invoke-static {v3, v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->minus(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v5

    mul-long v5, v5, v13

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v7

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v9

    move-object/from16 v0, p3

    move-wide v1, v5

    move-wide v3, v7

    move-wide v5, v11

    move-wide v7, v9

    move-wide v9, v13

    invoke-static/range {v0 .. v10}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->roundWeed(Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;JJJJJ)Z

    move-result v0

    return v0

    :cond_125
    move-wide v9, v15

    goto :goto_b2
.end method

.method public static dtoa(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->grisu3(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z

    move-result p0

    return p0
.end method

.method static grisu3(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z
    .registers 8

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->asNormalizedDiyFp(J)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-direct {v1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>()V

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-direct {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>()V

    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->normalizedBoundaries(JLorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)V

    new-instance p0, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-direct {p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>()V

    invoke-virtual {v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result p1

    add-int/lit8 p1, p1, 0x40

    const/16 v3, -0x3c

    const/16 v4, -0x20

    invoke-static {p1, v3, v4, p0}, Lorg/mozilla/javascript/v8dtoa/CachedPowers;->getCachedPower(IIILorg/mozilla/javascript/v8dtoa/DiyFp;)I

    move-result p1

    invoke-static {v0, p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->times(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v0

    invoke-static {v1, p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->times(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v1

    invoke-static {v2, p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->times(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object p0

    invoke-static {v1, v0, p0, p2, p1}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->digitGen(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;I)Z

    move-result p0

    return p0
.end method

.method public static numberToString(D)Ljava/lang/String;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;

    invoke-direct {v0}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->numberToString(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {v0}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->format()Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static numberToString(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z
    .registers 6

    invoke-virtual {p2}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->reset()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_f

    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->append(C)V

    neg-double p0, p0

    :cond_f
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->dtoa(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z

    move-result p0

    return p0
.end method

.method static roundWeed(Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;JJJJJ)Z
    .registers 24

    sub-long v0, p1, p9

    add-long v2, p1, p9

    move-wide/from16 v4, p5

    :goto_6
    cmp-long v6, v4, v0

    if-gez v6, :cond_23

    sub-long v6, p3, v4

    cmp-long v8, v6, p7

    if-ltz v8, :cond_23

    add-long v6, v4, p7

    cmp-long v8, v6, v0

    if-ltz v8, :cond_1e

    sub-long v8, v0, v4

    sub-long v10, v6, v0

    cmp-long v12, v8, v10

    if-ltz v12, :cond_23

    :cond_1e
    invoke-virtual {p0}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->decreaseLast()V

    move-wide v4, v6

    goto :goto_6

    :cond_23
    const/4 v0, 0x0

    cmp-long v1, v4, v2

    if-gez v1, :cond_3c

    sub-long v6, p3, v4

    cmp-long v1, v6, p7

    if-ltz v1, :cond_3c

    add-long v6, v4, p7

    cmp-long v1, v6, v2

    if-ltz v1, :cond_3b

    sub-long v8, v2, v4

    sub-long/2addr v6, v2

    cmp-long v1, v8, v6

    if-lez v1, :cond_3c

    :cond_3b
    return v0

    :cond_3c
    const-wide/16 v1, 0x2

    mul-long v1, v1, p9

    cmp-long v3, v1, v4

    if-gtz v3, :cond_4f

    const-wide/16 v1, 0x4

    mul-long v1, v1, p9

    sub-long v1, p3, v1

    cmp-long v3, v4, v1

    if-gtz v3, :cond_4f

    const/4 v0, 0x1

    :cond_4f
    return v0
.end method

.method private static uint64_lte(JJ)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmp-long v2, p0, p2

    if-eqz v2, :cond_21

    cmp-long v2, p0, p2

    if-gez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    const-wide/16 v3, 0x0

    cmp-long v5, p0, v3

    if-gez v5, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    xor-int/2addr p0, v2

    cmp-long p1, p2, v3

    if-gez p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    xor-int/2addr p0, p1

    if-eqz p0, :cond_22

    :cond_21
    const/4 v0, 0x1

    :cond_22
    return v0
.end method
