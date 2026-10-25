.class public final synthetic Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda14;->f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    iput-boolean p2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda14;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda14;->f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    iget-boolean v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda14;->f$1:Z

    check-cast p1, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;

    invoke-virtual {v0, v1, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->lambda$getVideoStreamBuilderHelper$17$com-gold-youtube-om7753-extractor-services-youtube-extractors-YoutubeStreamExtractor(ZLcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;)Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    move-result-object p1

    return-object p1
.end method
