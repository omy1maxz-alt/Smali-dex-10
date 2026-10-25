.class public final synthetic Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda10;->f$0:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda10;->f$0:Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->$r8$lambda$KpEUqiyFWz7U6S0ydhZn1m81Xo4(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
