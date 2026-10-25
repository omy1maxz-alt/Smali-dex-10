.class public final synthetic Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

.field public final synthetic f$1:Landroid/text/Spanned;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Landroid/text/Spanned;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda8;->f$0:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    iput-object p2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda8;->f$1:Landroid/text/Spanned;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda8;->f$0:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;

    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$$ExternalSyntheticLambda8;->f$1:Landroid/text/Spanned;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;->$r8$lambda$gYo8BbPsl6BfawLa61O0D_W-NOc(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
