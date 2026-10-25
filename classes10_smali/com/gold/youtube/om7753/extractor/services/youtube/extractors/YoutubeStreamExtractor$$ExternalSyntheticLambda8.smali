.class public final synthetic Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda8;->f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda8;->f$0:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->setAudioLocale(Ljava/util/Locale;)V

    return-void
.end method
