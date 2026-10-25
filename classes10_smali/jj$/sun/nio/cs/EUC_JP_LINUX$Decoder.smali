.class Ljj$/sun/nio/cs/EUC_JP_LINUX$Decoder;
.super Ljj$/sun/nio/cs/EUC_JP$Decoder;
.source "EUC_JP_LINUX.java"


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 9

    sget-object v4, Ljj$/sun/nio/cs/EUC_JP_LINUX$Decoder;->DEC0201:Ljj$/sun/nio/cs/SingleByte$Decoder;

    sget-object v5, Ljj$/sun/nio/cs/EUC_JP_LINUX$Decoder;->DEC0208:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    const/4 v6, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v3, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljj$/sun/nio/cs/EUC_JP$Decoder;-><init>(Ljava/nio/charset/Charset;FFLjj$/sun/nio/cs/SingleByte$Decoder;Ljj$/sun/nio/cs/DoubleByte$Decoder;Ljj$/sun/nio/cs/DoubleByte$Decoder;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/EUC_JP_LINUX-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/EUC_JP_LINUX$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method
