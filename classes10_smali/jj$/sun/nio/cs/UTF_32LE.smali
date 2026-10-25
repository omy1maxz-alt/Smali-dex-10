.class public Ljj$/sun/nio/cs/UTF_32LE;
.super Ljj$/sun/nio/cs/Unicode;
.source "UTF_32LE.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "UTF-32LE"

    invoke-static {}, Ljj$/sun/nio/cs/StandardCharsets;->aliases_UTF_32LE()[Ljava/lang/String;

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

    const-string v0, "UTF-32LE"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;-><init>(Ljava/nio/charset/Charset;I)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 4

    new-instance v0, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljj$/sun/nio/cs/UTF_32Coder$Encoder;-><init>(Ljava/nio/charset/Charset;IZ)V

    return-object v0
.end method
