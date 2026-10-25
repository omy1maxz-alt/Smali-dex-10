.class public Ljj$/sun/nio/cs/DoubleByte$Encoder_DBCSONLY;
.super Ljj$/sun/nio/cs/DoubleByte$Encoder;
.source "DoubleByte.java"


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[B[C[CZ)V
    .registers 14

    const/high16 v2, 0x40000000  # 2.0f

    const/high16 v3, 0x40000000  # 2.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Ljj$/sun/nio/cs/DoubleByte$Encoder;-><init>(Ljava/nio/charset/Charset;FF[B[C[CZ)V

    return-void
.end method


# virtual methods
.method public encodeChar(C)I
    .registers 4

    invoke-super {p0, p1}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_c

    const v1, 0xfffd

    return v1

    :cond_c
    return v0
.end method
