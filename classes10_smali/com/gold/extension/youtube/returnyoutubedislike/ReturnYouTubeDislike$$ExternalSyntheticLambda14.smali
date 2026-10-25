.class public final synthetic Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

.field public final synthetic f$1:Lcom/gold/extension/youtube/shared/PlayerType;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Lcom/gold/extension/youtube/shared/PlayerType;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda14;->f$0:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    iput-object p2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda14;->f$1:Lcom/gold/extension/youtube/shared/PlayerType;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda14;->f$0:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda14;->f$1:Lcom/gold/extension/youtube/shared/PlayerType;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->$r8$lambda$9nUlv_QfnS2rOsEWOXGE2BSIE9M(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Lcom/gold/extension/youtube/shared/PlayerType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
