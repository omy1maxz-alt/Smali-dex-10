.class public final synthetic Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda3;->f$2:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda3;->f$2:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->$r8$lambda$oAu6-c2c0h9W24qIAbROmypJOaw(Ljava/lang/String;Landroid/content/Context;Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;)V

    return-void
.end method
