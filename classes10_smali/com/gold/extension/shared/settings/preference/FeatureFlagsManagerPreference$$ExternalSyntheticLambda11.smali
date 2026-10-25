.class public final synthetic Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;

.field public final synthetic f$1:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;Landroid/widget/ListView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda11;->f$0:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda11;->f$1:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 13

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda11;->f$0:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda11;->f$1:Landroid/widget/ListView;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->$r8$lambda$Rw_6aAYUF0Ykav0fUAfDTSziZ4g(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;Landroid/widget/ListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method
