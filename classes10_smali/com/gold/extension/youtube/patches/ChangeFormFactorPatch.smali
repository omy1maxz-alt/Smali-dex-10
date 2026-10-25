.class public Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch;
.super Ljava/lang/Object;
.source "ChangeFormFactorPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;,
        Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$TabletLayoutInPlayerAvailability;
    }
.end annotation


# static fields
.field private static final FORM_FACTOR:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

.field private static final FORM_FACTOR_TYPE:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final IS_BROKEN_FORM_FACTOR:Z

.field private static final TABLET_LAYOUT_IN_PLAYER:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->CHANGE_FORM_FACTOR:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch;->FORM_FACTOR:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    .line 65
    iget-object v1, v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->formFactorType:Ljava/lang/Integer;

    sput-object v1, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch;->FORM_FACTOR_TYPE:Ljava/lang/Integer;

    .line 66
    iget-boolean v1, v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->isBroken:Z

    sput-boolean v1, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch;->IS_BROKEN_FORM_FACTOR:Z

    .line 67
    sget-object v1, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->LARGE:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    if-eq v0, v1, :cond_24

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->TABLET_LAYOUT_IN_PLAYER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 68
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    sput-boolean v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch;->TABLET_LAYOUT_IN_PLAYER:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPlayerLithoElementsListSize(Ljava/util/List;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 147
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static getUniversalFormFactor(I)I
    .registers 4

    .line 89
    sget-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch;->FORM_FACTOR_TYPE:Ljava/lang/Integer;

    if-nez v0, :cond_5

    return p0

    .line 92
    :cond_5
    sget-boolean v1, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch;->IS_BROKEN_FORM_FACTOR:Z

    if-eqz v1, :cond_3e

    .line 93
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/youtube/shared/PlayerType;->isMaximizedOrFullscreen()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 94
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->isSearchBarActive()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 99
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->isBackButtonVisible()Z

    move-result v1

    if-nez v1, :cond_27

    .line 102
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->getSelectedNavigationButton()Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    move-result-object v1

    sget-object v2, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->LIBRARY:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    if-ne v1, v2, :cond_3e

    .line 104
    :cond_27
    sget-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->LARGE:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    iget-object v0, v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->formFactorType:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 108
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static replaceBrokenFormFactor(I)I
    .registers 2

    .line 130
    sget-boolean v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch;->IS_BROKEN_FORM_FACTOR:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch;->TABLET_LAYOUT_IN_PLAYER:Z

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    return p0

    .line 132
    :cond_a
    :goto_a
    sget-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->LARGE:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    iget-object v0, v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->formFactorType:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
