.class public Ljj$/sun/nio/cs/Big5_HKSCS;
.super Ljava/nio/charset/Charset;
.source "Big5_HKSCS.java"

# interfaces
.implements Ljj$/sun/nio/cs/HistoricallyNamedCharset;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "Big5-HKSCS"

    invoke-static {}, Ljj$/sun/nio/cs/StandardCharsets;->aliases_Big5_HKSCS()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    instance-of v0, p1, Ljj$/sun/nio/cs/Big5;

    if-nez v0, :cond_17

    instance-of v0, p1, Ljj$/sun/nio/cs/Big5_HKSCS;

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public historicalName()Ljava/lang/String;
    .registers 2

    const-string v0, "Big5_HKSCS"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/Big5_HKSCS$Decoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/Big5_HKSCS-IA;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/Big5_HKSCS$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/Big5_HKSCS$Encoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/Big5_HKSCS-IA;)V

    return-object v0
.end method
