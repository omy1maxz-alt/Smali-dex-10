.class public final synthetic Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;

.field public final synthetic f$1:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Landroid/widget/ListView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda5;->f$0:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda5;->f$1:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda5;->f$0:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda5;->f$1:Landroid/widget/ListView;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->$r8$lambda$Ocdmsydu--VbGFTeUnJmJVW2VBs(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Landroid/widget/ListView;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
