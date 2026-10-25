.class public final synthetic Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda11;->f$0:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda11;->f$0:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor;->lambda$getRelatedItems$11(Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;Lcom/grack/nanojson/JsonObject;)Lcom/gold/youtube/om7753/extractor/InfoItemExtractor;

    move-result-object p1

    return-object p1
.end method
