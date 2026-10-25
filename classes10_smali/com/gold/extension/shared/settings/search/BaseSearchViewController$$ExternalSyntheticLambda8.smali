.class public final synthetic Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;

.field public final synthetic f$1:Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda8;->f$0:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda8;->f$1:Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda8;->f$0:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda8;->f$1:Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;

    invoke-static {v0, p0, p1, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->$r8$lambda$jgouhlJ_EZdx7PouOyQuVlbZaTA(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
