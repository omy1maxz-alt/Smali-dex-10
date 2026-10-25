.class public Ljj$/sun/nio/cs/US_ASCII;
.super Ljava/nio/charset/Charset;
.source "US_ASCII.java"

# interfaces
.implements Ljj$/sun/nio/cs/HistoricallyNamedCharset;


# static fields
.field public static final INSTANCE:Ljj$/sun/nio/cs/US_ASCII;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/sun/nio/cs/US_ASCII;

    invoke-direct {v0}, Ljj$/sun/nio/cs/US_ASCII;-><init>()V

    sput-object v0, Ljj$/sun/nio/cs/US_ASCII;->INSTANCE:Ljj$/sun/nio/cs/US_ASCII;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "US-ASCII"

    invoke-static {}, Ljj$/sun/nio/cs/StandardCharsets;->aliases_US_ASCII()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .registers 3

    instance-of v0, p1, Ljj$/sun/nio/cs/US_ASCII;

    return v0
.end method

.method public historicalName()Ljava/lang/String;
    .registers 2

    const-string v0, "ASCII"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/US_ASCII$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/US_ASCII$Decoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/US_ASCII-IA;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/US_ASCII$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/US_ASCII$Encoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/US_ASCII-IA;)V

    return-object v0
.end method
