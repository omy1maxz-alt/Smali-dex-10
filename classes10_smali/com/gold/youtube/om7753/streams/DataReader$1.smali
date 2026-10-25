.class Lcom/gold/youtube/om7753/streams/DataReader$1;
.super Ljava/io/InputStream;
.source "DataReader.java"


# instance fields
.field final synthetic this$0:Lcom/gold/youtube/om7753/streams/DataReader;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/streams/DataReader;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/DataReader$1;->this$0:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader$1;->this$0:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->access$000(Lcom/gold/youtube/om7753/streams/DataReader;)I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader$1;->this$0:Lcom/gold/youtube/om7753/streams/DataReader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/streams/DataReader;->access$002(Lcom/gold/youtube/om7753/streams/DataReader;I)I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader$1;->this$0:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->access$000(Lcom/gold/youtube/om7753/streams/DataReader;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    const/4 v0, -0x1

    return v0

    :cond_b
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader$1;->this$0:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->read()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/DataReader$1;->this$0:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-static {v1}, Lcom/gold/youtube/om7753/streams/DataReader;->access$010(Lcom/gold/youtube/om7753/streams/DataReader;)I

    :cond_18
    return v0
.end method

.method public read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/gold/youtube/om7753/streams/DataReader$1;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader$1;->this$0:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->access$000(Lcom/gold/youtube/om7753/streams/DataReader;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    const/4 p1, -0x1

    return p1

    :cond_b
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader$1;->this$0:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->access$000(Lcom/gold/youtube/om7753/streams/DataReader;)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/gold/youtube/om7753/streams/DataReader;->read([BII)I

    move-result p1

    iget-object p2, p0, Lcom/gold/youtube/om7753/streams/DataReader$1;->this$0:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-static {p2, p1}, Lcom/gold/youtube/om7753/streams/DataReader;->access$020(Lcom/gold/youtube/om7753/streams/DataReader;I)I

    return p1
.end method

.method public skip(J)J
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader$1;->this$0:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->access$000(Lcom/gold/youtube/om7753/streams/DataReader;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_c

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_c
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader$1;->this$0:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->access$000(Lcom/gold/youtube/om7753/streams/DataReader;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/gold/youtube/om7753/streams/DataReader;->skipBytes(J)J

    move-result-wide p1

    long-to-int p2, p1

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/DataReader$1;->this$0:Lcom/gold/youtube/om7753/streams/DataReader;

    invoke-static {p1, p2}, Lcom/gold/youtube/om7753/streams/DataReader;->access$020(Lcom/gold/youtube/om7753/streams/DataReader;I)I

    int-to-long p1, p2

    return-wide p1
.end method
