.class Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;
.super Ljj$/sun/nio/cs/HKSCS$Decoder;
.source "Big5_HKSCS.java"


# static fields
.field private static b2cBmp:[[C

.field private static b2cSupp:[[C

.field private static big5:Ljj$/sun/nio/cs/DoubleByte$Decoder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljj$/sun/nio/cs/Big5;

    invoke-direct {v0}, Ljj$/sun/nio/cs/Big5;-><init>()V

    invoke-virtual {v0}, Ljj$/sun/nio/cs/Big5;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    check-cast v0, Ljj$/sun/nio/cs/DoubleByte$Decoder;

    sput-object v0, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;->big5:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    const/16 v0, 0x100

    new-array v1, v0, [[C

    sput-object v1, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;->b2cBmp:[[C

    new-array v0, v0, [[C

    sput-object v0, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;->b2cSupp:[[C

    sget-object v0, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;->b2cBmp:[[C

    sget-object v1, Ljj$/sun/nio/cs/HKSCSMapping;->b2cBmpStr:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;->initb2c([[C[Ljava/lang/String;)V

    sget-object v0, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;->b2cSupp:[[C

    sget-object v1, Ljj$/sun/nio/cs/HKSCSMapping;->b2cSuppStr:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;->initb2c([[C[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 5

    sget-object v0, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;->big5:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    sget-object v1, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;->b2cBmp:[[C

    sget-object v2, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;->b2cSupp:[[C

    invoke-direct {p0, p1, v0, v1, v2}, Ljj$/sun/nio/cs/HKSCS$Decoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/DoubleByte$Decoder;[[C[[C)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/Big5_HKSCS-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method
