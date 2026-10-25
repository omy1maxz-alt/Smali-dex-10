.class public final synthetic Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/BooleanSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;->f$0:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-void
.end method


# virtual methods
.method public final buttonEnabled()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;->f$0:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
