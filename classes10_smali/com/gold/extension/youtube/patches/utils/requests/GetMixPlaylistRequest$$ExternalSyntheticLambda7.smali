.class public final synthetic Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;

    iput-wide p2, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda7;->f$1:J

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;

    iget-wide v1, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda7;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->$r8$lambda$K3osf1dWv9uEheCVuZ5V4sDiRao(Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
