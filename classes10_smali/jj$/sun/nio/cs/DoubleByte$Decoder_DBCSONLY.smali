.class public Ljj$/sun/nio/cs/DoubleByte$Decoder_DBCSONLY;
.super Ljj$/sun/nio/cs/DoubleByte$Decoder;
.source "DoubleByte.java"


# static fields
.field static final b2cSB_UNMAPPABLE:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Ljj$/sun/nio/cs/DoubleByte$Decoder_DBCSONLY;->b2cSB_UNMAPPABLE:[C

    sget-object v0, Ljj$/sun/nio/cs/DoubleByte$Decoder_DBCSONLY;->b2cSB_UNMAPPABLE:[C

    const v1, 0xfffd

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CII)V
    .registers 15

    sget-object v5, Ljj$/sun/nio/cs/DoubleByte$Decoder_DBCSONLY;->b2cSB_UNMAPPABLE:[C

    const/4 v8, 0x0

    const/high16 v2, 0x3f000000  # 0.5f

    const/high16 v3, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Ljj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;FF[[C[CIIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CIIZ)V
    .registers 16

    const/high16 v3, 0x3f800000  # 1.0f

    sget-object v5, Ljj$/sun/nio/cs/DoubleByte$Decoder_DBCSONLY;->b2cSB_UNMAPPABLE:[C

    const/high16 v2, 0x3f000000  # 0.5f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Ljj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;FF[[C[CIIZ)V

    return-void
.end method


# virtual methods
.method protected crMalformedOrUnmappable(II)Ljava/nio/charset/CoderResult;
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method
