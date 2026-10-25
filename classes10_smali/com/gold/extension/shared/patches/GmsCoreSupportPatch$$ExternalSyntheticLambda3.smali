.class public final synthetic Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(ZJ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda3;->f$0:Z

    iput-wide p2, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 4

    .line 0
    iget-boolean v0, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda3;->f$0:Z

    iget-wide v1, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda3;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->$r8$lambda$smRNJjm15_iR0pIBjVk2XsfNcnM(ZJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
