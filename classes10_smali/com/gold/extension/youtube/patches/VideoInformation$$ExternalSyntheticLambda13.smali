.class public final synthetic Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda13;->f$0:F

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda13;->f$0:F

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/VideoInformation;->$r8$lambda$wm3FWA1Wdocy3f1DGv8ap3Y3eRk(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
