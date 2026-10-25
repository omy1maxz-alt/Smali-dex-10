.class public final synthetic Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda7;->f$2:I

    iput-object p4, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda7;->f$2:I

    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->$r8$lambda$t_iIovo_TmGuQTF8mA6-5jVvcLs(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
