.class public final synthetic Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda12;->f$0:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda12;->f$0:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;

    invoke-static {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->$r8$lambda$-4bvJcNR1mk0wrxvvHg35JhUUgA(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
