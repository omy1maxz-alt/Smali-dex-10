.class public Lcom/gold/extension/shared/settings/preference/ImportExportPreference;
.super Landroid/preference/Preference;
.source "ImportExportPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public static synthetic $r8$lambda$qlY2nL0DuckxM6txpmb4NltnH2k()Ljava/lang/String;
    .registers 1

    .line 52
    const-string v0, "onPreferenceClick failure"

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/ImportExportPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/ImportExportPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/ImportExportPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/ImportExportPreference;->init()V

    return-void
.end method

.method private init()V
    .registers 1

    .line 41
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 2

    .line 47
    :try_start_0
    sget-object p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    if-eqz p0, :cond_17

    .line 49
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showImportExportTextDialog()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    move-exception p0

    .line 52
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ImportExportPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/ImportExportPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method
