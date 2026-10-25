.class public final synthetic Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda15;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda15;->f$1:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    iput p3, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda15;->f$2:I

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda15;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda15;->f$1:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    iget p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda15;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->$r8$lambda$FSifUI7fzhOZA0w4Jwa8kPrUSwA(Ljava/lang/String;Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
