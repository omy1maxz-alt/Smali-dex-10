.class public final synthetic Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda1;->f$0:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda1;->f$0:Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1, p1}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->lambda$parseChronoUnit$1$com-gold-youtube-om7753-extractor-localization-TimeAgoParser(Ljava/lang/String;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
