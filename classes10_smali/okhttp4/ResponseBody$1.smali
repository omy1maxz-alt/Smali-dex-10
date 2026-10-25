.class Lokhttp4/ResponseBody$1;
.super Lokhttp4/ResponseBody;
.source "ResponseBody.java"


# instance fields
.field final synthetic val$content:Lokin/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lokhttp4/MediaType;


# direct methods
.method constructor <init>(Lokhttp4/MediaType;JLokin/BufferedSource;)V
    .registers 5

    iput-object p1, p0, Lokhttp4/ResponseBody$1;->val$contentType:Lokhttp4/MediaType;

    iput-wide p2, p0, Lokhttp4/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lokhttp4/ResponseBody$1;->val$content:Lokin/BufferedSource;

    invoke-direct {p0}, Lokhttp4/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    iget-wide v0, p0, Lokhttp4/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp4/MediaType;
    .registers 2

    iget-object v0, p0, Lokhttp4/ResponseBody$1;->val$contentType:Lokhttp4/MediaType;

    return-object v0
.end method

.method public source()Lokin/BufferedSource;
    .registers 2

    iget-object v0, p0, Lokhttp4/ResponseBody$1;->val$content:Lokin/BufferedSource;

    return-object v0
.end method
