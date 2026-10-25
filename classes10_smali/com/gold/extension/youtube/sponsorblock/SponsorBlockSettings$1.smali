.class Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$1;
.super Ljava/lang/Object;
.source "SponsorBlockSettings.java"

# interfaces
.implements Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public settingsExported(Landroid/app/Activity;)V
    .registers 2
    .param p1  # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-static {p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings;->-$$Nest$smshowExportWarningIfNeeded(Landroid/app/Activity;)V

    return-void
.end method

.method public settingsImported(Landroid/app/Activity;)V
    .registers 2
    .param p1  # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->loadAllCategoriesFromSettings()V

    return-void
.end method
