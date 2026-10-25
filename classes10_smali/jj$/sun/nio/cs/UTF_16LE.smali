.class public Ljj$/sun/nio/cs/UTF_16LE;
.super Ljj$/sun/nio/cs/Unicode;
.source "UTF_16LE.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "UTF-16LE"

    invoke-static {}, Ljj$/sun/nio/cs/StandardCharsets;->aliases_UTF_16LE()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljj$/sun/nio/cs/Unicode;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/nio/charset/Charset;)Z
    .registers 2

    invoke-super {p0, p1}, Ljj$/sun/nio/cs/Unicode;->contains(Ljava/nio/charset/Charset;)Z

    move-result p1

    return p1
.end method

.method public historicalName()Ljava/lang/String;
    .registers 2

    const-string v0, "UnicodeLittleUnmarked"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 2

    new-instance v0, Ljj$/sun/nio/cs/UTF_16LE$Decoder;

    invoke-direct {v0, p0}, Ljj$/sun/nio/cs/UTF_16LE$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    new-instance v0, Ljj$/sun/nio/cs/UTF_16LE$Encoder;

    invoke-direct {v0, p0}, Ljj$/sun/nio/cs/UTF_16LE$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method
