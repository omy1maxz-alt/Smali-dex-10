.class public Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;
.super Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;
.source "ExternalDownloaderPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;
    }
.end annotation


# instance fields
.field private adapter:Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;

.field private editText:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$7cTHeG68meneDhHD6B8j2PGpDjE()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$Ca1ZqSv1Mi4aqUnrd4J-Pn5witg()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$DYTUFhLp5FigGHKk5XSvW7EVqUc(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;)Ljava/lang/String;
    .registers 3

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to open downloader URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ocdmsydu--VbGFTeUnJmJVW2VBs(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Landroid/widget/ListView;Ljava/lang/String;)Ljava/lang/Void;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->lambda$showDialog$4(Landroid/widget/ListView;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T942-AAYaNCzyBrUbw60J9YTK2s(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Ljava/util/function/Function;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->lambda$showDialog$9(Ljava/util/function/Function;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XRrZU4eKQUr7EDrfYOgwIwHCjNI(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launching external downloader: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " context: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dMK38tEtPfl3NJpzN3ICxEY5768()Ljava/lang/String;
    .registers 1

    .line 73
    const-string v0, "launchExternalDownloader failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$dttln1xYE0wdg6gFErHbIOda-YM()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$oAu6-c2c0h9W24qIAbROmypJOaw(Ljava/lang/String;Landroid/content/Context;Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;)V
    .registers 5

    if-eqz p0, :cond_1f

    .line 450
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10000000

    .line 451
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 452
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 455
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;)V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_1f
    return-void
.end method

.method public static synthetic $r8$lambda$opjLrCdRcFppdqv9iN1gge0bxXs(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->lambda$showDialog$5(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rnwFMJtKLGixXH7TECD03MxMmWs(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App installed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$siVQBFeoPVTRVkVRhsI1_dMTcaM(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->lambda$showDialog$7(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yuDaOdfl80_3d5XS1FaeiX4qx60(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App not installed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisAppInstalledAndEnabled(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->isAppInstalledAndEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private createEditText(Landroid/content/Context;Ljava/lang/String;ZLjava/util/function/Function;)Landroid/widget/EditText;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)",
            "Landroid/widget/EditText;"
        }
    .end annotation

    .line 388
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 389
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 391
    const-string p1, "youtube_external_downloader_other_item_hint"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 392
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 p2, 0x41800000  # 16.0f

    .line 393
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 394
    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 396
    new-instance p2, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$1;

    invoke-direct {p2, p0, p4}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$1;-><init>(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Ljava/util/function/Function;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 410
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance p2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 p3, 0x41200000  # 10.0f

    .line 411
    invoke-static {p3}, Lcom/gold/extension/shared/ui/Dim;->roundedCorners(F)[F

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4, p4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 412
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getEditTextBackground()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    sget p2, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 414
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 415
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-object v0
.end method

.method private static isAppInstalledAndEnabled(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 163
    :try_start_1
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_23

    .line 164
    new-instance v1, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_19} :catch_1b

    const/4 p0, 0x1

    return p0

    .line 168
    :catch_1b
    new-instance v1, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_23
    return v0
.end method

.method private synthetic lambda$showDialog$4(Landroid/widget/ListView;Ljava/lang/String;)Ljava/lang/Void;
    .registers 8

    .line 266
    invoke-static {p2}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->findByPackageName(Ljava/lang/String;)Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    move-result-object v0

    if-nez v0, :cond_a

    .line 267
    sget-object p2, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->OTHER:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    iget-object p2, p2, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->name:Ljava/lang/String;

    .line 269
    :cond_a
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 271
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_33

    .line 272
    aget-object v3, v0, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 p2, 0x1

    .line 274
    invoke-virtual {p1, v2, p2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 275
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 276
    iget-object p1, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->adapter:Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;

    invoke-virtual {p1, v3}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;->setSelectedValue(Ljava/lang/String;)V

    .line 277
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->adapter:Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_33

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$showDialog$5(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 287
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    aget-object p1, p1, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-static {p1}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->findByPackageName(Ljava/lang/String;)Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    move-result-object p2

    if-eqz p2, :cond_1e

    .line 291
    iget-object p3, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->editText:Landroid/widget/EditText;

    iget-object p2, p2, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->editText:Landroid/widget/EditText;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3b

    .line 294
    :cond_1e
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->getCurrentPackageName()Ljava/lang/String;

    move-result-object p2

    .line 295
    iget-object p3, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->editText:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->findByPackageName(Ljava/lang/String;)Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    move-result-object p4

    if-nez p4, :cond_2b

    goto :goto_2d

    .line 297
    :cond_2b
    const-string p2, ""

    .line 295
    :goto_2d
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->editText:Landroid/widget/EditText;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 300
    iget-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 302
    :goto_3b
    iget-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 303
    iget-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->adapter:Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;

    invoke-virtual {p2, p1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;->setSelectedValue(Ljava/lang/String;)V

    .line 304
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->adapter:Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$showDialog$7(Landroid/content/Context;)V
    .registers 12

    .line 325
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 328
    const-string p0, "youtube_external_downloader_name_title"

    .line 330
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "youtube_external_downloader_empty_warning"

    .line 331
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda10;

    invoke-direct {v5}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda10;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 328
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    .line 339
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    .line 343
    :cond_38
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->showDialogIfAppIsNotInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_4c

    .line 348
    :cond_43
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 349
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private synthetic lambda$showDialog$9(Ljava/util/function/Function;)V
    .registers 5

    .line 355
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 358
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 359
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static launchExternalDownloader(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gold/youtube/om7753/RouterActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const-string v3, "https://youtu.be/%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_28

    :catch_1e
    move-exception p0

    goto :goto_20

    :goto_20
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda12;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :goto_28
    return-void
.end method

.method public static showDialogIfAppIsNotInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 15

    .line 424
    invoke-static {p1}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->isAppInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 428
    :cond_8
    invoke-static {p1}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->findByPackageName(Ljava/lang/String;)Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 430
    iget-object v2, v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->downloadUrl:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v2, v1

    :goto_13
    if-eqz v2, :cond_1b

    .line 433
    const-string v1, "gms_core_dialog_open_website_text"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1b
    move-object v7, v1

    if-eqz v0, :cond_2c

    .line 437
    iget-object p1, v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->name:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "youtube_external_downloader_not_installed_warning"

    invoke-static {v1, p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2a
    move-object v5, p1

    goto :goto_37

    .line 438
    :cond_2c
    const-string v1, "youtube_external_downloader_package_not_found_warning"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    .line 440
    :goto_37
    const-string p1, "youtube_external_downloader_not_found_title"

    .line 442
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda3;

    invoke-direct {v8, v2, p0, v0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;)V

    new-instance v9, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda4;

    invoke-direct {v9}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda4;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    .line 440
    invoke-static/range {v3 .. v12}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    .line 462
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method private updateEntries()V
    .registers 9

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->values()[Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    if-ge v5, v3, :cond_33

    aget-object v6, v2, v5

    .line 205
    iget-boolean v7, v6, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->isPreferred:Z

    if-nez v7, :cond_1f

    invoke-virtual {v6}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->isInstalled()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 206
    :cond_1f
    iget-object v7, v6, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->packageName:Ljava/lang/String;

    .line 208
    iget-object v6, v6, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->name:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_29

    goto :goto_2d

    .line 211
    :cond_29
    sget-object v6, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->OTHER:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    iget-object v7, v6, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->name:Ljava/lang/String;

    .line 209
    :goto_2d
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 215
    :cond_33
    new-array v2, v4, [Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 216
    new-array v0, v4, [Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getCurrentPackageName()Ljava/lang/String;
    .registers 1

    .line 193
    sget-object p0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->EXTERNAL_DOWNLOADER_PACKAGE_NAME:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultPackageName()Ljava/lang/String;
    .registers 1

    .line 197
    sget-object p0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->EXTERNAL_DOWNLOADER_PACKAGE_NAME:Lcom/gold/extension/shared/settings/StringSetting;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 2

    .line 0
    return-void
.end method

.method public showDialog(Landroid/os/Bundle;)V
    .registers 17

    .line 238
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->updateEntries()V

    .line 240
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v6

    .line 244
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 245
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 248
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v1, 0x102000a

    .line 249
    invoke-virtual {v7, v1}, Landroid/view/View;->setId(I)V

    .line 250
    invoke-virtual {v7, v11}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 253
    invoke-static {v6}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->findByPackageName(Ljava/lang/String;)Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    move-result-object v1

    const/4 v12, 0x0

    if-nez v1, :cond_2c

    move v8, v11

    :goto_2a
    move-object v1, v0

    goto :goto_2e

    :cond_2c
    move v8, v12

    goto :goto_2a

    .line 254
    :goto_2e
    new-instance v0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;

    sget v2, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->LAYOUT_MORPHE_CUSTOM_LIST_ITEM_CHECKED:I

    .line 257
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 258
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v8, :cond_41

    .line 260
    sget-object v5, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->OTHER:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    iget-object v5, v5, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->name:Ljava/lang/String;

    goto :goto_42

    :cond_41
    move-object v5, v6

    .line 261
    :goto_42
    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->adapter:Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;

    .line 263
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 265
    new-instance v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v7}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda5;-><init>(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Landroid/widget/ListView;)V

    .line 283
    invoke-interface {v0, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v2, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;)V

    invoke-virtual {v7, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 308
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/high16 v14, 0x3f800000  # 1.0f

    invoke-direct {v2, v13, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 310
    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 311
    invoke-virtual {v10, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    invoke-direct {p0, v1, v6, v8, v0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->createEditText(Landroid/content/Context;Ljava/lang/String;ZLjava/util/function/Function;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->editText:Landroid/widget/EditText;

    .line 315
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 320
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_81

    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_83

    :cond_81
    const-string v2, ""

    :goto_83
    new-instance v5, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, v1}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Landroid/content/Context;)V

    new-instance v6, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda8;-><init>()V

    const-string v3, "youtube_settings_reset"

    .line 353
    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0, v0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$$ExternalSyntheticLambda9;-><init>(Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;Ljava/util/function/Function;)V

    const/4 v9, 0x0

    move-object v0, v1

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 318
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 365
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 366
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v13, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 370
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {v0, v10, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    .line 373
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
