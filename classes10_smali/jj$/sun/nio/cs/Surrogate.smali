.class public Ljj$/sun/nio/cs/Surrogate;
.super Ljava/lang/Object;
.source "Surrogate.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MAX:C = '\udfff'

.field public static final MAX_HIGH:C = '\udbff'

.field public static final MAX_LOW:C = '\udfff'

.field public static final MIN:C = '\ud800'

.field public static final MIN_HIGH:C = '\ud800'

.field public static final MIN_LOW:C = '\udc00'

.field public static final UCS4_MAX:I = 0x10ffff

.field public static final UCS4_MIN:I = 0x10000


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static high(I)C
    .registers 2

    nop

    invoke-static {p0}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    return v0
.end method

.method public static is(I)Z
    .registers 2

    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdfff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isHigh(I)Z
    .registers 2

    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdbff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isLow(I)Z
    .registers 2

    const v0, 0xdc00

    if-gt v0, p0, :cond_c

    const v0, 0xdfff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static low(I)C
    .registers 2

    nop

    invoke-static {p0}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v0

    return v0
.end method

.method public static neededFor(I)Z
    .registers 2

    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    return v0
.end method

.method public static toUCS4(CC)I
    .registers 3

    nop

    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    return v0
.end method
