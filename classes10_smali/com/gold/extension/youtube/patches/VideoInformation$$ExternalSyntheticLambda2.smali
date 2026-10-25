.class public final synthetic Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(JJJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda2;->f$0:J

    iput-wide p3, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda2;->f$1:J

    iput-wide p5, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda2;->f$2:J

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 7

    .line 0
    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda2;->f$0:J

    iget-wide v2, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda2;->f$1:J

    iget-wide v4, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda2;->f$2:J

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/VideoInformation;->$r8$lambda$Bw3JD86EiSkzCW2IhSQzGJKQfXo(JJJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
