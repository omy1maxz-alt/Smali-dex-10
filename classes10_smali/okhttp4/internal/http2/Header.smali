.class public final Lokhttp4/internal/http2/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final PSEUDO_PREFIX:Lokin/ByteString;

.field public static final RESPONSE_STATUS:Lokin/ByteString;

.field public static final TARGET_AUTHORITY:Lokin/ByteString;

.field public static final TARGET_METHOD:Lokin/ByteString;

.field public static final TARGET_PATH:Lokin/ByteString;

.field public static final TARGET_SCHEME:Lokin/ByteString;


# instance fields
.field final hpackSize:I

.field public final name:Lokin/ByteString;

.field public final value:Lokin/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ":"

    invoke-static {v0}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp4/internal/http2/Header;->PSEUDO_PREFIX:Lokin/ByteString;

    const-string v0, ":status"

    invoke-static {v0}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp4/internal/http2/Header;->RESPONSE_STATUS:Lokin/ByteString;

    const-string v0, ":method"

    invoke-static {v0}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp4/internal/http2/Header;->TARGET_METHOD:Lokin/ByteString;

    const-string v0, ":path"

    invoke-static {v0}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp4/internal/http2/Header;->TARGET_PATH:Lokin/ByteString;

    const-string v0, ":scheme"

    invoke-static {v0}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp4/internal/http2/Header;->TARGET_SCHEME:Lokin/ByteString;

    const-string v0, ":authority"

    invoke-static {v0}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp4/internal/http2/Header;->TARGET_AUTHORITY:Lokin/ByteString;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object p1

    invoke-static {p2}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lokhttp4/internal/http2/Header;-><init>(Lokin/ByteString;Lokin/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lokin/ByteString;Ljava/lang/String;)V
    .registers 3

    invoke-static {p2}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lokhttp4/internal/http2/Header;-><init>(Lokin/ByteString;Lokin/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lokin/ByteString;Lokin/ByteString;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp4/internal/http2/Header;->name:Lokin/ByteString;

    iput-object p2, p0, Lokhttp4/internal/http2/Header;->value:Lokin/ByteString;

    invoke-virtual {p1}, Lokin/ByteString;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lokin/ByteString;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lokhttp4/internal/http2/Header;->hpackSize:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lokhttp4/internal/http2/Header;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    check-cast p1, Lokhttp4/internal/http2/Header;

    iget-object v0, p0, Lokhttp4/internal/http2/Header;->name:Lokin/ByteString;

    iget-object v2, p1, Lokhttp4/internal/http2/Header;->name:Lokin/ByteString;

    invoke-virtual {v0, v2}, Lokin/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lokhttp4/internal/http2/Header;->value:Lokin/ByteString;

    iget-object p1, p1, Lokhttp4/internal/http2/Header;->value:Lokin/ByteString;

    invoke-virtual {v0, p1}, Lokin/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lokhttp4/internal/http2/Header;->name:Lokin/ByteString;

    invoke-virtual {v0}, Lokin/ByteString;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/internal/http2/Header;->value:Lokin/ByteString;

    invoke-virtual {v0}, Lokin/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lokhttp4/internal/http2/Header;->name:Lokin/ByteString;

    invoke-virtual {v1}, Lokin/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lokhttp4/internal/http2/Header;->value:Lokin/ByteString;

    invoke-virtual {v1}, Lokin/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Lokhttp4/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
