.class Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedListView;
.super Landroid/widget/ListView;
.source "AbstractPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebouncedListView"
.end annotation


# instance fields
.field private final debouncer:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance p1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment-IA;)V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedListView;->debouncer:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;

    const p1, 0x102000a

    .line 109
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    .line 112
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 7

    .line 120
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 122
    instance-of v1, v0, Landroid/preference/TwoStatePreference;

    if-eqz v1, :cond_16

    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 123
    invoke-static {p1, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->-$$Nest$smperformToggleHaptic(Landroid/view/View;Landroid/preference/TwoStatePreference;)V

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p0

    return p0

    .line 128
    :cond_16
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedListView;->debouncer:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;

    invoke-virtual {v0, p2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;->isFastRepeat(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p0, 0x1

    return p0

    .line 129
    :cond_20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method
