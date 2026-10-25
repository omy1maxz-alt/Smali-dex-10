.class public final synthetic Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    check-cast p1, Lcom/gold/youtube/om7753/extractor/MetaInfo;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
