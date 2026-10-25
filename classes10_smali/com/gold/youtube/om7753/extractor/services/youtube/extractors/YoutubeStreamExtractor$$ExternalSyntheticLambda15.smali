.class public final synthetic Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;->f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;->f$3:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;->f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;->f$3:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    check-cast p1, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->lambda$getItags$14$com-gold-youtube-om7753-extractor-services-youtube-extractors-YoutubeStreamExtractor(Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/utils/Pair;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
