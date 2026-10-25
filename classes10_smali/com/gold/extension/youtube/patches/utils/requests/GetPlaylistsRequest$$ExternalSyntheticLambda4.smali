.class public final synthetic Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;->f$1:J

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->$r8$lambda$-ZhDeAZHc79nh8HG8aC403IveuA(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
