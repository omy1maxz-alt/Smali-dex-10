.class public final synthetic Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

.field public final synthetic f$1:Landroid/preference/SwitchPreference;

.field public final synthetic f$2:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;

.field public final synthetic f$3:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Landroid/preference/SwitchPreference;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda9;->f$0:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda9;->f$1:Landroid/preference/SwitchPreference;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda9;->f$2:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;

    iput-object p4, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda9;->f$3:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda9;->f$0:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda9;->f$1:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda9;->f$2:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda9;->f$3:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    invoke-static {v0, v1, v2, p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->$r8$lambda$r6R2EkHdCMMd2zxd7ruckb8CySM(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Landroid/preference/SwitchPreference;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;)V

    return-void
.end method
