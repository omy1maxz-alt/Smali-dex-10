.class public Lcom/sammods4h/task/DevMsg;
.super Ljava/lang/Object;
.source "UpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sammods4h/task/DevMsg$FetchConfigTask;
    }
.end annotation


# static fields
.field private static final CHECK_INTERVAL:J = 0x1ca377fe000L

.field private static final LAST_CHECKED_KEY:Ljava/lang/String; = "last_checked_time"

.field private static final PASTEBIN_URL:Ljava/lang/String; = ""

.field private static final PREF_NAME:Ljava/lang/String; = "DevMsgPrefs"


# direct methods
.method static bridge synthetic -$$Nest$smshowDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sammods4h/task/DevMsg;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canCheckServer(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"  # Landroid/content/Context;

    .line 37
    const-string v0, "DevMsgPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "last_checked_time"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 39
    .local v5, "lastChecked":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    const-wide/32 v7, 0x5265c00

    cmp-long v4, v2, v7

    if-lez v4, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method private static getRoundedBackground()Landroid/graphics/drawable/GradientDrawable;
    .registers 2

    .line 145
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 146
    .local v0, "background":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 147
    const/high16 v1, 0x42200000  # 40.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 148
    return-object v0
.end method

.method static synthetic lambda$showDialog$0(Ljava/lang/String;Landroid/app/Activity;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 7
    .param p0, "buttonUrl"  # Ljava/lang/String;
    .param p1, "activity"  # Landroid/app/Activity;
    .param p2, "dialog"  # Landroid/app/Dialog;
    .param p3, "v"  # Landroid/view/View;

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 127
    .end local v0  # "browserIntent":Landroid/content/Intent;
    :cond_14
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 128
    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .registers 1

    return-void
.end method

.method private static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p0, "activity"  # Landroid/app/Activity;
    .param p1, "titleStr"  # Ljava/lang/String;
    .param p2, "messageStr"  # Ljava/lang/String;
    .param p3, "buttonText"  # Ljava/lang/String;
    .param p4, "buttonUrl"  # Ljava/lang/String;

    .line 80
    move-object/from16 v0, p0

    const-string v1, "DevMsgPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_checked_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 84
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 85
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 87
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .local v5, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    const/16 v6, 0x28

    const/16 v7, 0x1e

    invoke-virtual {v5, v6, v6, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 90
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 91
    invoke-static {}, Lcom/sammods4h/task/DevMsg;->getRoundedBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v7, "title":Landroid/widget/TextView;
    move-object/from16 v8, p1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/high16 v9, 0x41900000  # 18.0f

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 97
    const/high16 v9, -0x1000000

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v10, "subtitle":Landroid/widget/TextView;
    move-object/from16 v11, p2

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const/high16 v12, 0x41700000  # 15.0f

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    const/16 v12, 0x14

    invoke-virtual {v10, v4, v12, v4, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 110
    .local v9, "divider":Landroid/view/View;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v13, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const v13, -0x333334

    invoke-virtual {v9, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 114
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v13, Landroid/widget/Button;

    invoke-direct {v13, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 117
    .local v13, "updateBtn":Landroid/widget/Button;
    move-object/from16 v14, p3

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const-string v15, "#007AFF"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 119
    invoke-virtual {v13, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 120
    const/high16 v15, 0x41800000  # 16.0f

    invoke-virtual {v13, v15}, Landroid/widget/Button;->setTextSize(F)V

    .line 121
    invoke-virtual {v13, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 122
    const/16 v15, 0xa

    invoke-virtual {v13, v4, v12, v4, v15}, Landroid/widget/Button;->setPadding(IIII)V

    .line 123
    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance v4, Lcom/sammods4h/task/DevMsg$$ExternalSyntheticLambda0;

    move-object/from16 v12, p4

    invoke-direct {v4, v12, v0, v2}, Lcom/sammods4h/task/DevMsg$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v13, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 134
    .local v4, "screenWidth":I
    int-to-double v14, v4

    move-object/from16 v16, v1

    .end local v1  # "prefs":Landroid/content/SharedPreferences;
    .local v16, "prefs":Landroid/content/SharedPreferences;
    const-wide v0, 0x3feb333333333333L  # 0.85

    mul-double v14, v14, v0

    double-to-int v0, v14

    .line 135
    .local v0, "dialogWidth":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v1, v0, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 138
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 139
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_f4

    .line 140
    invoke-virtual {v1, v0, v14}, Landroid/view/Window;->setLayout(II)V

    .line 141
    const v14, 0x106000d

    invoke-virtual {v1, v14}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 144
    :cond_f4
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 145
    return-void
.end method
