.class Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;
.super Ljava/lang/Object;
.source "FeatureFlagsManagerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListViewSelectionState"
.end annotation


# instance fields
.field isRangeSelecting:Z

.field lastClickedPosition:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;->lastClickedPosition:I

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;->isRangeSelecting:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;-><init>()V

    return-void
.end method
