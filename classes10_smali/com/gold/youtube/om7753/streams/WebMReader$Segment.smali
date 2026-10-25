.class public Lcom/gold/youtube/om7753/streams/WebMReader$Segment;
.super Ljava/lang/Object;
.source "WebMReader.java"


# instance fields
.field private currentCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

.field firstClusterInSegment:Z

.field public info:Lcom/gold/youtube/om7753/streams/WebMReader$Info;

.field private final ref:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

.field final synthetic this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

.field tracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V
    .registers 3

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->ref:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->firstClusterInSegment:Z

    return-void
.end method

.method static synthetic access$000(Lcom/gold/youtube/om7753/streams/WebMReader$Segment;)Lcom/gold/youtube/om7753/streams/WebMReader$Element;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->ref:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    return-object p0
.end method

.method static synthetic access$102(Lcom/gold/youtube/om7753/streams/WebMReader$Segment;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$Element;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->currentCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    return-object p1
.end method


# virtual methods
.method public getNextCluster()Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$200(Lcom/gold/youtube/om7753/streams/WebMReader;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->firstClusterInSegment:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$300(Lcom/gold/youtube/om7753/streams/WebMReader;)Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v0

    iget-object v0, v0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->currentCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    if-eqz v0, :cond_28

    iput-boolean v2, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->firstClusterInSegment:Z

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$300(Lcom/gold/youtube/om7753/streams/WebMReader;)Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v1

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->currentCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$400(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    move-result-object v0

    return-object v0

    :cond_28
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$300(Lcom/gold/youtube/om7753/streams/WebMReader;)Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v3

    iget-object v3, v3, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->currentCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    invoke-static {v0, v3}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$500(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$300(Lcom/gold/youtube/om7753/streams/WebMReader;)Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v3

    iget-object v3, v3, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->ref:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0xf43b675

    aput v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$600(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;[I)Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    move-result-object v0

    if-nez v0, :cond_4a

    return-object v1

    :cond_4a
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$300(Lcom/gold/youtube/om7753/streams/WebMReader;)Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v1

    iput-object v0, v1, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->currentCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->this$0:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$300(Lcom/gold/youtube/om7753/streams/WebMReader;)Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v1

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->currentCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->access$400(Lcom/gold/youtube/om7753/streams/WebMReader;Lcom/gold/youtube/om7753/streams/WebMReader$Element;)Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    move-result-object v0

    return-object v0
.end method
