.class public abstract Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "AbstractPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedItemClickListener;,
        Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedListView;,
        Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;,
        Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;
    }
.end annotation


# static fields
.field private static final READ_REQUEST_CODE:I = 0x2a

.field private static final WRITE_REQUEST_CODE:I = 0x2b

.field private static cachedCollator:Ljava/text/Collator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static cachedCollatorLocale:Ljava/util/Locale;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected static confirmDialogTitle:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static instance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;",
            ">;"
        }
    .end annotation
.end field

.field protected static restartDialogButtonText:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected static restartDialogMessage:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected static restartDialogTitle:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static settingImportInProgress:Z

.field private static showingUserDialogMessage:Z

.field private static updatingPreference:Z


# instance fields
.field private configurationListener:Landroid/content/ComponentCallbacks2;

.field private currentImportExportEditText:Landroid/widget/EditText;

.field private currentUiMode:I

.field private existingSettings:Ljava/lang/String;

.field private final listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public static synthetic $r8$lambda$1uJptgJghcD0ili2sMdFiMWSfGY()Ljava/lang/String;
    .registers 1

    .line 559
    const-string v0, "showImportExportTextDialog failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$2Ek9yHpxaSZSnMMUqSWW2pMHJCk()Ljava/lang/String;
    .registers 1

    .line 217
    const-string v0, "Ignoring preference change as sync is in progress"

    return-object v0
.end method

