.class public final synthetic Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda3;->f$1:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI$$ExternalSyntheticLambda3;->f$1:Lorg/json/JSONObject;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->$r8$lambda$djlm_RYdvdWxiHpTpJso9AjUb7A(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
