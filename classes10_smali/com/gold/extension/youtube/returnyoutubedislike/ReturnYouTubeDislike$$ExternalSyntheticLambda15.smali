.class public final synthetic Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

.field public final synthetic f$1:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda15;->f$0:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    iput-object p2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda15;->f$1:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda15;->f$0:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda15;->f$1:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->$r8$lambda$HGRlZ94DlrJQYCvMEcf7pqMz1qg(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V

    return-void
.end method
