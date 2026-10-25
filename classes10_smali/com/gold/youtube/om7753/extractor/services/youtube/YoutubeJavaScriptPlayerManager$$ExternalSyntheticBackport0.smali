.class public final synthetic Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const-string p0, "defaultObj"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
