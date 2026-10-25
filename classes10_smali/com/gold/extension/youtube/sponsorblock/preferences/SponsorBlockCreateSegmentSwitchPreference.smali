.class public Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SponsorBlockCreateSegmentSwitchPreference.java"


# static fields
.field private static final GUIDELINES_URI:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$EQvgJtp3V-2xMSz2vukcvpG0Vq8(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;->lambda$installChangeGate$0(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QAQC3AlsLeRFACSIO0KTx-p1aRk()Ljava/lang/String;
    .registers 1

    .line 83
    const-string v0, "Show guidelines popup failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$WYy0WV1cHveC02KnI61flblFFwk()Ljava/lang/String;
    .registers 1

    .line 93
    const-string v0, "Open guidelines failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$mYzcisL5ZpOM2ruQb9OBPvOpnMU(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;->openGuidelines()V

    return-void
.end method

.method public static synthetic $r8$lambda$vJ63lvvjpS9ZVZ3JNnELRNTb8bc(Landroid/content/DialogInterface;)V
    .registers 2

    .line 80
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_SEEN_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhto06Jh-J8Y1YOqBbm7qSreDqM()V
    .registers 0

    .line 0
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-string v0, "https://wiki.sponsor.ajay.app/w/Guidelines"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;->GUIDELINES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;->installChangeGate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;->installChangeGate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;->installChangeGate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;->installChangeGate()V

    return-void
.end method

.method private installChangeGate()V
    .registers 2

    .line 56
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;)V

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private synthetic lambda$installChangeGate$0(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 58
    sget-object p2, Lcom/gold/extension/youtube/settings/Settings;->SB_SEEN_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p2}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1b

    .line 59
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;->showGuidelinesPopup(Landroid/content/Context;)V

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method private openGuidelines()V
    .registers 4

    .line 89
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;->GUIDELINES_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 93
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private showGuidelinesPopup(Landroid/content/Context;)V
    .registers 13

    .line 67
    :try_start_0
    const-string v0, "youtube_sb_guidelines_popup_title"

    .line 69
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "youtube_sb_guidelines_popup_content"

    .line 70
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "youtube_sb_guidelines_popup_open"

    .line 72
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference;)V

    const-string p0, "youtube_sb_guidelines_popup_already_read"

    .line 75
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference$$ExternalSyntheticLambda3;

    invoke-direct {v9}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference$$ExternalSyntheticLambda3;-><init>()V

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    .line 67
    invoke-static/range {v1 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 79
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 80
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception v0

    move-object p0, v0

    .line 83
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockCreateSegmentSwitchPreference$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
