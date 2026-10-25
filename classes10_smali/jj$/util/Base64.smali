.class public Ljj$/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoder()Ljj$/util/Base64$Decoder;
    .registers 1

    sget-object v0, Ljj$/util/Base64$Decoder;->RFC4648:Ljj$/util/Base64$Decoder;

    return-object v0
.end method

.method public static getEncoder()Ljj$/util/Base64$Encoder;
    .registers 1

    sget-object v0, Ljj$/util/Base64$Encoder;->RFC4648:Ljj$/util/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeDecoder()Ljj$/util/Base64$Decoder;
    .registers 1

    sget-object v0, Ljj$/util/Base64$Decoder;->RFC2045:Ljj$/util/Base64$Decoder;

    return-object v0
.end method

.method public static getMimeEncoder()Ljj$/util/Base64$Encoder;
    .registers 1

    sget-object v0, Ljj$/util/Base64$Encoder;->RFC2045:Ljj$/util/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeEncoder(I[B)Ljj$/util/Base64$Encoder;
    .registers 12

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljj$/util/Base64$Decoder;->-$$Nest$sfgetfromBase64()[I

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_36

    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xff

    aget v4, v0, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x10

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal base64 line separator character 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    and-int/lit8 v7, p0, -0x4

    if-gtz v7, :cond_3d

    sget-object p0, Ljj$/util/Base64$Encoder;->RFC4648:Ljj$/util/Base64$Encoder;

    return-object p0

    :cond_3d
    new-instance v4, Ljj$/util/Base64$Encoder;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljj$/util/Base64$Encoder;-><init>(Z[BIZLjj$/util/Base64-IA;)V

    return-object v4
.end method

.method public static getUrlDecoder()Ljj$/util/Base64$Decoder;
    .registers 1

    sget-object v0, Ljj$/util/Base64$Decoder;->RFC4648_URLSAFE:Ljj$/util/Base64$Decoder;

    return-object v0
.end method

.method public static getUrlEncoder()Ljj$/util/Base64$Encoder;
    .registers 1

    sget-object v0, Ljj$/util/Base64$Encoder;->RFC4648_URLSAFE:Ljj$/util/Base64$Encoder;

    return-object v0
.end method
