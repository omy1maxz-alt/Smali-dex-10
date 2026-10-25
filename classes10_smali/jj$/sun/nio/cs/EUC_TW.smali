.class public Ljj$/sun/nio/cs/EUC_TW;
.super Ljava/nio/charset/Charset;
.source "EUC_TW.java"

# interfaces
.implements Ljj$/sun/nio/cs/HistoricallyNamedCharset;


# static fields
.field private static final SS2:I = 0x8e


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "x-EUC-TW"

    invoke-static {}, Ljj$/sun/nio/cs/StandardCharsets;->aliases_EUC_TW()[Ljava/lang/String;

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

    if-nez v0, :cond_13

    instance-of v0, p1, Ljj$/sun/nio/cs/EUC_TW;

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public historicalName()Ljava/lang/String;
    .registers 2

    const-string v0, "EUC_TW"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 2

    new-instance v0, Ljj$/sun/nio/cs/EUC_TW$Decoder;

    invoke-direct {v0, p0}, Ljj$/sun/nio/cs/EUC_TW$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    new-instance v0, Ljj$/sun/nio/cs/EUC_TW$Encoder;

    invoke-direct {v0, p0}, Ljj$/sun/nio/cs/EUC_TW$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method
