.class public Lcom/gold/extension/shared/ui/CustomDialog;
.super Ljava/lang/Object;
.source "CustomDialog.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final dialog:Landroid/app/Dialog;

.field private final mainLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$0A7QHC_xJXL5HF7G9DRLuAj0Igk(Ljava/lang/Runnable;ZLandroid/app/Dialog;Landroid/view/View;)V
    .registers 4

    if-eqz p0, :cond_5

    .line 331
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 332
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    :cond_c
    return-void
.end method

.method public static synthetic $r8$lambda$Pr76rn2BI-4WAt9atv2ufMVdmDs(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating custom dialog with title: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)V
    .registers 13
    .param p4  # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    .line 116
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gold/extension/shared/ui/CustomDialog;->dialog:Landroid/app/Dialog;

    const/4 p1, 0x1

    .line 117
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 120
    invoke-direct {p0}, Lcom/gold/extension/shared/ui/CustomDialog;->createMainLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/ui/CustomDialog;->mainLayout:Landroid/widget/LinearLayout;

    .line 121
    invoke-direct {p0, p2}, Lcom/gold/extension/shared/ui/CustomDialog;->addTitle(Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0, p3, p4}, Lcom/gold/extension/shared/ui/CustomDialog;->addContent(Ljava/lang/CharSequence;Landroid/widget/EditText;)V

    move-object p2, p0

    move-object p3, p5

    move-object p4, p6

    move-object p5, p7

    move-object p6, p8

    move-object p7, p9

    move p8, p10

    move p9, p11

    .line 123
    invoke-direct/range {p2 .. p9}, Lcom/gold/extension/shared/ui/CustomDialog;->addButtons(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)V

    .line 126
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 127
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_38

    const/16 p1, 0x11

    const/16 p2, 0x5a

    const/4 p3, 0x0

    .line 129
    invoke-static {p0, p1, p3, p2, p3}, Lcom/gold/extension/shared/Utils;->setDialogWindowParameters(Landroid/view/Window;IIIZ)V

    :cond_38
    return-void
.end method

