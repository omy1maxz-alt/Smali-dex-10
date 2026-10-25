.class public final synthetic Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->$r8$lambda$XRrZU4eKQUr7EDrfYOgwIwHCjNI(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
