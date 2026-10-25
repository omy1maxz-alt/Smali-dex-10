.class Ljj$/sun/nio/cs/EUC_JP_LINUX$Encoder;
.super Ljj$/sun/nio/cs/EUC_JP$Encoder;
.source "EUC_JP_LINUX.java"


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 9

    sget-object v4, Ljj$/sun/nio/cs/EUC_JP_LINUX$Encoder;->ENC0201:Ljj$/sun/nio/cs/SingleByte$Encoder;

    sget-object v5, Ljj$/sun/nio/cs/EUC_JP_LINUX$Encoder;->ENC0208:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    const/4 v6, 0x0

    const/high16 v2, 0x40000000  # 2.0f

    const/high16 v3, 0x40000000  # 2.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljj$/sun/nio/cs/EUC_JP$Encoder;-><init>(Ljava/nio/charset/Charset;FFLjj$/sun/nio/cs/SingleByte$Encoder;Ljj$/sun/nio/cs/DoubleByte$Encoder;Ljj$/sun/nio/cs/DoubleByte$Encoder;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/EUC_JP_LINUX-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/EUC_JP_LINUX$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method
