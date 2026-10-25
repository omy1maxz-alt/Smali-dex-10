.class Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedItemClickListener;
.super Ljava/lang/Object;
.source "AbstractPreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebouncedItemClickListener"
.end annotation


# instance fields
.field private final debouncer:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;

.field private final originalListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 4

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment-IA;)V

    iput-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedItemClickListener;->debouncer:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;

    .line 138
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedItemClickListener;->originalListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 145
    instance-of v1, v0, Landroid/preference/TwoStatePreference;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 146
    invoke-static {p2, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->-$$Nest$smperformToggleHaptic(Landroid/view/View;Landroid/preference/TwoStatePreference;)V

    .line 147
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedItemClickListener;->originalListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface/range {p0 .. p5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    .line 152
    :cond_17
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedItemClickListener;->debouncer:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;

    invoke-virtual {v0, p3}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;->isFastRepeat(I)Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    .line 153
    :cond_20
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedItemClickListener;->originalListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
