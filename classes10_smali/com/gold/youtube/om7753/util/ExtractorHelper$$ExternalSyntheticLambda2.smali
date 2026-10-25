.class public final synthetic Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->$r8$lambda$YTHJjScxCJNO1LTCqs3IKy35iyY(ILjava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    move-result-object v0

    return-object v0
.end method
