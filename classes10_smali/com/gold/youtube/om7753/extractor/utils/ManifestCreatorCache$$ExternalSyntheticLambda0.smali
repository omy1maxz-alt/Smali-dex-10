.class public final synthetic Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->lambda$keepNewestEntries$0(ILjava/util/ArrayList;Ljava/util/Map$Entry;)V

    return-void
.end method
