.class Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;
.super Ljava/lang/Object;
.source "ExportLogToClipboardPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference;->showLogDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final searchHandler:Landroid/os/Handler;

.field searchRunnable:Ljava/lang/Runnable;

.field final synthetic val$allLogs:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$logLines:[Ljava/lang/String;

.field final synthetic val$logViewer:Landroid/widget/EditText;

.field final synthetic val$searchBar:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$QbN0JEgBz6gNs4qndQ5T_0ns9g4(Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->lambda$onTextChanged$1(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w00FPpjIM74AQewgUFusdILorBk(Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->lambda$onTextChanged$2(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wq7QrMPx8BTPOwQ4TTPfNFej9OM(Landroid/widget/EditText;Ljava/lang/CharSequence;)V
    .registers 2

    .line 273
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->val$searchBar:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->val$allLogs:Ljava/lang/String;

    iput-object p4, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->val$logLines:[Ljava/lang/String;

    iput-object p5, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->val$logViewer:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->searchHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onTextChanged$1(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 15

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6f

    .line 243
    :cond_7
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 245
    array-length v0, p3

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_5c

    aget-object v2, p3, v1

    .line 246
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 249
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 250
    invoke-virtual {p2, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 252
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_2f
    if-ltz v2, :cond_59

    add-int v5, v4, v2

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    .line 257
    new-instance v7, Landroid/text/style/BackgroundColorSpan;

    const v8, -0x333334

    invoke-direct {v7, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v8, 0x21

    invoke-virtual {p2, v7, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 259
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/high16 v9, -0x1000000

    invoke-direct {v7, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2, v7, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v3, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2f

    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 267
    :cond_5c
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6f

    .line 268
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 273
    :cond_6f
    :goto_6f
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->searchHandler:Landroid/os/Handler;

    new-instance p1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4, p2}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onTextChanged$2(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 12

    .line 238
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11

    .line 224
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 226
    iget-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->val$context:Landroid/content/Context;

    const p3, 0x1080038

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 228
    sget p3, Lcom/gold/extension/shared/ui/Dim;->dp20:I

    const/4 p4, 0x0

    .line 229
    invoke-virtual {p2, p4, p4, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    :cond_1b
    iget-object p3, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->val$searchBar:Landroid/widget/EditText;

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_25

    move-object p2, p4

    .line 231
    :cond_25
    invoke-virtual {p3, p4, p4, p2, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object p1, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->searchRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_31

    .line 235
    iget-object p2, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->searchHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    :cond_31
    iget-object v3, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->val$allLogs:Ljava/lang/String;

    iget-object v4, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->val$logLines:[Ljava/lang/String;

    iget-object v5, p0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->val$logViewer:Landroid/widget/EditText;

    new-instance v0, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1$$ExternalSyntheticLambda1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/EditText;)V

    iput-object v0, v1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->searchRunnable:Ljava/lang/Runnable;

    .line 276
    iget-object p0, v1, Lcom/gold/extension/shared/settings/preference/ExportLogToClipboardPreference$1;->searchHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
