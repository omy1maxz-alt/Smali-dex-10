.class public final synthetic Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;

.field public final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Ljava/util/function/Function;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda9;->f$0:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda9;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda9;->f$0:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda9;->f$1:Ljava/util/function/Function;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->$r8$lambda$T942-AAYaNCzyBrUbw60J9YTK2s(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Ljava/util/function/Function;)V

    return-void
.end method
