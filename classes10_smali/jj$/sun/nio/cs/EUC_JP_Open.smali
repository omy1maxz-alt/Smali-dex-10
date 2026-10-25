.class public Ljj$/sun/nio/cs/EUC_JP_Open;
.super Ljava/nio/charset/Charset;
.source "EUC_JP_Open.java"

# interfaces
.implements Ljj$/sun/nio/cs/HistoricallyNamedCharset;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "x-eucJP-Open"

    invoke-static {}, Ljj$/sun/nio/cs/StandardCharsets;->aliases_EUC_JP_Open()[Ljava/lang/String;

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

    instance-of v0, p1, Ljj$/sun/nio/cs/JIS_X_0201;

    if-nez v0, :cond_17

    instance-of v0, p1, Ljj$/sun/nio/cs/EUC_JP;

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

    const-string v0, "EUC_JP_Solaris"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/EUC_JP_Open$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/EUC_JP_Open$Decoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/EUC_JP_Open-IA;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/EUC_JP_Open$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/EUC_JP_Open$Encoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/EUC_JP_Open-IA;)V

    return-object v0
.end method
