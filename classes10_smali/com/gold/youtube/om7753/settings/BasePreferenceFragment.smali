.class public abstract Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;
.super Lexm;
.source "BasePreferenceFragment.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field defaultPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lexm;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public h(Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0}, Lbz;->ii()Lcc;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-super {p0, p1}, Lexm;->h(Landroid/os/Bundle;)V

    return-void
.end method

.method public iH(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lexm;->iH(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lbz;->ii()Lcc;

    move-result-object p1

    const-string p0, "settings_category_downloads_title"

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcc;->setTitle(I)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lbz;->onResume()V

    invoke-virtual {p0}, Lbz;->ii()Lcc;

    move-result-object v0

    const-string p0, "settings_category_downloads_title"

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcc;->setTitle(I)V

    return-void
.end method