.method private addButtons(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)V
    .registers 17
    .param p4  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 255
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 257
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 260
    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_43

    if-eqz p5, :cond_43

    .line 268
    iget-object v3, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/gold/extension/shared/ui/CustomDialog;->dialog:Landroid/app/Dialog;

    const/4 v7, 0x0

    move-object v5, p4

    move-object v6, p5

    move v8, p6

    invoke-static/range {v3 .. v8}, Lcom/gold/extension/shared/ui/CustomDialog;->createButton(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/widget/Button;

    move-result-object p4

    .line 269
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-direct {p0, p4}, Lcom/gold/extension/shared/ui/CustomDialog;->measureButtonWidth(Landroid/widget/Button;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    if-eqz p3, :cond_64

    .line 273
    iget-object v3, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/gold/extension/shared/ui/CustomDialog;->dialog:Landroid/app/Dialog;

    const/high16 p4, 0x1040000

    invoke-virtual {v3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v6, p3

    invoke-static/range {v3 .. v8}, Lcom/gold/extension/shared/ui/CustomDialog;->createButton(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/widget/Button;

    move-result-object p3

    .line 274
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-direct {p0, p3}, Lcom/gold/extension/shared/ui/CustomDialog;->measureButtonWidth(Landroid/widget/Button;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_64
    if-eqz p2, :cond_8c

    .line 278
    iget-object v3, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/gold/extension/shared/ui/CustomDialog;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_6e

    :goto_6c
    move-object v5, p1

    goto :goto_76

    :cond_6e
    const p1, 0x104000a

    .line 279
    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :goto_76
    const/4 v8, 0x1

    move-object v6, p2

    move/from16 v7, p7

    .line 278
    invoke-static/range {v3 .. v8}, Lcom/gold/extension/shared/ui/CustomDialog;->createButton(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/widget/Button;

    move-result-object p1

    .line 281
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/ui/CustomDialog;->measureButtonWidth(Landroid/widget/Button;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_8c
    invoke-direct {p0, v0, v1, v2}, Lcom/gold/extension/shared/ui/CustomDialog;->layoutButtons(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/util/List;)V

    .line 287
    iget-object p0, p0, Lcom/gold/extension/shared/ui/CustomDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addContent(Ljava/lang/CharSequence;Landroid/widget/EditText;)V
    .registers 12
    .param p2  # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    .line 187
    :cond_5
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    const/4 v2, 0x2

    .line 190
    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 192
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 193
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 194
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eqz p2, :cond_6e

    .line 198
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v7, 0x41200000  # 10.0f

    .line 199
    invoke-static {v7}, Lcom/gold/extension/shared/ui/Dim;->roundedCorners(F)[F

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p1, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 200
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getEditTextBackground()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    sget v6, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 202
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {v0, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 206
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_58

    .line 207
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    :cond_58
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 211
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 212
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_97

    .line 217
    :cond_6e
    new-instance p2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    invoke-direct {p2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41800000  # 16.0f

    .line 220
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 221
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    instance-of p1, p1, Landroid/text/Spanned;

    if-eqz p1, :cond_8f

    .line 224
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 226
    :cond_8f
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    :goto_97
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-direct {p1, v5, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 236
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object p0, p0, Lcom/gold/extension/shared/ui/CustomDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addTitle(Ljava/lang/CharSequence;)V
    .registers 5

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 161
    :cond_7
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p1, 0x41900000  # 18.0f

    .line 164
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 165
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 166
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 168
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object p0, p0, Lcom/gold/extension/shared/ui/CustomDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private buttonAreaWidth()I
    .registers 2

    .line 343
    invoke-static {}, Lcom/gold/extension/shared/ui/Dim;->getScreenWidth()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f666666  # 0.9f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    sget v0, Lcom/gold/extension/shared/ui/Dim;->dp24:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    return p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;
    .registers 21
    .param p3  # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/EditText;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Runnable;",
            "Z)",
            "Landroid/util/Pair<",
            "Landroid/app/Dialog;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 79
    invoke-static/range {v0 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/util/Pair;
    .registers 24
    .param p3  # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/EditText;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Runnable;",
            "ZZ)",
            "Landroid/util/Pair<",
            "Landroid/app/Dialog;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/gold/extension/shared/ui/CustomDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/ui/CustomDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 91
    new-instance v1, Lcom/gold/extension/shared/ui/CustomDialog;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/gold/extension/shared/ui/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)V

    .line 94
    new-instance p0, Landroid/util/Pair;

    iget-object p1, v1, Lcom/gold/extension/shared/ui/CustomDialog;->dialog:Landroid/app/Dialog;

    iget-object p2, v1, Lcom/gold/extension/shared/ui/CustomDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static createButton(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/widget/Button;
    .registers 9
    .param p1  # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 305
    new-instance v0, Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 306
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p0, 0x41600000  # 14.0f

    .line 307
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 308
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 p0, 0x1

    .line 309
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 310
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p0, 0x11

    .line 311
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    .line 313
    sget p0, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v0, p0, v2, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 315
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 316
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 319
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance p2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v2, 0x41a00000  # 20.0f

    .line 320
    invoke-static {v2}, Lcom/gold/extension/shared/ui/Dim;->roundedCorners(F)[F

    move-result-object v2

    invoke-direct {p2, v2, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 321
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    if-eqz p4, :cond_46

    .line 322
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getOkButtonBackgroundColor()I

    move-result v1

    goto :goto_4a

    .line 323
    :cond_46
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getCancelOrNeutralButtonBackgroundColor()I

    move-result v1

    .line 321
    :goto_4a
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result p0

    const/4 p2, -0x1

    const/high16 v1, -0x1000000

    if-eqz p0, :cond_5d

    if-eqz p4, :cond_5f

    :cond_5b
    move p2, v1

    goto :goto_5f

    :cond_5d
    if-eqz p4, :cond_5b

    :cond_5f
    :goto_5f
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    new-instance p0, Lcom/gold/extension/shared/ui/CustomDialog$$ExternalSyntheticLambda1;

    invoke-direct {p0, p3, p5, p1}, Lcom/gold/extension/shared/ui/CustomDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;ZLandroid/app/Dialog;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createMainLayout()Landroid/widget/LinearLayout;
    .registers 5

    .line 139
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 140
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    sget p0, Lcom/gold/extension/shared/ui/Dim;->dp24:I

    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    invoke-virtual {v0, p0, v1, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 144
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v2, 0x41e00000  # 28.0f

    .line 145
    invoke-static {v2}, Lcom/gold/extension/shared/ui/Dim;->roundedCorners(F)[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 147
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getDialogBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private getButton(Ljava/util/List;Ljava/util/List;I)Landroid/widget/Button;
    .registers 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/widget/Button;"
        }
    .end annotation

    .line 435
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    .line 436
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 437
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 439
    :cond_11
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp36:I

    .line 440
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 443
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3b

    if-nez p3, :cond_2f

    move p1, v2

    goto :goto_31

    .line 445
    :cond_2f
    sget p1, Lcom/gold/extension/shared/ui/Dim;->dp4:I

    :goto_31
    if-nez p3, :cond_36

    sget p2, Lcom/gold/extension/shared/ui/Dim;->dp4:I

    goto :goto_37

    :cond_36
    move p2, v2

    :goto_37
    invoke-virtual {v0, p1, v2, p2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_51

    .line 446
    :cond_3b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_51

    if-nez p3, :cond_46

    move p1, v2

    goto :goto_48

    .line 450
    :cond_46
    sget p1, Lcom/gold/extension/shared/ui/Dim;->dp4:I

    :goto_48
    if-ne p3, v1, :cond_4c

    move p2, v2

    goto :goto_4e

    :cond_4c
    sget p2, Lcom/gold/extension/shared/ui/Dim;->dp4:I

    :goto_4e
    invoke-virtual {v0, p1, v2, p2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 453
    :cond_51
    :goto_51
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method private layoutButtons(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 364
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 368
    :cond_7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 369
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_d

    .line 371
    :cond_1f
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2f

    .line 373
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    sget v4, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    mul-int/2addr v0, v4

    add-int/2addr v2, v0

    .line 377
    :cond_2f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_3f

    .line 378
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/ui/CustomDialog;->layoutSingleButton(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    return-void

    .line 379
    :cond_3f
    invoke-direct {p0}, Lcom/gold/extension/shared/ui/CustomDialog;->buttonAreaWidth()I

    move-result v0

    if-gt v2, v0, :cond_49

    .line 381
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/ui/CustomDialog;->layoutButtonsInRow(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 384
    :cond_49
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/ui/CustomDialog;->layoutButtonsInColumns(Landroid/widget/LinearLayout;Ljava/util/List;)V

    return-void
.end method

.method private layoutButtonsInColumns(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;)V"
        }
    .end annotation

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 466
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_2b

    .line 467
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 470
    :cond_2b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_43

    .line 471
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    :goto_43
    move p2, v4

    .line 475
    :goto_44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_a1

    .line 476
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 477
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 478
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    .line 479
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 480
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v6, Lcom/gold/extension/shared/ui/Dim;->dp36:I

    const/4 v7, -0x1

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_75

    .line 485
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 487
    :cond_75
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 491
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 494
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-ge p2, v1, :cond_9e

    .line 495
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 496
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 499
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_9e
    add-int/lit8 p2, p2, 0x1

    goto :goto_44

    :cond_a1
    return-void
.end method

.method private layoutButtonsInRow(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 417
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 418
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 419
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 420
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    :goto_1a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 426
    invoke-direct {p0, p2, p3, v1}, Lcom/gold/extension/shared/ui/CustomDialog;->getButton(Ljava/util/List;Ljava/util/List;I)Landroid/widget/Button;

    move-result-object v2

    .line 427
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 430
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private layoutSingleButton(Landroid/widget/LinearLayout;Landroid/widget/Button;)V
    .registers 6

    .line 395
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/gold/extension/shared/ui/CustomDialog;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 396
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p0, 0x11

    .line 397
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 399
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_1b

    .line 400
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 402
    :cond_1b
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    sget v2, Lcom/gold/extension/shared/ui/Dim;->dp36:I

    invoke-direct {p0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 406
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private measureButtonWidth(Landroid/widget/Button;)I
    .registers 3

    .line 350
    invoke-direct {p0}, Lcom/gold/extension/shared/ui/CustomDialog;->buttonAreaWidth()I

    move-result p0

    const/high16 v0, -0x80000000

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    const/4 v0, 0x0

    .line 351
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 352
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method
