.class public final Lokhttp4/internal/http/RealResponseBody;
.super Lokhttp4/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final contentLength:J

.field private final contentTypeString:Ljava/lang/String;

.field private final source:Lokin/BufferedSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLokin/BufferedSource;)V
    .registers 5

    invoke-direct {p0}, Lokhttp4/ResponseBody;-><init>()V

    iput-object p1, p0, Lokhttp4/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    iput-wide p2, p0, Lokhttp4/internal/http/RealResponseBody;->contentLength:J

    iput-object p4, p0, Lokhttp4/internal/http/RealResponseBody;->source:Lokin/BufferedSource;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    iget-wide v0, p0, Lokhttp4/internal/http/RealResponseBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp4/MediaType;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lokhttp4/MediaType;->parse(Ljava/lang/String;)Lokhttp4/MediaType;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public source()Lokin/BufferedSource;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http/RealResponseBody;->source:Lokin/BufferedSource;

    return-object v0
.end method
