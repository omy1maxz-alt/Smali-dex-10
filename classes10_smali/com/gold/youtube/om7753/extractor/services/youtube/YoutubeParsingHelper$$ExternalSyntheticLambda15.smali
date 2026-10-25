.class public final synthetic Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/net/URL;


# direct methods
.method public synthetic constructor <init>(Ljava/net/URL;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda15;->f$0:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda15;->f$0:Ljava/net/URL;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->lambda$isGoogleURL$0(Ljava/net/URL;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
