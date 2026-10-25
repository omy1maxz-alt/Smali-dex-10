.class public Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;
.super Landroid/preference/Preference;
.source "ExportLogToClipboardPreference.java"


# static fields
.field public static final WRITE_LOGS_REQUEST_CODE:I = 0x2c

.field private static pendingLogsToExport:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0gCzT7zi714C1Bmmr9QZ5SVm8y4(Landroid/widget/EditText;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    .line 283
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x2

    .line 284
    aget-object v2, p1, v1

    if-eqz v2, :cond_2e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_2e

    .line 285
    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$1Yo6ovAISApIR98bOOlm70Sa3gI()Ljava/lang/String;
    .registers 1

    .line 167
    const-string v0, "saveLogsToUri failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$5i10Zn4tIBNN2VOIdelfFjeJ8jk()Ljava/lang/String;
    .registers 1

    .line 144
    const-string v0, "Failed to launch file picker"

    return-object v0
.end method

.method public static synthetic $r8$lambda$EdsjwNbG4zXbec1alZmd6XSQXD4(Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;Landroid/preference/Preference;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->lambda$new$0(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QOpYC0GvAcDDn5NrGDzMND3DOMs(Landroid/content/Context;Landroid/widget/EditText;)V
    .registers 2

    .line 301
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->exportToFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ar7lvSckoSETNaTrvFCCBeLOacg(Landroid/widget/EditText;)V
    .registers 1

    .line 198
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->exportToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cMkGgnLJUhmpMEaekOHys30twZw()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$ryzn8XykwAc2C6yAuoEUnYRAvWw(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$tbP_jbTFzAjMOi_rV6fkNGqjHb4()Ljava/lang/String;
    .registers 1

    .line 313
    const-string v0, "showLogDialog failure"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 327
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 324
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 321
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 318
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private static createLogEditText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/EditText;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 67
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 69
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    const/4 p0, 0x0

    .line 70
    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusable(Z)V

    .line 71
    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const p1, 0xa0001

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setInputType(I)V

    .line 75
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 p0, 0x41400000  # 12.0f

    .line 76
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    return-object v0
.end method

.method private static exportToClipboard(Ljava/lang/String;)V
    .registers 3

    .line 86
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    .line 87
    const-string p0, "youtube_debug_logs_disabled"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    :cond_16
    if-eqz p0, :cond_2c

    .line 91
    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_2c

    .line 99
    :cond_1f
    const-string v0, "youtube_debug_logs_copied_to_clipboard"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->setClipboard(Ljava/lang/CharSequence;)V

    return-void

    .line 92
    :cond_2c
    :goto_2c
    const-string p0, "youtube_debug_logs_none_found"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception p0

    .line 104
    const-string v0, "youtube_debug_logs_failed_to_export"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method private static exportToFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 116
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_88

    if-eqz p1, :cond_88

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_88

    .line 121
    :cond_19
    sput-object p1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->pendingLogsToExport:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    .line 124
    const-string v0, "\\s+"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 127
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_Debug_Logs_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".txt"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    sget-object p1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    const/16 v1, 0x2c

    if-eqz p1, :cond_78

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 138
    :cond_78
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_82

    .line 139
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 141
    :cond_82
    const-string p0, "Cannot open file manager from this context."

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 117
    :cond_88
    :goto_88
    const-string p0, "youtube_debug_logs_none_found"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_91} :catch_92

    return-void

    :catch_92
    move-exception p0

    .line 144
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/preference/Preference;)Z
    .registers 2

    .line 60
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->showLogDialog(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static saveLogsToUri(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    .line 152
    sget-object v0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->pendingLogsToExport:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 155
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "rwt"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_2a
    .catchall {:try_start_6 .. :try_end_10} :catchall_28

    if-eqz p0, :cond_2c

    .line 157
    :try_start_12
    sget-object p1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->pendingLogsToExport:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_2c

    :catchall_1e
    move-exception p1

    .line 155
    :try_start_1f
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p0

    :try_start_24
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_27
    throw p1

    :catchall_28
    move-exception p0

    goto :goto_58

    :catch_2a
    move-exception p0

    goto :goto_48

    :cond_2c
    :goto_2c
    if-eqz p0, :cond_31

    .line 159
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 161
    :cond_31
    const-string p0, "youtube_debug_export_logs_success"

    .line 162
    sget-object p1, Lcom/gold/extension/shared/ResourceType;->STRING:Lcom/gold/extension/shared/ResourceType;

    invoke-static {p1, p0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_40

    .line 163
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_42

    .line 164
    :cond_40
    const-string p0, "Debug logs exported successfully"

    .line 162
    :goto_42
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_45} :catch_2a
    .catchall {:try_start_24 .. :try_end_45} :catchall_28

    .line 169
    sput-object v0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->pendingLogsToExport:Ljava/lang/String;

    return-void

    .line 166
    :goto_48
    :try_start_48
    const-string p1, "Failed to export debug logs"

    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 167
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_28

    .line 169
    sput-object v0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->pendingLogsToExport:Ljava/lang/String;

    return-void

    :goto_58
    sput-object v0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->pendingLogsToExport:Ljava/lang/String;

    .line 170
    throw p0
.end method

.method public static showLogDialog(Landroid/content/Context;)V
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 176
    :try_start_0
    sget-object v1, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_16

    .line 177
    const-string v0, "youtube_debug_logs_disabled"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 181
    :cond_16
    invoke-static {}, Lcom/gold/extension/shared/Logger;->getLogBuffer()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 182
    const-string v0, "youtube_debug_logs_none_found"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/gold/extension/shared/Logger;->clearLogBufferData()V

    return-void

    .line 187
    :cond_2d
    invoke-static {}, Lcom/gold/extension/shared/Logger;->getFilteredLogs()Ljava/lang/String;

    move-result-object v10

    .line 188
    const-string v1, "\n"

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 190
    invoke-static {p0, v10}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->createLogEditText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    .line 192
    const-string v1, "youtube_debug_export_logs_title"

    .line 194
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "youtube_settings_import_copy"

    .line 197
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;)V

    new-instance v6, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "youtube_debug_export_logs_clear"

    .line 200
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda3;-><init>()V

    const/4 v9, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    .line 192
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object v6

    const/high16 v1, 0x41800000  # 16.0f

    .line 205
    invoke-static {v1}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v7

    .line 207
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 209
    const-string v1, "youtube_debug_logs_search_hint"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 v8, 0x1

    .line 210
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v9, 0x0

    .line 211
    invoke-virtual {v2, v9}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 213
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v1, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 215
    invoke-virtual {v1, v9, v9, v9, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 216
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;

    move-object v1, p0

    move-object v5, v3

    move-object v3, v10

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;-><init>(Landroid/content/Context;Landroid/widget/EditText;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/EditText;)V

    move-object v1, v0

    move-object v10, v2

    move-object v3, v5

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    new-instance v1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda4;

    invoke-direct {v1, v10}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda4;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 292
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 294
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 296
    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 297
    invoke-virtual {v11, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    const-string v2, "youtube_debug_export_logs_file"

    .line 300
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v3}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 299
    invoke-static/range {v0 .. v5}, Lcom/gold/extension/shared/ui/CustomDialog;->createButton(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/widget/Button;

    move-result-object v0

    .line 303
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/gold/extension/shared/ui/Dim;->dp36:I

    invoke-direct {v1, v13, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 307
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 308
    invoke-virtual {v0, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const/4 v1, 0x3

    .line 309
    invoke-virtual {v0, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 310
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ef} :catch_f0

    return-void

    :catch_f0
    move-exception v0

    .line 313
    new-instance v1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
