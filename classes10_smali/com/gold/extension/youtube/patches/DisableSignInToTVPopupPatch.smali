.class public Lcom/gold/extension/youtube/patches/DisableSignInToTVPopupPatch;
.super Ljava/lang/Object;
.source "DisableSignInToTVPopupPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableSignInToTVPopup()Z
    .registers 1

    .line 12
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_SIGN_IN_TO_TV_POPUP:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
