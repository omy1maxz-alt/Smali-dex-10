.class public final Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;
.super Ljava/lang/Object;
.source "VotBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;
    }
.end annotation


# static fields
.field private static final DRAWABLE_CHEVRON_RIGHT:I

.field private static final DRAWABLE_CHEVRON_RIGHT_BOLD:I

.field private static final DRAWABLE_SPEAKER:I

.field private static final DRAWABLE_SPEAKER_BOLD:I


# direct methods
.method public static synthetic $r8$lambda$2C0ZfnHVy7Dxao0PAld3YvOhOGc(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 2

    .line 98
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3ejkXmiAGU3X-O34Nc_KdfCc_XI(Ljava/lang/String;Landroid/view/View;)V
    .registers 2

    .line 446
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->testSpeak(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$82vYIhOeXam0ycliJWMwA4YO-zI(ZLandroid/content/Context;Ljava/lang/String;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Landroid/view/View;)V
    .registers 15

    if-eqz p0, :cond_36

    .line 292
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->VOT_OPENROUTER_API_KEY:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_36

    .line 293
    const-string p0, "youtube_vot_openrouter_not_configured_title"

    .line 294
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "youtube_vot_openrouter_not_configured_message"

    .line 295
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda11;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 293
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    .line 298
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_36
    move-object v0, p1

    .line 301
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_SERVICE:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {p0, p2}, Lcom/gold/extension/shared/settings/StringSetting;->save(Ljava/lang/Object;)V

    .line 302
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->reloadTranscript()V

    .line 303
    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->show(Landroid/content/Context;)V

    .line 304
    invoke-virtual {p3}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$BqvZhStw5EDbMJ2a2fUV44g5Z1M(Landroid/widget/LinearLayout;)V
    .registers 3

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "youtube_vot_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_SERVICE:Lcom/gold/extension/shared/settings/StringSetting;

    .line 114
    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EdMm5ubYgjOlLKoEyeEcES_1TKw(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .registers 2

    .line 572
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->show(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G1YY-ulwlnbBDM7aYY51rKfjuvM(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Landroid/view/View;)V
    .registers 6

    const/4 p5, 0x0

    .line 537
    aget-object p4, p4, p5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->showLanguagePicker(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G_ffLCS_EsrzVXB_d8R4CfR3fac(Landroid/content/Context;[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x0

    .line 115
    aget-object p1, p1, p2

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->showTranslationServicePicker(Landroid/content/Context;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I5HogM6Tozg0EeXYHsBtN5Hobcc(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .registers 2

    .line 312
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->show(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ogm8hrjCJAU0FUDArEzsLzCJErw(Landroid/content/Context;[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x0

    .line 109
    aget-object p1, p1, p2

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->showEnginePicker(Landroid/content/Context;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oha74i9XDzeLCl6_AJhfbFwiaKQ(ZLjava/lang/String;Landroid/content/Context;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Landroid/view/View;)V
    .registers 5

    if-eqz p0, :cond_a

    .line 451
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->VOT_USE_NATIVE_TTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    goto :goto_16

    .line 453
    :cond_a
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->VOT_USE_NATIVE_TTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p4}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    .line 454
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->VOT_TTS_VOICE_TYPE:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/StringSetting;->save(Ljava/lang/Object;)V

    .line 456
    :goto_16
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resetPlaybackState()V

    .line 457
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->interruptSpeech()V

    .line 458
    invoke-static {p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->show(Landroid/content/Context;)V

    .line 459
    invoke-virtual {p3}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$aHdq7DLbrMi8qNYrvH4WjI3qjIM(Landroid/widget/TextView;Ljava/lang/Float;)V
    .registers 2

    if-eqz p1, :cond_b

    .line 287
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->formatOpenRouterCostPerHundredHours(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    .line 288
    :cond_b
    const-string p1, ""

    .line 286
    :goto_d
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fyxudgZcdzhowdpu5nQXXsnTOEU(I)V
    .registers 2

    .line 146
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->save(Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->updatePlaybackVolume()V

    return-void
.end method

.method public static synthetic $r8$lambda$iFxpOOYgl5-91YiI8z7PZF7KQi0()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$ke59ypzc4M_sRiANqTn2IW6te1k(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .registers 2

    .line 407
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->show(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oOHH0FpkMsdsDuAOF0Fkl-d4lAw([Ljava/lang/String;Landroid/content/Context;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    .line 563
    sget-object p3, Lcom/gold/extension/youtube/settings/Settings;->VOT_CAPTION_LANGUAGE:Lcom/gold/extension/shared/settings/StringSetting;

    aget-object p0, p0, p5

    invoke-virtual {p3, p0}, Lcom/gold/extension/shared/settings/StringSetting;->save(Ljava/lang/Object;)V

    .line 564
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->reloadTranscript()V

    .line 565
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->preloadTestVoices()V

    .line 566
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->show(Landroid/content/Context;)V

    .line 567
    invoke-virtual {p2}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$vH7d0wSpmB1UoOe5wnn1XHX6pIQ(I)V
    .registers 2

    .line 138
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ORIGINAL_AUDIO_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->save(Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->updateOriginalAudioMultiplier()V

    return-void
.end method

.method public static synthetic $r8$lambda$wLLPOl-d6zK7k73M-Ppgd2yLQSA(Landroid/widget/LinearLayout;)V
    .registers 1

    .line 108
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->refreshEngineRow(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 70
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "yt_outline_chevron_right_black_18"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->DRAWABLE_CHEVRON_RIGHT:I

    .line 72
    const-string v1, "yt_outline_experimental_chevron_right_vd_theme_18"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->DRAWABLE_CHEVRON_RIGHT_BOLD:I

    .line 74
    const-string v1, "yt_outline_speaker_vd_theme_24"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->DRAWABLE_SPEAKER:I

    .line 76
    const-string v1, "yt_outline_experimental_speaker_vd_theme_24"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->DRAWABLE_SPEAKER_BOLD:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addVoiceRow(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIIILcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 15

    .line 417
    sget v0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->LAYOUT_MORPHE_CUSTOM_LIST_ITEM_CHECKED:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 419
    sget v0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_CHECK_ICON:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 420
    invoke-virtual {v0, p9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    invoke-virtual {v0, p7}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 422
    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    const/16 p9, 0x8

    if-eqz p6, :cond_1f

    move v2, v1

    goto :goto_20

    :cond_1f
    move v2, p9

    .line 423
    :goto_20
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    sget v0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_CHECK_ICON_PLACEHOLDER:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p6, :cond_2c

    goto :goto_2d

    :cond_2c
    move p9, v1

    .line 425
    :goto_2d
    invoke-virtual {v0, p9}, Landroid/view/View;->setVisibility(I)V

    .line 426
    sget p6, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_ITEM_TEXT:I

    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/TextView;

    .line 427
    invoke-virtual {p6, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p9, -0x2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p4, v1, p9, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p6, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    new-instance p4, Landroid/widget/FrameLayout;

    invoke-direct {p4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 431
    new-instance p6, Landroid/widget/LinearLayout$LayoutParams;

    sget p9, Lcom/gold/extension/shared/ui/Dim;->dp40:I

    invoke-direct {p6, p9, p9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 432
    sget p9, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {p6, p9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 433
    invoke-virtual {p4, p6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    new-instance p6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 p9, 0x1

    .line 436
    invoke-virtual {p6, p9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 437
    invoke-static {p7}, Landroid/graphics/Color;->red(I)I

    move-result p9

    invoke-static {p7}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p7}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v2, p9, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p9

    invoke-virtual {p6, p9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 438
    new-instance p9, Landroid/graphics/drawable/RippleDrawable;

    .line 439
    invoke-static {p8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p8

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-direct {p9, p8, p6, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 438
    invoke-virtual {p4, p9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 441
    new-instance p6, Landroid/widget/ImageView;

    invoke-direct {p6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 442
    invoke-virtual {p6, p10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 443
    new-instance p8, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->secondaryColor(I)I

    move-result p7

    sget-object p9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p8, p7, p9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p6, p8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 444
    new-instance p7, Landroid/widget/FrameLayout$LayoutParams;

    sget p8, Lcom/gold/extension/shared/ui/Dim;->dp24:I

    const/16 p9, 0x11

    invoke-direct {p7, p8, p8, p9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p6, p7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    invoke-virtual {p4, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 446
    new-instance p6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {p6, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    move-object p6, p1

    check-cast p6, Landroid/widget/LinearLayout;

    invoke-virtual {p6, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 449
    new-instance p4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {p4, p5, p3, p0, p11}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda17;-><init>(ZLjava/lang/String;Landroid/content/Context;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static getLangDisplayName(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 578
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_13

    .line 579
    aget-object v3, p2, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    aget-object p0, p1, v2

    return-object p0

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 581
    :cond_13
    aget-object p0, p1, v1

    return-object p0
.end method

.method private static makeDivider(Landroid/content/Context;I)Landroid/view/View;
    .registers 5

    .line 599
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 601
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v2, 0x1e

    .line 600
    invoke-static {v2, p0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 602
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x1

    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp1:I

    invoke-direct {p0, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 604
    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp4:I

    invoke-virtual {p0, p1, v1, p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 605
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static makeLanguageRow(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)Landroid/widget/LinearLayout;
    .registers 15

    .line 506
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 507
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 508
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 509
    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp48:I

    invoke-virtual {v6, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 510
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 514
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41800000  # 16.0f

    .line 516
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 517
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 518
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct {v7, v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 522
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 523
    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->VOT_CAPTION_LANGUAGE:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3, p4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->getLangDisplayName(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000  # 14.0f

    .line 525
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 526
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 530
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 531
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v3

    if-eqz v3, :cond_72

    sget v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->DRAWABLE_CHEVRON_RIGHT_BOLD:I

    goto :goto_74

    :cond_72
    sget v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->DRAWABLE_CHEVRON_RIGHT:I

    :goto_74
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 532
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->secondaryColor(I)I

    move-result v0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 533
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 537
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v6
.end method

.method private static makeSectionHeader(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .registers 12

    .line 466
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 467
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 468
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 469
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 471
    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 472
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/16 v7, 0x1e

    invoke-static {v7, v2, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 476
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 477
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 478
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcom/gold/extension/shared/ui/Dim;->dp1:I

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct {v6, v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 479
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 480
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_84

    .line 484
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 485
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41300000  # 11.0f

    .line 486
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 487
    invoke-static {p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->secondaryColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 488
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 492
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 493
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 494
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 495
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 496
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_84
    return-object v0
.end method

.method private static makeSliderRow(Landroid/content/Context;Ljava/lang/String;Lcom/gold/extension/shared/settings/IntegerSetting;ILcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;)Landroid/widget/LinearLayout;
    .registers 13

    .line 611
    invoke-static {p2}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->configFor(Lcom/gold/extension/shared/settings/IntegerSetting;)Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 613
    invoke-virtual {p2}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 615
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 616
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 617
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 619
    sget v5, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 620
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 623
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41800000  # 16.0f

    .line 625
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 626
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 627
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 629
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 630
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 631
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 632
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 634
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 635
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    new-instance v2, Landroid/widget/SeekBar;

    invoke-direct {v2, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 638
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->max()I

    move-result v3

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->min()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->step()I

    move-result v5

    div-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 639
    invoke-static {v0, p2}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->valueToProgress(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 640
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, p3, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 641
    invoke-virtual {v2}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v5, p3, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 642
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 645
    invoke-static {p2, v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->formatLabel(ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41600000  # 14.0f

    .line 647
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 648
    sget p0, Lcom/gold/extension/shared/ui/Dim;->dp40:I

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setMinWidth(I)V

    const p0, 0x800005

    .line 649
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setGravity(I)V

    .line 650
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 655
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$1;

    invoke-direct {p0, v0, v3, p4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$1;-><init>(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;Landroid/widget/TextView;Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;)V

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-object v1

    .line 612
    :cond_ca
    const-string p0, "No SeekBarConfig registered for "

    iget-object p1, p2, Lcom/gold/extension/shared/settings/IntegerSetting;->key:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/protobuf/ArrayDecoders$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static makeTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 5

    .line 585
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 586
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p0, 0x41900000  # 18.0f

    .line 587
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 588
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 589
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x1

    .line 590
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    .line 591
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x1

    const/4 p2, -0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 593
    sget p1, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    sget p2, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 594
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static makeValueRow(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/LinearLayout;
    .registers 8

    .line 165
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 168
    sget v2, Lcom/gold/extension/shared/ui/Dim;->dp48:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 169
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41800000  # 16.0f

    .line 175
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 177
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {p2, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 181
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000  # 14.0f

    .line 183
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 184
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result p0

    if-eqz p0, :cond_65

    sget p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->DRAWABLE_CHEVRON_RIGHT_BOLD:I

    goto :goto_67

    :cond_65
    sget p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->DRAWABLE_CHEVRON_RIGHT:I

    :goto_67
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->secondaryColor(I)I

    move-result p1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 191
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 195
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static refreshEngineRow(Landroid/widget/LinearLayout;)V
    .registers 8

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 201
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v1

    .line 203
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->VOT_TTS_VOICE_TYPE:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->getVoice(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-result-object v2

    .line 206
    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->VOT_USE_NATIVE_TTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "youtube_vot_tts_system"

    const/4 v5, 0x0

    if-nez v3, :cond_59

    if-nez v2, :cond_2c

    invoke-static {v1, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2c

    goto :goto_59

    :cond_2c
    if-eqz v2, :cond_44

    .line 208
    iget-object v3, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->languageTag:Ljava/lang/String;

    invoke-static {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->getIso639(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    iget-boolean v3, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMultilingual:Z

    if-eqz v3, :cond_44

    .line 209
    :cond_3e
    iget-object v2, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->dialogDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_60

    .line 211
    :cond_44
    invoke-static {v1, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->getVoice(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 213
    iget-object v2, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->dialogDisplayName:Ljava/lang/String;

    goto :goto_55

    :cond_51
    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_55
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_60

    .line 207
    :cond_59
    :goto_59
    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_60
    invoke-static {v1, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    const/4 v0, 0x1

    goto :goto_69

    :cond_68
    const/4 v0, 0x0

    :goto_69
    if-eqz v0, :cond_6e

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_71

    :cond_6e
    const v1, 0x3ecccccd  # 0.4f

    .line 217
    :goto_71
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 218
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private static secondaryColor(I)I
    .registers 4

    .line 672
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    const/16 v2, 0x99

    invoke-static {v2, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static show(Landroid/content/Context;)V
    .registers 14

    .line 80
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->preloadTestVoices()V

    .line 81
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ensureTts()V

    .line 84
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->getDialogBackgroundColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createMainLayout(Landroid/content/Context;Ljava/lang/Integer;)Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v3

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/gold/extension/shared/ResourceType;->ARRAY:Lcom/gold/extension/shared/ResourceType;

    const-string v4, "youtube_vot_caption_language_entries"

    .line 89
    invoke-static {v2, v4}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v4

    .line 88
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v5, "youtube_vot_caption_language_entry_values"

    .line 91
    invoke-static {v2, v5}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v2

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 93
    array-length v1, v4

    const/4 v2, 0x1

    if-le v1, v2, :cond_79

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    .line 95
    :goto_3e
    array-length v7, v4

    if-ge v6, v7, :cond_50

    .line 96
    new-instance v7, Landroid/util/Pair;

    aget-object v8, v4, v6

    aget-object v9, v5, v6

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 98
    :cond_50
    new-instance v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    move v6, v2

    .line 99
    :goto_59
    array-length v7, v4

    if-ge v6, v7, :cond_79

    add-int/lit8 v7, v6, -0x1

    .line 100
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v6

    .line 101
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    .line 105
    :cond_79
    new-array v6, v2, [Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    const/4 v1, 0x0

    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 107
    const-string v1, "youtube_vot_tts_voice_type"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeValueRow(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 108
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda1;-><init>(Landroid/widget/LinearLayout;)V

    .line 109
    new-instance v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0, v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 112
    const-string v1, "youtube_vot_translation_service_title"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeValueRow(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 113
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v1, v9}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda3;-><init>(Landroid/widget/LinearLayout;)V

    .line 115
    new-instance v10, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0, v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 118
    const-string v1, "youtube_vot_enabled_title"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    sget v11, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    sget v12, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v10, v11, v12, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    new-instance v10, Landroid/widget/ScrollView;

    invoke-direct {v10, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    invoke-virtual {v12, v11, v7, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 126
    invoke-virtual {v10, v12}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 128
    const-string v1, "youtube_vot_caption_language_title"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeLanguageRow(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v12, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    invoke-static {v1, v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeDivider(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v12, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    const-string p0, "youtube_vot_original_audio_volume_title"

    .line 134
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->VOT_ORIGINAL_AUDIO_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    new-instance v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda5;-><init>()V

    .line 133
    invoke-static {v1, p0, v2, v3, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeSliderRow(Landroid/content/Context;Ljava/lang/String;Lcom/gold/extension/shared/settings/IntegerSetting;ILcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v12, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 141
    const-string p0, "youtube_vot_translation_volume_title"

    .line 142
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    new-instance v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda6;-><init>()V

    .line 141
    invoke-static {v1, p0, v2, v3, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeSliderRow(Landroid/content/Context;Ljava/lang/String;Lcom/gold/extension/shared/settings/IntegerSetting;ILcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v12, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    const-string p0, "youtube_vot_max_speech_rate_title"

    .line 150
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->VOT_MAX_SPEECH_RATE:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 153
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v4, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;)V

    .line 149
    invoke-static {v1, p0, v2, v3, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeSliderRow(Landroid/content/Context;Ljava/lang/String;Lcom/gold/extension/shared/settings/IntegerSetting;ILcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v12, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 156
    sget p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->fadeInDuration:I

    .line 157
    invoke-static {v1, v0, p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createSlideDialog(Landroid/content/Context;Landroid/view/View;I)Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    move-result-object p0

    .line 158
    aput-object p0, v6, v7

    .line 159
    invoke-static {p0}, Lcom/gold/extension/youtube/shared/PipDismissHelper;->dismissOnPip(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    .line 160
    invoke-virtual {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->show()V

    return-void
.end method

.method private static showEnginePicker(Landroid/content/Context;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 27

    move-object/from16 v0, p0

    .line 318
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->getVoicesForLang(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 321
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 322
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_3a

    .line 325
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    .line 326
    iget-boolean v4, v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMultilingual:Z

    if-eqz v4, :cond_36

    iget-object v4, v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->languageTag:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 327
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 329
    :cond_36
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 334
    :cond_3a
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 335
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 337
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->VOT_TTS_VOICE_TYPE:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v2

    .line 338
    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->VOT_USE_NATIVE_TTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 339
    const-string v1, "system"

    :goto_54
    move-object v6, v1

    goto :goto_5b

    .line 340
    :cond_56
    invoke-static {v1, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_54

    .line 342
    :goto_5b
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v7

    .line 345
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->getDialogBackgroundColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createMainLayout(Landroid/content/Context;Ljava/lang/Integer;)Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;

    move-result-object v14

    .line 346
    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    const/4 v15, 0x0

    invoke-virtual {v14, v1, v15, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 347
    const-string v1, "youtube_vot_tts_voice_type"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 349
    sget v1, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->fadeInDuration:I

    .line 350
    invoke-static {v0, v14, v1}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createSlideDialog(Landroid/content/Context;Landroid/view/View;I)Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    move-result-object v11

    .line 352
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 354
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 355
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object v4, v1

    .line 357
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 358
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v5

    if-eqz v5, :cond_a4

    sget v5, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->DRAWABLE_CHECKMARK_BOLD:I

    :goto_a2
    move v9, v5

    goto :goto_a7

    :cond_a4
    sget v5, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->DRAWABLE_CHECKMARK:I

    goto :goto_a2

    .line 359
    :goto_a7
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v5

    if-eqz v5, :cond_b1

    sget v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->DRAWABLE_SPEAKER_BOLD:I

    :goto_af
    move v10, v5

    goto :goto_b4

    :cond_b1
    sget v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->DRAWABLE_SPEAKER:I

    goto :goto_af

    .line 360
    :goto_b4
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/16 v15, 0x3c

    invoke-static {v15, v5, v8, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    .line 364
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_cd
    if-ge v0, v3, :cond_e7

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    add-int/lit8 v0, v0, 0x1

    move/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    .line 365
    iget-boolean v0, v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMale:Z

    if-eqz v0, :cond_e2

    add-int/lit8 v5, v5, 0x1

    goto :goto_e4

    :cond_e2
    add-int/lit8 v15, v15, 0x1

    :goto_e4
    move/from16 v0, v19

    goto :goto_cd

    .line 371
    :cond_e7
    const-string v0, "youtube_vot_tts_system"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v3, v5

    const/4 v5, 0x1

    move/from16 v18, v3

    const-string v3, "system"

    move-object/from16 v20, v4

    move-object/from16 v16, v13

    move-object/from16 v19, v14

    move/from16 v13, v18

    const/4 v14, 0x1

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v11}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->addVoiceRow(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIIILcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    .line 374
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_109
    if-ge v14, v3, :cond_16e

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v22, v1

    move-object/from16 v1, v21

    check-cast v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move/from16 v21, v3

    if-nez v4, :cond_135

    .line 375
    iget-boolean v3, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMale:Z

    if-eqz v3, :cond_135

    const/4 v3, 0x1

    if-le v13, v3, :cond_135

    .line 376
    const-string v3, "youtube_vot_voice_gender_male"

    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeSectionHeader(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move/from16 v23, v5

    const/4 v4, 0x1

    const/16 v18, 0x1

    goto :goto_158

    :cond_135
    if-nez v5, :cond_152

    .line 378
    iget-boolean v3, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMale:Z

    if-nez v3, :cond_152

    const/4 v3, 0x1

    if-le v15, v3, :cond_153

    .line 379
    const-string v5, "youtube_vot_voice_gender_female"

    invoke-static {v5}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeSectionHeader(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move/from16 v23, v3

    move/from16 v18, v4

    move/from16 v4, v23

    goto :goto_158

    :cond_152
    const/4 v3, 0x1

    :cond_153
    move/from16 v18, v4

    move/from16 v23, v5

    move v4, v3

    .line 382
    :goto_158
    iget-object v3, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    iget-object v1, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->dialogDisplayName:Ljava/lang/String;

    const/4 v5, 0x0

    move/from16 v24, v4

    move-object v4, v1

    move-object/from16 v1, v22

    move/from16 v22, v24

    invoke-static/range {v0 .. v11}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->addVoiceRow(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIIILcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    move/from16 v4, v18

    move/from16 v3, v21

    move/from16 v5, v23

    goto :goto_109

    :cond_16e
    const/16 v22, 0x1

    .line 386
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c1

    .line 390
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v3, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_17e
    if-ge v3, v12, :cond_1c1

    move-object/from16 v13, v16

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v14, v3, 0x1

    check-cast v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    if-nez v15, :cond_1a0

    .line 391
    iget-boolean v3, v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMale:Z

    if-eqz v3, :cond_1a0

    .line 392
    const-string v3, "youtube_vot_voice_gender_male_multilingual"

    .line 393
    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-static {v0, v3, v7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeSectionHeader(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move/from16 v15, v22

    goto :goto_1b5

    :cond_1a0
    if-nez v17, :cond_1b5

    .line 395
    iget-boolean v3, v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMale:Z

    if-nez v3, :cond_1b5

    .line 396
    const-string v3, "youtube_vot_voice_gender_female_multilingual"

    .line 397
    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 396
    invoke-static {v0, v3, v7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeSectionHeader(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move/from16 v17, v22

    .line 400
    :cond_1b5
    :goto_1b5
    iget-object v3, v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    iget-object v4, v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->dialogDisplayName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v11}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->addVoiceRow(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIIILcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    move-object/from16 v16, v13

    move v3, v14

    goto :goto_17e

    :cond_1c1
    move-object/from16 v1, v19

    move-object/from16 v4, v20

    .line 405
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 406
    invoke-virtual/range {p1 .. p1}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->dismiss()V

    .line 407
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda15;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 408
    invoke-static {v11}, Lcom/gold/extension/youtube/shared/PipDismissHelper;->dismissOnPip(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    .line 409
    invoke-virtual {v11}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->show()V

    return-void
.end method

.method private static showLanguagePicker(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 13

    .line 546
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->getDialogBackgroundColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createMainLayout(Landroid/content/Context;Ljava/lang/Integer;)Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;

    move-result-object v0

    .line 547
    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 548
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v1

    invoke-static {p0, p1, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 550
    new-instance p1, Landroid/widget/ListView;

    invoke-direct {p1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 551
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 553
    new-instance v2, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;

    sget v4, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->LAYOUT_MORPHE_CUSTOM_LIST_ITEM_CHECKED:I

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->VOT_CAPTION_LANGUAGE:Lcom/gold/extension/shared/settings/StringSetting;

    .line 556
    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference$ListPreferenceArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 559
    sget p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->fadeInDuration:I

    .line 560
    invoke-static {v3, v0, p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createSlideDialog(Landroid/content/Context;Landroid/view/View;I)Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    move-result-object p0

    .line 562
    new-instance p2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {p2, v6, v3, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda13;-><init>([Ljava/lang/String;Landroid/content/Context;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 570
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 571
    invoke-virtual {p4}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->dismiss()V

    .line 572
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {p1, v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda14;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 573
    invoke-static {p0}, Lcom/gold/extension/youtube/shared/PipDismissHelper;->dismissOnPip(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    .line 574
    invoke-virtual {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->show()V

    return-void
.end method

.method private static showTranslationServicePicker(Landroid/content/Context;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 22

    move-object/from16 v0, p0

    .line 222
    const-string v1, "youtube_vot_service_google"

    .line 223
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "youtube_vot_service_mymemory"

    .line 224
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "youtube_vot_service_openrouter"

    .line 225
    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 227
    const-string v2, "google"

    const-string v3, "mymemory"

    const-string v4, "openrouter"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->getDialogBackgroundColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createMainLayout(Landroid/content/Context;Ljava/lang/Integer;)Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;

    move-result-object v3

    .line 231
    sget v5, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 232
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v5

    .line 233
    const-string v7, "youtube_vot_translation_service_title"

    invoke-static {v7}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->makeTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 236
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v8

    if-eqz v8, :cond_52

    sget v8, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->DRAWABLE_CHECKMARK_BOLD:I

    goto :goto_54

    :cond_52
    sget v8, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->DRAWABLE_CHECKMARK:I

    .line 237
    :goto_54
    sget-object v9, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_SERVICE:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v9}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v9

    .line 239
    sget v10, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->fadeInDuration:I

    .line 240
    invoke-static {v0, v3, v10}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createSlideDialog(Landroid/content/Context;Landroid/view/View;I)Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    move-result-object v10

    .line 242
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    .line 243
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v13, v6

    :goto_6a
    const/4 v14, 0x3

    if-ge v13, v14, :cond_12d

    .line 246
    aget-object v14, v2, v13

    .line 247
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 249
    sget v12, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->LAYOUT_MORPHE_CUSTOM_LIST_ITEM_CHECKED:I

    invoke-virtual {v7, v12, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 251
    sget v6, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_CHECK_ICON:I

    invoke-virtual {v12, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 252
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 254
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x8

    move-object/from16 v18, v1

    if-eqz v16, :cond_93

    const/4 v1, 0x0

    goto :goto_95

    :cond_93
    move/from16 v1, v17

    .line 255
    :goto_95
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    sget v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_CHECK_ICON_PLACEHOLDER:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v16, :cond_a3

    move/from16 v6, v17

    goto :goto_a4

    :cond_a3
    const/4 v6, 0x0

    .line 257
    :goto_a4
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 259
    sget v1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->ID_MORPHE_ITEM_TEXT:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 260
    aget-object v6, v18, v13

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v15, :cond_10e

    .line 264
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v2

    .line 266
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v17, v4

    const/4 v4, 0x1

    .line 267
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 268
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    move/from16 v19, v5

    const/4 v5, -0x2

    invoke-direct {v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    move-object v4, v12

    check-cast v4, Landroid/widget/LinearLayout;

    .line 274
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 275
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 276
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 278
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-static/range {v19 .. v19}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->secondaryColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41400000  # 12.0f

    .line 280
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 281
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 285
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->VOT_OPENROUTER_MODEL:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda8;-><init>(Landroid/widget/TextView;)V

    invoke-static {v2, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->fetchOpenRouterModelCost(Ljava/lang/String;Ljava/util/function/Consumer;)V

    goto :goto_114

    :cond_10e
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v19, v5

    .line 291
    :goto_114
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v1, v15, v0, v14, v10}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda9;-><init>(ZLandroid/content/Context;Ljava/lang/String;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    move-object/from16 v1, v18

    move/from16 v5, v19

    const/4 v6, 0x0

    const/4 v12, 0x1

    goto/16 :goto_6a

    .line 310
    :cond_12d
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->dismiss()V

    .line 312
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 313
    invoke-static {v10}, Lcom/gold/extension/youtube/shared/PipDismissHelper;->dismissOnPip(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    .line 314
    invoke-virtual {v10}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->show()V

    return-void
.end method