.method public static synthetic $r8$lambda$2pgF2YYIQWSgqr6UpUozo-45Cns()Ljava/lang/String;
    .registers 1

    .line 691
    const-string v0, "importSettingsText failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$2qo0pLhckOYB0A1Z_bBktnJUHTU(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->lambda$showImportExportTextDialog$10(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7eyXyIIKCkws_1IE4oswub1nsVQ(Landroid/content/Context;)V
    .registers 1

    .line 485
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->restartApp(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9mPoVTtW7B7CkhvlWjzb8IYIG6k()Ljava/lang/String;
    .registers 1

    .line 675
    const-string v0, "importTextFromFile failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$AFwyPw9CDYgy1kmKXVcVjVwHWUU(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->lambda$showSettingUserDialogConfirmation$5(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AkhAQ3pr9u6twVG-36ezC94N_Rs()Ljava/lang/String;
    .registers 1

    .line 602
    const-string v0, "exportActivity failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$G3k08lo9uZ0I_sytUUPIuHzXwIQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preference key has no setting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LROWXtQvhaZZaind_I7BzeL5Vgc()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$NjMQ9pVyZFGY3CUe3n-o0_7KlMA(Lcom/gold/extension/shared/settings/Setting;)Ljava/lang/String;
    .registers 3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preference changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PweFdNqsW2aRI5vwu8FgXnlSb3M()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$SGi7fM043ZcndGlZzClnii7r1eQ(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->lambda$showImportExportTextDialog$13(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vi2zer8H-jsZYVNdhsRP3NYsMM0(Landroid/content/DialogInterface;)V
    .registers 1

    const/4 p0, 0x0

    .line 324
    sput-boolean p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showingUserDialogMessage:Z

    return-void
.end method

.method public static synthetic $r8$lambda$Z0YZWLNyhe3U2Bzr1__0idR8s1c(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->lambda$showImportExportTextDialog$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$__cZSNDQPZzXnDIzhFcVtRUdzC4(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->lambda$showSettingUserDialogConfirmation$4(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dvywrtx38xGWP52RqieIxhxLE_Q(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->lambda$showImportExportTextDialog$15(Landroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hCyRYpEfu-14Bmfv2iITljxhWJk()Ljava/lang/String;
    .registers 1

    .line 745
    const-string v0, "onCreate() failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$lthAJMr1pM03EHey3wf_TI4UANU()Ljava/lang/String;
    .registers 1

    .line 250
    const-string v0, "OnSharedPreferenceChangeListener failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$ocx2jOHAxyCAjVM743L-6om9NrY(Ljava/text/Collator;Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 3

    .line 813
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s8UI1eXE7yHfYRmvTp3Opz8vpVs()Ljava/lang/String;
    .registers 1

    .line 613
    const-string v0, "importActivity failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$tbJPxUKDNYpKKzydrt1dae-8zog(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->lambda$showImportExportTextDialog$14(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wun9KgeMWjU22AimnmHs1eqyZW4(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->lambda$new$3(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z60-h93nmG3lDPhKJh1jN_SkICc()Ljava/lang/String;
    .registers 1

    .line 655
    const-string v0, "exportTextToFile failure"

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$fgetcurrentUiMode(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentUiMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputcurrentUiMode(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentUiMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smperformToggleHaptic(Landroid/view/View;Landroid/preference/TwoStatePreference;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->performToggleHaptic(Landroid/view/View;Landroid/preference/TwoStatePreference;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 181
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->instance:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 207
    iput v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentUiMode:I

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->existingSettings:Ljava/lang/String;

    .line 214
    new-instance v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda24;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;)V

    iput-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method private exportTextToFile(Landroid/net/Uri;)V
    .registers 4

    .line 643
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rwt"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_41

    if-eqz p1, :cond_3b

    .line 645
    :try_start_10
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->existingSettings:Ljava/lang/String;

    .line 646
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentImportExportEditText:Landroid/widget/EditText;

    if-eqz p0, :cond_21

    .line 647
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_32

    .line 649
    :cond_21
    :goto_21
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 651
    const-string p0, "youtube_settings_export_file_success"

    const-string v0, "Settings exported successfully"

    invoke-static {p0, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showLocalizedToast(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_1f

    goto :goto_3b

    .line 643
    :goto_32
    :try_start_32
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p1

    :try_start_37
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3a
    throw p0

    :cond_3b
    :goto_3b
    if-eqz p1, :cond_40

    .line 653
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_40} :catch_41

    :cond_40
    return-void

    :catch_41
    move-exception p0

    .line 654
    const-string p1, "youtube_settings_export_file_failed"

    const-string v0, "Failed to export settings"

    invoke-static {p1, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showLocalizedToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    new-instance p1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda15;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getCollator()Ljava/text/Collator;
    .registers 2

    .line 873
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->MORPHE_LANGUAGE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/settings/AppLanguage;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/AppLanguage;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 875
    sget-object v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->cachedCollator:Ljava/text/Collator;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->cachedCollatorLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 876
    :cond_18
    sput-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->cachedCollatorLocale:Ljava/util/Locale;

    .line 877
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->cachedCollator:Ljava/text/Collator;

    const/4 v1, 0x1

    .line 878
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 881
    :cond_24
    sget-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->cachedCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private getEditText(Landroid/content/Context;)Landroid/widget/EditText;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 577
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 578
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->existingSettings:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 579
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setAutofillHints([Ljava/lang/String;)V

    const p0, 0xa0001

    .line 580
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setInputType(I)V

    const/4 p0, 0x0

    .line 583
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 p0, 0x41600000  # 14.0f

    .line 584
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    return-object v0
.end method

.method private static getLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 565
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 566
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 567
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v3, 0x1

    const/high16 v4, 0x41800000  # 16.0f

    invoke-static {v3, v4, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    .line 570
    invoke-virtual {v2, v1, p0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 571
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private importSettingsText(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 681
    :try_start_2
    invoke-static {v0}, Lcom/gold/extension/shared/settings/Setting;->exportToJson(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->existingSettings:Ljava/lang/String;

    .line 682
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_24
    .catchall {:try_start_2 .. :try_end_c} :catchall_22

    if-eqz v0, :cond_11

    .line 693
    sput-boolean v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->settingImportInProgress:Z

    return-void

    :cond_11
    const/4 v0, 0x1

    .line 685
    :try_start_12
    sput-boolean v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->settingImportInProgress:Z

    .line 686
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/gold/extension/shared/settings/Setting;->importFromJSON(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 688
    invoke-static {p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showRestartDialog(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_24
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception p0

    goto :goto_34

    :catch_24
    move-exception p0

    goto :goto_29

    .line 693
    :cond_26
    :goto_26
    sput-boolean v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->settingImportInProgress:Z

    return-void

    .line 691
    :goto_29
    :try_start_29
    new-instance p1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda25;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_22

    .line 693
    sput-boolean v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->settingImportInProgress:Z

    return-void

    :goto_34
    sput-boolean v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->settingImportInProgress:Z

    .line 694
    throw p0
.end method

.method private importTextFromFile(Landroid/net/Uri;)V
    .registers 4

    .line 661
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_54

    if-eqz p1, :cond_4e

    .line 663
    :try_start_e
    new-instance v0, Ljava/util/Scanner;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :catchall_2a
    move-exception p0

    goto :goto_45

    :cond_2c
    const-string v0, ""

    .line 666
    :goto_2e
    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentImportExportEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_3d

    .line 667
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    const-string p0, "youtube_settings_import_file_success"

    const-string v0, "Settings imported successfully, tap Save to apply"

    invoke-static {p0, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showLocalizedToast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 670
    :cond_3d
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->importSettingsText(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_e .. :try_end_44} :catchall_2a

    goto :goto_4e

    .line 661
    :goto_45
    :try_start_45
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p1

    :try_start_4a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw p0

    :cond_4e
    :goto_4e
    if-eqz p1, :cond_53

    .line 673
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_53} :catch_54

    :cond_53
    return-void

    :catch_54
    move-exception p0

    .line 674
    const-string p1, "youtube_settings_import_file_failed"

    const-string v0, "Failed to import settings"

    invoke-static {p1, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showLocalizedToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    new-instance p1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    .line 216
    :try_start_0
    sget-boolean p1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updatingPreference:Z

    if-eqz p1, :cond_d

    .line 217
    new-instance p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda9;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 221
    :cond_d
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/gold/extension/shared/settings/Setting;->getSettingFromPath(Ljava/lang/String;)Lcom/gold/extension/shared/settings/Setting;

    move-result-object p1

    if-nez p1, :cond_17

    goto :goto_1d

    .line 225
    :cond_17
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    if-nez p2, :cond_1e

    :goto_1d
    return-void

    .line 229
    :cond_1e
    new-instance v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda10;-><init>(Lcom/gold/extension/shared/settings/Setting;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 231
    sget-boolean v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->settingImportInProgress:Z

    if-nez v0, :cond_47

    sget-boolean v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showingUserDialogMessage:Z

    if-nez v0, :cond_47

    .line 232
    iget-object v0, p1, Lcom/gold/extension/shared/settings/Setting;->userDialogMessage:Lcom/gold/extension/shared/StringRef;

    if-eqz v0, :cond_3c

    invoke-virtual {p0, p2, p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->prefIsSetToDefault(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 235
    invoke-direct {p0, p2, p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showSettingUserDialogConfirmation(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;)V

    return-void

    .line 237
    :cond_3c
    iget-boolean v0, p1, Lcom/gold/extension/shared/settings/Setting;->rebootApp:Z

    if-eqz v0, :cond_47

    .line 238
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showRestartDialog(Landroid/content/Context;)V

    :cond_47
    const/4 v0, 0x1

    .line 242
    sput-boolean v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updatingPreference:Z

    .line 245
    sget-boolean v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->settingImportInProgress:Z

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updatePreference(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;ZZ)V

    .line 247
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updateUIAvailability()V

    const/4 p0, 0x0

    .line 248
    sput-boolean p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updatingPreference:Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    return-void

    :catch_56
    move-exception p0

    .line 250
    new-instance p1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$showImportExportTextDialog$10(Landroid/app/Activity;)V
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentImportExportEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->importSettingsText(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showImportExportTextDialog$12()V
    .registers 1

    .line 517
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentImportExportEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->setClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$showImportExportTextDialog$13(Landroid/content/DialogInterface;)V
    .registers 2

    const/4 p1, 0x0

    .line 540
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentImportExportEditText:Landroid/widget/EditText;

    return-void
.end method

.method private synthetic lambda$showImportExportTextDialog$14(Landroid/app/Activity;)V
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentImportExportEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_17

    .line 548
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 549
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_17

    .line 550
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentImportExportEditText:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_17
    return-void
.end method

.method private synthetic lambda$showImportExportTextDialog$15(Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .registers 4

    .line 545
    iget-object p2, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->existingSettings:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentImportExportEditText:Landroid/widget/EditText;

    if-eqz p2, :cond_16

    .line 546
    new-instance v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda14;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/app/Activity;)V

    const-wide/16 p0, 0x64

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    return-void
.end method

.method private synthetic lambda$showSettingUserDialogConfirmation$4(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 306
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updatePreference(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;ZZ)V

    .line 309
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updateUIAvailability()V

    .line 311
    iget-boolean p0, p2, Lcom/gold/extension/shared/settings/Setting;->rebootApp:Z

    if-eqz p0, :cond_f

    .line 312
    invoke-static {p3}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showRestartDialog(Landroid/content/Context;)V

    :cond_f
    return-void
.end method

.method private synthetic lambda$showSettingUserDialogConfirmation$5(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;)V
    .registers 4

    const/4 v0, 0x1

    .line 317
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updatePreference(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;ZZ)V

    return-void
.end method

.method private static performToggleHaptic(Landroid/view/View;Landroid/preference/TwoStatePreference;)V
    .registers 4

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_12

    .line 82
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_f

    const/16 p1, 0x16

    goto :goto_13

    :cond_f
    const/16 p1, 0x15

    goto :goto_13

    :cond_12
    const/4 p1, 0x4

    .line 84
    :goto_13
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public static showLocalizedToast(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 635
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->STRING:Lcom/gold/extension/shared/ResourceType;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 636
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void

    .line 638
    :cond_10
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method public static showRestartDialog(Landroid/content/Context;)V
    .registers 12

    .line 468
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 469
    sget-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->restartDialogTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_f

    .line 470
    const-string v0, "youtube_settings_restart_title"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->restartDialogTitle:Ljava/lang/CharSequence;

    .line 472
    :cond_f
    sget-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->restartDialogMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_1b

    .line 473
    const-string v0, "youtube_settings_restart_dialog_message"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->restartDialogMessage:Ljava/lang/CharSequence;

    .line 475
    :cond_1b
    sget-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->restartDialogButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_27

    .line 476
    const-string v0, "youtube_settings_restart"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->restartDialogButtonText:Ljava/lang/CharSequence;

    .line 479
    :cond_27
    sget-object v2, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->restartDialogTitle:Ljava/lang/CharSequence;

    sget-object v3, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->restartDialogMessage:Ljava/lang/CharSequence;

    sget-object v5, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->restartDialogButtonText:Ljava/lang/CharSequence;

    new-instance v6, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda5;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 493
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSettingUserDialogConfirmation(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;)V"
        }
    .end annotation

    .line 286
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 288
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 289
    sget-object v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->confirmDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_13

    .line 290
    const-string v1, "youtube_settings_confirm_user_dialog_title"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->confirmDialogTitle:Ljava/lang/CharSequence;

    :cond_13
    const/4 v1, 0x1

    .line 293
    sput-boolean v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showingUserDialogMessage:Z

    .line 295
    iget-object v1, p2, Lcom/gold/extension/shared/settings/Setting;->userDialogMessage:Lcom/gold/extension/shared/StringRef;

    .line 296
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v1}, Lcom/gold/extension/shared/settings/preference/BulletPointPreference;->formatIntoBulletPoints(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 298
    sget-object v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->confirmDialogTitle:Ljava/lang/CharSequence;

    new-instance v5, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, p1, p2, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;Landroid/content/Context;)V

    new-instance v6, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 324
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    new-instance p2, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda8;

    invoke-direct {p2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 325
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 328
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static sortPreferenceGroups(Landroid/preference/PreferenceGroup;)V
    .registers 10

    .line 775
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->UNSORTED:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    invoke-static {v0, v1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->fromKey(Ljava/lang/String;Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;)Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    move-result-object v0

    .line 776
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 779
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->getCollator()Ljava/text/Collator;

    move-result-object v2

    .line 781
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_19
    if-ge v5, v3, :cond_5e

    .line 782
    invoke-virtual {p0, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 785
    instance-of v7, v6, Landroid/preference/PreferenceGroup;

    if-eqz v7, :cond_2b

    move-object v7, v6

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 786
    invoke-static {v7}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->sortPreferenceGroups(Landroid/preference/PreferenceGroup;)V

    move-object v7, v0

    goto :goto_33

    .line 791
    :cond_2b
    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->fromKey(Ljava/lang/String;Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;)Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    move-result-object v7

    .line 795
    :goto_33
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_4b

    const/4 v8, 0x1

    if-eq v7, v8, :cond_46

    const/4 v6, 0x2

    if-ne v7, v6, :cond_40

    goto :goto_5b

    .line 805
    :cond_40
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 800
    :cond_46
    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    goto :goto_53

    .line 797
    :cond_4b
    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lcom/gold/extension/shared/Utils;->removePunctuationToLowercase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 808
    :goto_53
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 812
    :cond_5e
    new-instance p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {p0, v2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Ljava/text/Collator;)V

    invoke-interface {v1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 817
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    move v0, v4

    :goto_6b
    if-ge v0, p0, :cond_90

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Landroid/util/Pair;

    add-int/lit8 v3, v4, 0x1

    .line 819
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/preference/Preference;

    .line 822
    instance-of v5, v2, Landroid/preference/PreferenceScreen;

    if-nez v5, :cond_89

    instance-of v5, v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;

    if-nez v5, :cond_89

    .line 823
    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_8b

    :cond_89
    add-int/lit16 v4, v4, -0x3e8

    .line 828
    :cond_8b
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOrder(I)V

    move v4, v3

    goto :goto_6b

    :cond_90
    return-void
.end method

.method private updatePreference(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;ZZ)V
    .registers 5
    .param p1  # Landroid/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/gold/extension/shared/settings/Setting;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;ZZ)V"
        }
    .end annotation

    if-nez p3, :cond_b

    if-nez p4, :cond_5

    goto :goto_b

    .line 440
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_b
    :goto_b
    if-eqz p3, :cond_10

    .line 444
    invoke-virtual {p0, p1, p2, p4}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->syncSettingWithPreference(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;Z)V

    .line 447
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updatePreferenceAvailability(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;)V

    return-void
.end method

.method private updatePreferenceScreen(Landroid/preference/PreferenceGroup;ZZ)V
    .registers 9
    .param p1  # Landroid/preference/PreferenceGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 373
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4c

    .line 374
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 375
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_15

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 376
    invoke-direct {p0, v2, p2, p3}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updatePreferenceScreen(Landroid/preference/PreferenceGroup;ZZ)V

    goto :goto_49

    .line 377
    :cond_15
    invoke-virtual {v2}, Landroid/preference/Preference;->hasKey()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 378
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-static {v3}, Lcom/gold/extension/shared/settings/Setting;->getSettingFromPath(Ljava/lang/String;)Lcom/gold/extension/shared/settings/Setting;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 382
    invoke-direct {p0, v2, v4, p2, p3}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updatePreference(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;ZZ)V

    goto :goto_49

    .line 383
    :cond_29
    sget-object v4, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_49

    instance-of v4, v2, Landroid/preference/SwitchPreference;

    if-nez v4, :cond_41

    instance-of v4, v2, Landroid/preference/EditTextPreference;

    if-nez v4, :cond_41

    instance-of v2, v2, Landroid/preference/ListPreference;

    if-eqz v2, :cond_49

    .line 386
    :cond_41
    new-instance v2, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, v3}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4c
    return-void
.end method


# virtual methods
.method public exportActivity()V
    .registers 5

    .line 590
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/settings/Setting;->exportToJson(Landroid/app/Activity;)Ljava/lang/String;

    .line 591
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    .line 592
    const-string v1, "\\s+"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_Settings_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2b

    .line 600
    invoke-virtual {p0, v1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception p0

    .line 602
    new-instance v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public importActivity()V
    .registers 3

    .line 608
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2a

    .line 611
    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 613
    new-instance v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public initialize()V
    .registers 3

    .line 263
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->MORPHE_LANGUAGE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/Setting;->isSetToDefault()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 264
    sput-boolean v0, Lcom/gold/extension/shared/ResourceUtils;->useActivityContextIfAvailable:Z

    .line 268
    :cond_b
    sget-object v0, Lcom/gold/extension/shared/settings/SharedSettings;->SHOW_MENU_ICONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 269
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 270
    const-string v0, "youtube_prefs_icons_bold"

    goto :goto_25

    .line 271
    :cond_20
    const-string v0, "youtube_prefs_icons"

    goto :goto_25

    .line 273
    :cond_23
    const-string v0, "youtube_prefs"

    .line 276
    :goto_25
    sget-object v1, Lcom/gold/extension/shared/ResourceType;->XML:Lcom/gold/extension/shared/ResourceType;

    invoke-static {v1, v0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2e

    return-void

    .line 278
    :cond_2e
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 280
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    .line 281
    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->sortPreferenceGroups(Landroid/preference/PreferenceGroup;)V

    .line 282
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->setPreferenceTitlesToMultiLineIfNeeded(Landroid/preference/PreferenceGroup;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 624
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2b

    const/4 v1, -0x1

    if-ne p1, v0, :cond_14

    if-ne p2, v1, :cond_14

    if-eqz p3, :cond_14

    .line 626
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->exportTextToFile(Landroid/net/Uri;)V

    return-void

    :cond_14
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_24

    if-ne p2, v1, :cond_24

    if-eqz p3, :cond_24

    .line 628
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->importTextFromFile(Landroid/net/Uri;)V

    return-void

    :cond_24
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_37

    if-ne p2, v1, :cond_37

    if-eqz p3, :cond_37

    .line 630
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->saveLogsToUri(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_37
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 700
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 701
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iput p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentUiMode:I

    .line 702
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->instance:Ljava/lang/ref/WeakReference;

    .line 704
    new-instance p1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$1;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$1;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;)V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->configurationListener:Landroid/content/ComponentCallbacks2;

    .line 731
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->configurationListener:Landroid/content/ComponentCallbacks2;

    invoke-virtual {p1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 734
    :try_start_2c
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    .line 735
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->initialize()V

    .line 741
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updateUIToSettingValues()V

    .line 743
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p0

    .line 745
    new-instance p1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 619
    new-instance p1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedListView;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 751
    sget-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_10

    .line 752
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->instance:Ljava/lang/ref/WeakReference;

    .line 754
    :cond_10
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->configurationListener:Landroid/content/ComponentCallbacks2;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 755
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->configurationListener:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 757
    :cond_27
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 758
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    .line 159
    instance-of v0, p2, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2a

    .line 160
    move-object v0, p2

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2a

    const v1, 0x102000a

    .line 162
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_2a

    .line 164
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 165
    instance-of v2, v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedItemClickListener;

    if-nez v2, :cond_2a

    .line 166
    new-instance v2, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedItemClickListener;

    invoke-direct {v2, v1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$DebouncedItemClickListener;-><init>(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    :cond_2a
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public prefIsSetToDefault(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;)Z"
        }
    .end annotation

    .line 349
    iget-object p0, p2, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    .line 350
    instance-of p2, p1, Landroid/preference/SwitchPreference;

    if-eqz p2, :cond_18

    check-cast p1, Landroid/preference/SwitchPreference;

    .line 351
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p1, p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0

    .line 353
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 354
    instance-of p2, p1, Landroid/preference/EditTextPreference;

    if-eqz p2, :cond_2b

    check-cast p1, Landroid/preference/EditTextPreference;

    .line 355
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 357
    :cond_2b
    instance-of p2, p1, Landroid/preference/ListPreference;

    if-eqz p2, :cond_3a

    check-cast p1, Landroid/preference/ListPreference;

    .line 358
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 361
    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Must override method to handle preference type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public showImportExportTextDialog()V
    .registers 11

    .line 501
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 504
    invoke-static {v0}, Lcom/gold/extension/shared/settings/Setting;->exportToJson(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->existingSettings:Ljava/lang/String;

    .line 505
    invoke-direct {p0, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->getEditText(Landroid/content/Context;)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentImportExportEditText:Landroid/widget/EditText;

    .line 508
    const-string v1, "youtube_pref_import_export_title"

    .line 510
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->currentImportExportEditText:Landroid/widget/EditText;

    const-string v2, "youtube_settings_save"

    .line 513
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda16;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/app/Activity;)V

    new-instance v6, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda17;

    invoke-direct {v6}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda17;-><init>()V

    const-string v2, "youtube_settings_import_copy"

    .line 516
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda18;

    invoke-direct {v8, p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda18;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;)V

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 508
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object v6

    .line 521
    sget v7, Lcom/gold/extension/shared/ui/Dim;->dp4:I

    .line 523
    const-string v1, "youtube_settings_export_file"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda19;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/shared/ui/CustomDialog;->createButton(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/widget/Button;

    move-result-object v8

    .line 524
    const-string v1, "youtube_settings_import_file"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda20;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/shared/ui/CustomDialog;->createButton(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/widget/Button;

    move-result-object v1

    .line 526
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp36:I

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 527
    invoke-virtual {v2, v5, v5, v7, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 528
    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 531
    invoke-virtual {v2, v7, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 532
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->getLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 535
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 536
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 538
    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 540
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    new-instance v2, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda21;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 544
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    new-instance v2, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda22;-><init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 557
    iget-object p0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ab} :catch_ac

    return-void

    :catch_ac
    move-exception v0

    move-object p0, v0

    .line 559
    new-instance v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public syncSettingWithPreference(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;Z)V
    .registers 5
    .param p1  # Landroid/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/gold/extension/shared/settings/Setting;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;Z)V"
        }
    .end annotation

    .line 402
    instance-of v0, p1, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_26

    check-cast p1, Landroid/preference/SwitchPreference;

    .line 406
    instance-of p0, p2, Lcom/gold/extension/shared/settings/BooleanSetting;

    if-eqz p0, :cond_60

    check-cast p2, Lcom/gold/extension/shared/settings/BooleanSetting;

    if-eqz p3, :cond_1a

    .line 410
    invoke-virtual {p2}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 412
    :cond_1a
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->privateSetValue(Lcom/gold/extension/shared/settings/BooleanSetting;Ljava/lang/Boolean;)V

    return-void

    .line 414
    :cond_26
    instance-of v0, p1, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_42

    check-cast p1, Landroid/preference/EditTextPreference;

    if-eqz p3, :cond_3a

    .line 416
    invoke-virtual {p2}, Lcom/gold/extension/shared/settings/Setting;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    return-void

    .line 418
    :cond_3a
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/gold/extension/shared/settings/Setting;->privateSetValueFromString(Lcom/gold/extension/shared/settings/Setting;Ljava/lang/String;)V

    return-void

    .line 420
    :cond_42
    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_60

    check-cast p1, Landroid/preference/ListPreference;

    if-eqz p3, :cond_56

    .line 422
    invoke-virtual {p2}, Lcom/gold/extension/shared/settings/Setting;->get()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_5d

    .line 424
    :cond_56
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/gold/extension/shared/settings/Setting;->privateSetValueFromString(Lcom/gold/extension/shared/settings/Setting;Ljava/lang/String;)V

    .line 426
    :goto_5d
    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updateListPreferenceSummary(Landroid/preference/ListPreference;Lcom/gold/extension/shared/settings/Setting;)V

    :cond_60
    return-void
.end method

.method public updateListPreferenceSummary(Landroid/preference/ListPreference;Lcom/gold/extension/shared/settings/Setting;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/ListPreference;",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;)V"
        }
    .end annotation

    .line 455
    invoke-virtual {p2}, Lcom/gold/extension/shared/settings/Setting;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 456
    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_18

    .line 458
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 463
    :cond_18
    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updatePreferenceAvailability(Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;)V
    .registers 3
    .param p1  # Landroid/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/gold/extension/shared/settings/Setting;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;)V"
        }
    .end annotation

    .line 451
    invoke-virtual {p2}, Lcom/gold/extension/shared/settings/Setting;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public updateUIAvailability()V
    .registers 3

    .line 342
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updatePreferenceScreen(Landroid/preference/PreferenceGroup;ZZ)V

    return-void
.end method

.method public updateUIToSettingValues()V
    .registers 3

    .line 335
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->updatePreferenceScreen(Landroid/preference/PreferenceGroup;ZZ)V

    return-void
.end method
