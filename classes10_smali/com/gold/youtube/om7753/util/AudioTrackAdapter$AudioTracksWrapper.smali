.class public Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;
.super Ljava/lang/Object;
.source "AudioTrackAdapter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final tracksList:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$5G-paSzLpmmIGf8sk-oaDDXeOTY(Landroid/content/Context;Ljava/util/List;)Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->lambda$new$0(Landroid/content/Context;Ljava/util/List;)Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljj$/util/stream/Stream;->map(Ljava/util/function/Function;)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljj$/util/stream/Collectors;->toList()Ljj$/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljj$/util/stream/Stream;->collect(Ljj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->tracksList:Ljava/util/List;

    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/content/Context;Ljava/util/List;)Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-direct {v0, p1, p0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getTracksList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->tracksList:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->tracksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
