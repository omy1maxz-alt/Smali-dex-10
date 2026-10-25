.class Lokhttp4/RequestBody$2;
.super Lokhttp4/RequestBody;
.source "RequestBody.java"


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Lokhttp4/MediaType;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lokhttp4/MediaType;I[BI)V
    .registers 5

    iput-object p1, p0, Lokhttp4/RequestBody$2;->val$contentType:Lokhttp4/MediaType;

    iput p2, p0, Lokhttp4/RequestBody$2;->val$byteCount:I

    iput-object p3, p0, Lokhttp4/RequestBody$2;->val$content:[B

    iput p4, p0, Lokhttp4/RequestBody$2;->val$offset:I

    invoke-direct {p0}, Lokhttp4/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    iget v0, p0, Lokhttp4/RequestBody$2;->val$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lokhttp4/MediaType;
    .registers 2

    iget-object v0, p0, Lokhttp4/RequestBody$2;->val$contentType:Lokhttp4/MediaType;

    return-object v0
.end method

.method public writeTo(Lokin/BufferedSink;)V
    .registers 5

    iget-object v0, p0, Lokhttp4/RequestBody$2;->val$content:[B

    iget v1, p0, Lokhttp4/RequestBody$2;->val$offset:I

    iget v2, p0, Lokhttp4/RequestBody$2;->val$byteCount:I

    invoke-interface {p1, v0, v1, v2}, Lokin/BufferedSink;->write([BII)Lokin/BufferedSink;

    return-void
.end method
