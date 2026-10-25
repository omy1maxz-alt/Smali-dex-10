.class public Lcom/gold/extension/youtube/patches/RemoveViewerDiscretionDialogPatch;
.super Ljava/lang/Object;
.source "RemoveViewerDiscretionDialogPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideViewDiscretionDialog(Z)Z
    .registers 2

    .line 12
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->REMOVE_VIEWER_DISCRETION_DIALOG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x1

    :cond_d
    return p0
.end method
