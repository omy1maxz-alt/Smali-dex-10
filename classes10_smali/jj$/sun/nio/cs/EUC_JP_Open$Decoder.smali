.class Ljj$/sun/nio/cs/EUC_JP_Open$Decoder;
.super Ljj$/sun/nio/cs/EUC_JP$Decoder;
.source "EUC_JP_Open.java"


# static fields
.field private static DEC0208_Solaris:Ljj$/sun/nio/cs/DoubleByte$Decoder;

.field private static DEC0212_Solaris:Ljj$/sun/nio/cs/DoubleByte$Decoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/sun/nio/cs/JIS_X_0208_Solaris;

    invoke-direct {v0}, Ljj$/sun/nio/cs/JIS_X_0208_Solaris;-><init>()V

    invoke-virtual {v0}, Ljj$/sun/nio/cs/JIS_X_0208_Solaris;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    check-cast v0, Ljj$/sun/nio/cs/DoubleByte$Decoder;

    sput-object v0, Ljj$/sun/nio/cs/EUC_JP_Open$Decoder;->DEC0208_Solaris:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    new-instance v0, Ljj$/sun/nio/cs/JIS_X_0212_Solaris;

    invoke-direct {v0}, Ljj$/sun/nio/cs/JIS_X_0212_Solaris;-><init>()V

    invoke-virtual {v0}, Ljj$/sun/nio/cs/JIS_X_0212_Solaris;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    check-cast v0, Ljj$/sun/nio/cs/DoubleByte$Decoder;

    sput-object v0, Ljj$/sun/nio/cs/EUC_JP_Open$Decoder;->DEC0212_Solaris:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 9

    sget-object v4, Ljj$/sun/nio/cs/EUC_JP_Open$Decoder;->DEC0201:Ljj$/sun/nio/cs/SingleByte$Decoder;

    sget-object v5, Ljj$/sun/nio/cs/EUC_JP_Open$Decoder;->DEC0208:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    sget-object v6, Ljj$/sun/nio/cs/EUC_JP_Open$Decoder;->DEC0212_Solaris:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    const/high16 v2, 0x3f000000  # 0.5f

    const/high16 v3, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljj$/sun/nio/cs/EUC_JP$Decoder;-><init>(Ljava/nio/charset/Charset;FFLjj$/sun/nio/cs/SingleByte$Decoder;Ljj$/sun/nio/cs/DoubleByte$Decoder;Ljj$/sun/nio/cs/DoubleByte$Decoder;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/EUC_JP_Open-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/EUC_JP_Open$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method protected decodeDouble(II)C
    .registers 7

    invoke-super {p0, p1, p2}, Ljj$/sun/nio/cs/EUC_JP$Decoder;->decodeDouble(II)C

    move-result v0

    const v1, 0xfffd

    if-ne v0, v1, :cond_14

    sget-object v1, Ljj$/sun/nio/cs/EUC_JP_Open$Decoder;->DEC0208_Solaris:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    add-int/lit8 v2, p1, -0x80

    add-int/lit8 v3, p2, -0x80

    invoke-virtual {v1, v2, v3}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->decodeDouble(II)C

    move-result v1

    return v1

    :cond_14
    return v0
.end method
