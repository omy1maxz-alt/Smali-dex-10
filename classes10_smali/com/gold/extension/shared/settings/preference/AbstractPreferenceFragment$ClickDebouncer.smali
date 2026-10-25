.class Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;
.super Ljava/lang/Object;
.source "AbstractPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickDebouncer"
.end annotation


# static fields
.field private static final FAST_CLICK_MS:J = 0x12cL


# instance fields
.field private lastPosition:I

.field private lastTimeMs:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;->lastPosition:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;-><init>()V

    return-void
.end method


# virtual methods
.method public isFastRepeat(I)Z
    .registers 8

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 94
    iget v2, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;->lastPosition:I

    if-ne p1, v2, :cond_14

    iget-wide v2, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;->lastTimeMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_14

    const/4 p0, 0x1

    return p0

    .line 97
    :cond_14
    iput p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;->lastPosition:I

    .line 98
    iput-wide v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$ClickDebouncer;->lastTimeMs:J

    const/4 p0, 0x0

    return p0
.end method
