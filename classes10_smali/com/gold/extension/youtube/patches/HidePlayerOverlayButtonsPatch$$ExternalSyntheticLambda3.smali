.class public final synthetic Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda3;->f$0:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda3;->f$0:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->$r8$lambda$gFiCiDTQmU0-rqsdhFy3CbnirwA(Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
