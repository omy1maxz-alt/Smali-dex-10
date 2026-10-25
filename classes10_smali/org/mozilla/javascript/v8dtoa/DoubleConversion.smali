.class public final Lorg/mozilla/javascript/v8dtoa/DoubleConversion;
.super Ljava/lang/Object;
.source "DoubleConversion.java"


# static fields
.field private static final kDenormalExponent:I = -0x432

.field private static final kExponentBias:I = 0x433

.field private static final kExponentMask:J = 0x7ff0000000000000L

.field private static final kHiddenBit:J = 0x10000000000000L

.field private static final kPhysicalSignificandSize:I = 0x34

.field private static final kSignMask:J = -0x8000000000000000L

.field private static final kSignificandMask:J = 0xfffffffffffffL

.field private static final kSignificandSize:I = 0x35


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doubleToInt32(D)I
    .registers 6

    double-to-int v0, p0

    int-to-double v1, v0

    cmpl-double v3, v1, p0

    if-nez v3, :cond_7

    return v0

    :cond_7
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleConversion;->exponent(J)I

    move-result v0

    const/16 v1, -0x35

    if-le v0, v1, :cond_2c

    const/16 v1, 0x1f

    if-le v0, v1, :cond_18

    goto :goto_2c

    :cond_18
    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleConversion;->significand(J)J

    move-result-wide v1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleConversion;->sign(J)I

    move-result p0

    if-gez v0, :cond_26

    neg-int p1, v0

    shr-long v0, v1, p1

    goto :goto_28

    :cond_26
    shl-long v0, v1, v0

    :goto_28
    long-to-int p1, v0

    mul-int p0, p0, p1

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return p0
.end method

.method private static exponent(J)I
    .registers 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleConversion;->isDenormal(J)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x432

    return p0

    :cond_9
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    and-long/2addr p0, v0

    const/16 v0, 0x34

    shr-long/2addr p0, v0

    long-to-int p1, p0

    add-int/lit16 p1, p1, -0x433

    return p1
.end method

.method private static isDenormal(J)Z
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

.method private static sign(J)I
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

.method private static significand(J)J
    .registers 4

    const-wide v0, 0xfffffffffffffL

    and-long/2addr v0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleConversion;->isDenormal(J)Z

    move-result p0

    if-nez p0, :cond_f

    const-wide/high16 p0, 0x10000000000000L

    add-long/2addr v0, p0

    :cond_f
    return-wide v0
.end method
