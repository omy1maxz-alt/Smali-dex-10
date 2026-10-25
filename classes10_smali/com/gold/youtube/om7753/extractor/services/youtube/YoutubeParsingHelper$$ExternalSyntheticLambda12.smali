.class public final synthetic Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->lambda$extractAudioTrackType$10(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)Z

    move-result p1

    return p1
.end method
