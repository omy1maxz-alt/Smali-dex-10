.class Ljj$/sun/nio/cs/UTF_16LE_BOM;
.super Ljj$/sun/nio/cs/Unicode;
.source "UTF_16LE_BOM.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "x-UTF-16LE-BOM"

    invoke-static {}, Ljj$/sun/nio/cs/StandardCharsets;->aliases_UTF_16LE_BOM()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljj$/sun/nio/cs/Unicode;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public historicalName()Ljava/lang/String;
    .registers 2

    const-string v0, "UnicodeLittle"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 2

    new-instance v0, Ljj$/sun/nio/cs/UTF_16LE_BOM$Decoder;

    invoke-direct {v0, p0}, Ljj$/sun/nio/cs/UTF_16LE_BOM$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    new-instance v0, Ljj$/sun/nio/cs/UTF_16LE_BOM$Encoder;

    invoke-direct {v0, p0}, Ljj$/sun/nio/cs/UTF_16LE_BOM$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method
