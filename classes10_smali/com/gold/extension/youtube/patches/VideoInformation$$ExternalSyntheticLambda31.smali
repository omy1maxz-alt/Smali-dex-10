.class public final synthetic Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

.field public final synthetic f$2:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;


# direct methods
.method public synthetic constructor <init>(ZLcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda31;->f$0:Z

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda31;->f$1:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    iput-object p3, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda31;->f$2:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 3

    .line 0
    iget-boolean v0, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda31;->f$0:Z

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda31;->f$1:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda31;->f$2:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/youtube/patches/VideoInformation;->$r8$lambda$UBkY3ZqS0uc2uGR-bAO3L1lcmHA(ZLcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
