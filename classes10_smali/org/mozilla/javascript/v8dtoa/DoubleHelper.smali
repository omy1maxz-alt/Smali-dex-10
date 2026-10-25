.class public Lorg/mozilla/javascript/v8dtoa/DoubleHelper;
.super Ljava/lang/Object;
.source "DoubleHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final kDenormalExponent:I = -0x432

.field private static final kExponentBias:I = 0x433

.field static final kExponentMask:J = 0x7ff0000000000000L

.field static final kHiddenBit:J = 0x10000000000000L

.field static final kSignMask:J = -0x8000000000000000L

.field static final kSignificandMask:J = 0xfffffffffffffL

.field private static final kSignificandSize:I = 0x34


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

.method static asDiyFp(J)Lorg/mozilla/javascript/v8dtoa/DiyFp;
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->significand(J)J

    move-result-wide v1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->exponent(J)I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>(JI)V

    return-object v0
.end method

.method static asNormalizedDiyFp(J)Lorg/mozilla/javascript/v8dtoa/DiyFp;
    .registers 8

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->significand(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->exponent(J)I

    move-result p0

    :goto_8
    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_16

    const/4 p1, 0x1

    shl-long/2addr v0, p1

    add-int/lit8 p0, p0, -0x1

    goto :goto_8

    :cond_16
    const/16 p1, 0xb

    shl-long/2addr v0, p1

    add-int/lit8 p0, p0, -0xb

    new-instance p1, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-direct {p1, v0, v1, p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>(JI)V

    return-object p1
.end method

.method static exponent(J)I
    .registers 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->isDenormal(J)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x432

    return p0

    :cond_9
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    and-long/2addr p0, v0

    const/16 v0, 0x34

    ushr-long/2addr p0, v0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p1, p0

    add-int/lit16 p1, p1, -0x433

    return p1
.end method

.method static isDenormal(J)Z
    .registers 5

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method static isInfinite(J)Z
    .registers 7

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    and-long v2, p0, v0

    cmp-long v4, v2, v0

    if-nez v4, :cond_16

    const-wide v0, 0xfffffffffffffL

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method static isNan(J)Z
    .registers 7

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    and-long v2, p0, v0

    cmp-long v4, v2, v0

    if-nez v4, :cond_16

    const-wide v0, 0xfffffffffffffL

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method static isSpecial(J)Z
    .registers 5

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    and-long/2addr p0, v0

    cmp-long v2, p0, v0

    if-nez v2, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method static normalizedBoundaries(JLorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)V
    .registers 9

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->asDiyFp(J)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v0

    const/4 p1, 0x1

    const-wide/high16 v2, 0x10000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v1

    shl-long/2addr v1, p1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p3, v1, v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setF(J)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p3, v1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setE(I)V

    invoke-virtual {p3}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->normalize()V

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v0

    const/16 v1, -0x432

    if-eq v0, v1, :cond_45

    invoke-virtual {p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v0

    const/4 p1, 0x2

    shl-long/2addr v0, p1

    sub-long/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setF(J)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {p2, p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setE(I)V

    goto :goto_56

    :cond_45
    invoke-virtual {p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v0

    shl-long/2addr v0, p1

    sub-long/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setF(J)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {p2, p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setE(I)V

    :goto_56
    invoke-virtual {p2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v0

    invoke-virtual {p3}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v1

    sub-int/2addr v0, v1

    shl-long/2addr p0, v0

    invoke-virtual {p2, p0, p1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setF(J)V

    invoke-virtual {p3}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result p0

    invoke-virtual {p2, p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setE(I)V

    return-void
.end method

.method static sign(J)I
    .registers 5

    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method static significand(J)J
    .registers 4

    const-wide v0, 0xfffffffffffffL

    and-long/2addr v0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->isDenormal(J)Z

    move-result p0

    if-nez p0, :cond_f

    const-wide/high16 p0, 0x10000000000000L

    add-long/2addr v0, p0

    :cond_f
    return-wide v0
.end method
