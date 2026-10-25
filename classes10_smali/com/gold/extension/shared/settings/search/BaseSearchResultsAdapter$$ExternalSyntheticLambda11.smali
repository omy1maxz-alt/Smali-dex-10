.class public final synthetic Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

.field public final synthetic f$1:Landroid/preference/PreferenceScreen;

.field public final synthetic f$2:Landroid/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda11;->f$0:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda11;->f$1:Landroid/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda11;->f$2:Landroid/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda11;->f$0:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda11;->f$1:Landroid/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda11;->f$2:Landroid/preference/Preference;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->$r8$lambda$y9R9cvKQXxRzBzAfqMpOAJmofks(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    return-void
.end method
