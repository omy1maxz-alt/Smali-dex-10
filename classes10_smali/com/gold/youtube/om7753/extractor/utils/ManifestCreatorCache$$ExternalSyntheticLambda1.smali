.class public final synthetic Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda1;->f$0:Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda1;->f$0:Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->lambda$keepNewestEntries$1$com-gold-youtube-om7753-extractor-utils-ManifestCreatorCache(Ljava/util/Map$Entry;)V

    return-void
.end method
