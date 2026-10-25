.class Ljj$/sun/nio/cs/EUC_JP_Open$Encoder;
.super Ljj$/sun/nio/cs/EUC_JP$Encoder;
.source "EUC_JP_Open.java"


# static fields
.field private static ENC0208_Solaris:Ljj$/sun/nio/cs/DoubleByte$Encoder;

.field private static ENC0212_Solaris:Ljj$/sun/nio/cs/DoubleByte$Encoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/sun/nio/cs/JIS_X_0208_Solaris;

    invoke-direct {v0}, Ljj$/sun/nio/cs/JIS_X_0208_Solaris;-><init>()V

    invoke-virtual {v0}, Ljj$/sun/nio/cs/JIS_X_0208_Solaris;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    check-cast v0, Ljj$/sun/nio/cs/DoubleByte$Encoder;

    sput-object v0, Ljj$/sun/nio/cs/EUC_JP_Open$Encoder;->ENC0208_Solaris:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    new-instance v0, Ljj$/sun/nio/cs/JIS_X_0212_Solaris;

    invoke-direct {v0}, Ljj$/sun/nio/cs/JIS_X_0212_Solaris;-><init>()V

    invoke-virtual {v0}, Ljj$/sun/nio/cs/JIS_X_0212_Solaris;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    check-cast v0, Ljj$/sun/nio/cs/DoubleByte$Encoder;

    sput-object v0, Ljj$/sun/nio/cs/EUC_JP_Open$Encoder;->ENC0212_Solaris:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/EUC_JP$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/EUC_JP_Open-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/EUC_JP_Open$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method protected encodeDouble(C)I
    .registers 5

    invoke-super {p0, p1}, Ljj$/sun/nio/cs/EUC_JP$Encoder;->encodeDouble(C)I

    move-result v0

    const v1, 0xfffd

    if-eq v0, v1, :cond_a

    return v0

    :cond_a
    sget-object v2, Ljj$/sun/nio/cs/EUC_JP_Open$Encoder;->ENC0208_Solaris:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    invoke-virtual {v2, p1}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v0

    if-eq v0, v1, :cond_21

    const/16 v2, 0x7500

    if-le v0, v2, :cond_21

    sget-object v1, Ljj$/sun/nio/cs/EUC_JP_Open$Encoder;->ENC0212_Solaris:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    invoke-virtual {v1, p1}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v1

    const v2, 0x8f8080

    add-int/2addr v1, v2

    return v1

    :cond_21
    if-ne v0, v1, :cond_25

    move v1, v0

    goto :goto_29

    :cond_25
    const v1, 0x8080

    add-int/2addr v1, v0

    :goto_29
    return v1
.end method
