.class Ljj$/sun/nio/cs/CESU_8;
.super Ljj$/sun/nio/cs/Unicode;
.source "CESU_8.java"


# direct methods
.method static bridge synthetic -$$Nest$smupdatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljj$/sun/nio/cs/CESU_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "CESU-8"

    invoke-static {}, Ljj$/sun/nio/cs/StandardCharsets;->aliases_CESU_8()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljj$/sun/nio/cs/Unicode;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static final updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V
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
.method public historicalName()Ljava/lang/String;
    .registers 2

    const-string v0, "CESU8"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/CESU_8$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/CESU_8$Decoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/CESU_8-IA;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/CESU_8$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/sun/nio/cs/CESU_8$Encoder;-><init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/CESU_8-IA;)V

    return-object v0
.end method
