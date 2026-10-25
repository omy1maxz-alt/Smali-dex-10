.class public final synthetic Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

.field public final synthetic f$1:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda5;->f$1:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda5;->f$1:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->$r8$lambda$NtX5-MjkWKzuWDourB-8u43Y5Ho(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;)V

    return-void
.end method
