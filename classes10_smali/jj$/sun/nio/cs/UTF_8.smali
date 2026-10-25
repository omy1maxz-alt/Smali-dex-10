.class public final Ljj$/sun/nio/cs/UTF_8;
.super Ljj$/sun/nio/cs/Unicode;
.source "UTF_8.java"


# static fields
.field public static final INSTANCE:Ljj$/sun/nio/cs/UTF_8;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/sun/nio/cs/UTF_8;

    invoke-direct {v0}, Ljj$/sun/nio/cs/UTF_8;-><init>()V

    sput-object v0, Ljj$/sun/nio/cs/UTF_8;->INSTANCE:Ljj$/sun/nio/cs/UTF_8;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "UTF-8"

    invoke-static {}, Ljj$/sun/nio/cs/StandardCharsets;->aliases_UTF_8()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljj$/sun/nio/cs/Unicode;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static final updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V
    .registers 5

    invoke-virtual {p0}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

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

    const-string v0, "UTF8"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/UTF_8$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/UTF_8$Decoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/UTF_8-IA;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/UTF_8$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/UTF_8$Encoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/UTF_8-IA;)V

    return-object v0
.end method
