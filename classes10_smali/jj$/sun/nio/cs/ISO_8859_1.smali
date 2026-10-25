.class public Ljj$/sun/nio/cs/ISO_8859_1;
.super Ljava/nio/charset/Charset;
.source "ISO_8859_1.java"

# interfaces
.implements Ljj$/sun/nio/cs/HistoricallyNamedCharset;


# static fields
.field public static final INSTANCE:Ljj$/sun/nio/cs/ISO_8859_1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/sun/nio/cs/ISO_8859_1;

    invoke-direct {v0}, Ljj$/sun/nio/cs/ISO_8859_1;-><init>()V

    sput-object v0, Ljj$/sun/nio/cs/ISO_8859_1;->INSTANCE:Ljj$/sun/nio/cs/ISO_8859_1;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "ISO-8859-1"

    invoke-static {}, Ljj$/sun/nio/cs/StandardCharsets;->aliases_ISO_8859_1()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .registers 3

    instance-of v0, p1, Ljj$/sun/nio/cs/US_ASCII;

    if-nez v0, :cond_b

    instance-of v0, p1, Ljj$/sun/nio/cs/ISO_8859_1;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public historicalName()Ljava/lang/String;
    .registers 2

    const-string v0, "ISO8859_1"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/ISO_8859_1$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/ISO_8859_1$Decoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/ISO_8859_1-IA;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/ISO_8859_1-IA;)V

    return-object v0
.end method
