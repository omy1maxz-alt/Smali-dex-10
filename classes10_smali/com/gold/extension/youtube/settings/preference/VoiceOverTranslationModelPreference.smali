.class public Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;
.super Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;
.source "VoiceOverTranslationModelPreference.java"


# static fields
.field private static final CUSTOM_SENTINEL:Ljava/lang/String; = "custom"

.field private static final PRESET_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private editText:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$5SvwSw04r6UFTs5Pccyz7deDnfU()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$Fh8umK6casEl6pn8IZpShat5Z_8(Ljava/lang/String;[Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    .line 142
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 p1, 0x8

    if-eqz p0, :cond_d

    move v1, v0

    goto :goto_e

    :cond_d
    move v1, p1

    .line 143
    :goto_e
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p0, :cond_14

    move v0, p1

    .line 144
    :cond_14
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HZ4rRBBOQVgMBNMnAxh19RrXyCY(Landroid/widget/TextView;Ljava/lang/Float;)V
    .registers 2

    if-eqz p1, :cond_b

    .line 171
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->formatOpenRouterCostPerHundredHours(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    .line 172
    :cond_b
    const-string p1, ""

    .line 170
    :goto_d
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HdVWk_C_CjL71l4sEM0KsbBs6RA(Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->lambda$showDialog$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$XIACs3eYPGfEWPd-0R8FqgPEDx4([Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/Runnable;Landroid/os/Handler;[Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/Void;
    .registers 8

    .line 209
    invoke-static {p5}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->isPreset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p5

    goto :goto_a

    :cond_8
    const-string v0, "custom"

    :goto_a
    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 210
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 212
    aget-object p0, p2, v1

    if-eqz p0, :cond_17

    invoke-virtual {p3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    :cond_17
    invoke-static {p5}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->isPreset(Ljava/lang/String;)Z

    move-result p0

    const-string p1, ""

    if-nez p0, :cond_37

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_37

    .line 214
    aget-object p0, p4, v1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    new-instance p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda1;

    invoke-direct {p0, p5, p4}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;[Landroid/widget/TextView;)V

    aput-object p0, p2, v1

    const-wide/16 p1, 0x320

    .line 220
    invoke-virtual {p3, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3c

    .line 222
    :cond_37
    aget-object p0, p4, v1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YwW1JYqqsuP8sXVRq5Y-dQ4rJeM(Ljava/lang/String;[Landroid/widget/TextView;)V
    .registers 3

    .line 215
    new-instance v0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda0;-><init>([Landroid/widget/TextView;)V

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->fetchOpenRouterModelCost(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dePt-zlRyosp10k0YcUI6Qob3kA([Landroid/widget/TextView;Ljava/lang/Float;)V
    .registers 3

    const/4 v0, 0x0

    .line 216
    aget-object p0, p0, v0

    if-eqz p1, :cond_e

    .line 217
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->formatOpenRouterCostPerHundredHours(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    .line 218
    :cond_e
    const-string p1, ""

    .line 216
    :goto_10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hkScOZfCiw72rBG5YoYXj4J381Y(Ljava/util/List;)V
    .registers 2

    .line 123
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public static synthetic $r8$lambda$nwwu9r5-H3GGXqxxew5rlTmetXw(Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->lambda$showDialog$3([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oIQgfENZF00koNRQ2o1OtnCckgQ([Landroid/widget/TextView;Ljava/lang/Float;)V
    .registers 3

    const/4 v0, 0x0

    .line 199
    aget-object p0, p0, v0

    if-eqz p1, :cond_e

    .line 200
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->formatOpenRouterCostPerHundredHours(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    .line 201
    :cond_e
    const-string p1, ""

    .line 199
    :goto_10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 49
    const-string v0, "deepseek/deepseek-v4-flash"

    const-string v1, "google/gemma-4-26b-a4b-it"

    const-string v2, "mistralai/mistral-nemo"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/youtube/patches/DisableLayoutUpdatesPatch$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->PRESET_IDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->updateEntries()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->updateEntries()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->updateEntries()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->updateEntries()V

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

    .line 251
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 254
    const-string p1, "youtube_vot_openrouter_model_hint"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 255
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 p2, 0x41800000  # 16.0f

    .line 256
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 257
    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 259
    new-instance p2, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$1;

    invoke-direct {p2, p0, p4}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$1;-><init>(Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;Ljava/util/function/Function;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 268
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance p2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 p3, 0x41200000  # 10.0f

    .line 269
    invoke-static {p3}, Lcom/gold/extension/shared/ui/Dim;->roundedCorners(F)[F

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4, p4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 270
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getEditTextBackground()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    sget p2, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 272
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-object v0
.end method

.method private static isPreset(Ljava/lang/String;)Z
    .registers 3

    .line 78
    sget-object v0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->PRESET_IDS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showDialog$3([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 5

    const/4 p4, 0x0

    .line 178
    aput-object p2, p1, p4

    .line 179
    const-string p1, "custom"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 180
    sget-object p1, Lcom/gold/extension/youtube/settings/Settings;->VOT_OPENROUTER_MODEL:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object p2, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->editText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->isPreset(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1b

    const-string p1, ""

    :cond_1b
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->editText:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 183
    iget-object p1, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_34

    .line 185
    :cond_2a
    iget-object p1, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object p1, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, p4}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    :goto_34
    iget-object p0, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 189
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$showDialog$8()V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_1e

    .line 237
    :cond_15
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private updateEntries()V
    .registers 7

    .line 85
    const-string v0, "youtube_vot_openrouter_model_mistral_nemo"

    .line 86
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "youtube_vot_openrouter_model_deepseek_flash_v4"

    .line 87
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "youtube_vot_openrouter_model_gemma4_26b_a4b"

    .line 88
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "youtube_vot_openrouter_model_custom"

    .line 89
    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    .line 85
    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->PRESET_IDS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    const-string v1, "custom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-array v1, v5, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public showDialog(Landroid/os/Bundle;)V
    .registers 32
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    .line 98
    invoke-direct {v0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->updateEntries()V

    .line 100
    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 101
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->VOT_OPENROUTER_MODEL:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v2}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->isPreset(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    .line 104
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v5

    .line 105
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    const/16 v9, 0x99

    invoke-static {v9, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 106
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v7

    if-eqz v7, :cond_34

    sget v7, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->DRAWABLE_CHECKMARK_BOLD:I

    goto :goto_36

    :cond_34
    sget v7, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->DRAWABLE_CHECKMARK:I

    .line 107
    :goto_36
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 109
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 110
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 114
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    sget v15, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    iput v15, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 117
    invoke-virtual {v10, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v12

    .line 120
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    .line 121
    const-string v13, "custom"

    if-nez v3, :cond_68

    move-object/from16 v16, v13

    goto :goto_6a

    :cond_68
    move-object/from16 v16, v2

    :goto_6a
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v14

    .line 122
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move/from16 v17, v3

    .line 123
    new-instance v3, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda2;

    invoke-direct {v3, v11}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    move-object/from16 v23, v10

    move-object/from16 v18, v15

    const/4 v15, 0x1

    .line 125
    new-array v10, v15, [Landroid/widget/TextView;

    const/4 v15, 0x0

    const/16 v19, 0x0

    aput-object v19, v10, v15

    move/from16 v24, v4

    .line 127
    :goto_88
    array-length v4, v12

    if-ge v15, v4, :cond_15a

    .line 128
    aget-object v4, v18, v15

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move-object/from16 v22, v12

    .line 131
    sget v12, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->LAYOUT_MORPHE_CUSTOM_LIST_ITEM_CHECKED:I

    move-object/from16 v25, v13

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    move/from16 v20, v13

    .line 133
    sget v13, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_CHECK_ICON:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 134
    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    move/from16 v26, v7

    .line 136
    sget v7, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_CHECK_ICON_PLACEHOLDER:I

    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v27, v8

    .line 138
    aget-object v8, v14, v20

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v28, 0x8

    move/from16 v29, v8

    if-eqz v8, :cond_c8

    const/4 v8, 0x0

    goto :goto_ca

    :cond_c8
    move/from16 v8, v28

    .line 139
    :goto_ca
    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v29, :cond_d2

    move/from16 v8, v28

    goto :goto_d3

    :cond_d2
    const/4 v8, 0x0

    .line 140
    :goto_d3
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 141
    new-instance v8, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda3;

    invoke-direct {v8, v4, v14, v13, v7}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;[Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    sget v7, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_ITEM_TEXT:I

    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 148
    aget-object v8, v22, v15

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move/from16 v28, v5

    const/4 v5, 0x1

    .line 153
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    invoke-virtual {v13, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v29, v11

    const/4 v8, -0x2

    const/4 v11, -0x1

    invoke-direct {v5, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    move-object v5, v12

    check-cast v5, Landroid/widget/LinearLayout;

    .line 158
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 159
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    invoke-virtual {v13, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41400000  # 12.0f

    .line 164
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 165
    invoke-virtual {v13, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v5, v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    if-nez v21, :cond_13b

    .line 169
    new-instance v5, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda4;

    invoke-direct {v5, v7}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda4;-><init>(Landroid/widget/TextView;)V

    invoke-static {v4, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->fetchOpenRouterModelCost(Ljava/lang/String;Ljava/util/function/Consumer;)V

    const/16 v20, 0x0

    goto :goto_13f

    :cond_13b
    const/16 v20, 0x0

    .line 174
    aput-object v7, v10, v20

    .line 177
    :goto_13f
    new-instance v5, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, v14, v4, v3}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda5;-><init>(Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v22

    move-object/from16 v13, v25

    move/from16 v7, v26

    move-object/from16 v8, v27

    move/from16 v5, v28

    move-object/from16 v11, v29

    goto/16 :goto_88

    :cond_15a
    if-nez v17, :cond_16a

    .line 197
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16a

    .line 198
    new-instance v4, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda6;

    invoke-direct {v4, v10}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda6;-><init>([Landroid/widget/TextView;)V

    invoke-static {v2, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->fetchOpenRouterModelCost(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 205
    :cond_16a
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 206
    filled-new-array/range {v19 .. v19}, [Ljava/lang/Runnable;

    move-result-object v20

    .line 208
    new-instance v17, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v10

    move-object/from16 v18, v14

    invoke-direct/range {v17 .. v22}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;-><init>([Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/Runnable;Landroid/os/Handler;[Landroid/widget/TextView;)V

    move-object/from16 v4, v17

    move/from16 v3, v24

    .line 227
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->createEditText(Landroid/content/Context;Ljava/lang/String;ZLjava/util/function/Function;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, v0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->editText:Landroid/widget/EditText;

    move-object/from16 v10, v23

    .line 228
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1a2

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a4

    :cond_1a2
    const-string v2, ""

    :goto_1a4
    new-instance v5, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda8;-><init>(Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;)V

    new-instance v6, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda9;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v1

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 230
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object v0

    .line 243
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v11, -0x1

    invoke-direct {v1, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 245
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout;

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v10, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
