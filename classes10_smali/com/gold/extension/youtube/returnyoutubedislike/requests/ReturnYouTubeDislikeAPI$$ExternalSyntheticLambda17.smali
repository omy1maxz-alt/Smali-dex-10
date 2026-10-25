.class public final synthetic Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IJ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda17;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda17;->f$1:I

    iput-wide p3, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda17;->f$2:J

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda17;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda17;->f$1:I

    iget-wide v2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda17;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->$r8$lambda$wjB3oUf-ZzqRqKtPqKHaAQ8NbQA(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
