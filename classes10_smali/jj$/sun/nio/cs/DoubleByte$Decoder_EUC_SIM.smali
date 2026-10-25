.class public Ljj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;
.super Ljj$/sun/nio/cs/DoubleByte$Decoder;
.source "DoubleByte.java"


# instance fields
.field private final SS2:I

.field private final SS3:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CIIZ)V
    .registers 9

    invoke-direct/range {p0 .. p6}, Ljj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[[C[CIIZ)V

    move v0, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    const/16 v1, 0x8e

    iput v1, p1, Ljj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->SS2:I

    const/16 v1, 0x8f

    iput v1, p1, Ljj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->SS3:I

    return-void
.end method


# virtual methods
.method protected crMalformedOrUnderFlow(I)Ljava/nio/charset/CoderResult;
    .registers 3

    const/16 v0, 0x8e

    if-eq p1, v0, :cond_c

    const/16 v0, 0x8f

    if-ne p1, v0, :cond_9

    goto :goto_c

    :cond_9
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0

    :cond_c
    :goto_c
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected crMalformedOrUnmappable(II)Ljava/nio/charset/CoderResult;
    .registers 4

    const/16 v0, 0x8e

    if-eq p1, v0, :cond_f

    const/16 v0, 0x8f

    if-ne p1, v0, :cond_9

    goto :goto_f

    :cond_9
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([BII[C)I
    .registers 14

    const/4 v0, 0x0

    add-int v1, p2, p3

    invoke-virtual {p0}, Ljj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->replacement()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_c
    if-ge p2, v1, :cond_4f

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iget-object v4, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->b2cSB:[C

    aget-char v4, v4, p2

    const v5, 0xfffd

    if-ne v4, v5, :cond_48

    if-ge v3, v1, :cond_47

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iget v7, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->b2Min:I

    if-lt v3, v7, :cond_3a

    iget v7, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->b2Max:I

    if-gt v3, v7, :cond_3a

    iget-object v7, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->b2c:[[C

    aget-object v7, v7, p2

    iget v8, p0, Ljj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->b2Min:I

    sub-int v8, v3, v8

    aget-char v7, v7, v8

    move v4, v7

    if-ne v7, v5, :cond_45

    :cond_3a
    const/16 v5, 0x8e

    if-eq p2, v5, :cond_42

    const/16 v5, 0x8f

    if-ne p2, v5, :cond_44

    :cond_42
    add-int/lit8 v6, v6, -0x1

    :cond_44
    move v4, v2

    :cond_45
    move v3, v6

    goto :goto_48

    :cond_47
    move v4, v2

    :cond_48
    :goto_48
    add-int/lit8 v5, v0, 0x1

    aput-char v4, p4, v0

    move p2, v3

    move v0, v5

    goto :goto_c

    :cond_4f
    return v0
.end method
