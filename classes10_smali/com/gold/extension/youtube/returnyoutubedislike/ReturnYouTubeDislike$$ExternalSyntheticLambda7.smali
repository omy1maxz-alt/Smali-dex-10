.class public final synthetic Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;

    invoke-static {p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->$r8$lambda$1Mp29JAjwJlEKIFvyx6fs-_QH-s(Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
