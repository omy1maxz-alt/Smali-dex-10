.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;
.super Ljava/lang/Object;
.source "PoTokenResult.java"


# instance fields
.field public final playerRequestPoToken:Ljava/lang/String;

.field public final streamingDataPoToken:Ljava/lang/String;

.field public final visitorData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;->visitorData:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;->playerRequestPoToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;->streamingDataPoToken:Ljava/lang/String;

    return-void
.end method
