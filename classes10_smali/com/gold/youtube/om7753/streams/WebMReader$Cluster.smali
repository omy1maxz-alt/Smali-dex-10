.class public Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;
.super Ljava/lang/Object;
.source "WebMReader.java"


# instance fields
.field currentBlockGroup:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

.field currentSimpleBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

.field ref:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

.field final synthetic this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

.field public timecode:J


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V
    .registers 3

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentSimpleBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentBlockGroup:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    iput-object p2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->ref:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    return-void
.end method


# virtual methods
.method public getNextSimpleBlock()Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;
    .registers 8

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->insideClusterBounds()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentBlockGroup:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v2, v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$500(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentBlockGroup:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentSimpleBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    goto :goto_23

    :cond_16
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentSimpleBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    if-eqz v0, :cond_23

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->access$800(Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$500(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->insideClusterBounds()Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->ref:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_b0

    invoke-static {v0, v2, v3}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$600(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v0

    if-nez v0, :cond_3a

    return-object v1

    :cond_3a
    iget v2, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->type:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5c

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentBlockGroup:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x21

    aput v5, v3, v4

    invoke-static {v2, v0, v3}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$600(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentBlockGroup:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    invoke-static {v0, v2}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$500(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentBlockGroup:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    goto :goto_23

    :cond_5c
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v2, v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$900(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    move-result-object v2

    iput-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentSimpleBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    iget-wide v2, v2, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->trackNumber:J

    iget-object v4, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v4}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$1000(Lcom/gold/youtube/om7753/streams/WebMReader;)[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    move-result-object v4

    iget-object v5, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v5}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$1100(Lcom/gold/youtube/om7753/streams/WebMReader;)I

    move-result v5

    aget-object v4, v4, v5

    iget-wide v4, v4, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->trackNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a7

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentSimpleBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$700(Lcom/gold/youtube/om7753/streams/WebMReader;)Lcom/gold/youtube/om7753/streams/DataReader;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentSimpleBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    iget v2, v2, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->dataSize:I

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/streams/DataReader;->getView(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->data:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentSimpleBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    iget-short v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->relativeTimeCode:S

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->timecode:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v3}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$300(Lcom/gold/youtube/om7753/streams/WebMReader;)Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v3

    iget-object v3, v3, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->info:Lcom/gold/youtube/om7753/streams/WebMReader$Info;

    iget-wide v3, v3, Lcom/gold/youtube/om7753/streams/WebMReader$Info;->timecodeScale:J

    mul-long v1, v1, v3

    iput-wide v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->currentSimpleBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    return-object v0

    :cond_a7
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v2, v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$500(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    goto/16 :goto_23

    :cond_ae
    return-object v1

    nop

    :array_b0
    .array-data 4
        0x23
        0x20
    .end array-data
.end method

.method insideClusterBounds()Z
    .registers 8

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$700(Lcom/gold/youtube/om7753/streams/WebMReader;)Lcom/gold/youtube/om7753/streams/DataReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/DataReader;->position()J

    move-result-wide v0

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->ref:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    iget-wide v3, v2, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->offset:J

    iget-wide v5, v2, Lcom/gold/youtube/om7753/streams/WebMReader$Element;->size:J

    add-long/2addr v3, v5

    cmp-long v2, v0, v3

    if-ltz v2, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method
