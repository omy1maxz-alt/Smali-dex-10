.class public final synthetic Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda6;->f$0:J

    iput-wide p3, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda6;->f$1:J

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 5

    .line 0
    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda6;->f$0:J

    iget-wide v2, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda6;->f$1:J

    invoke-static {v0, v1, v2, v3}, Lcom/gold/extension/youtube/patches/VideoInformation;->$r8$lambda$TG392i6fQZzjtpH4Jd_dXp6aZ-s(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
