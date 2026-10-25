.class public interface abstract Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;
.super Ljava/lang/Object;
.source "SponsorBlockApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UiBridge"
.end annotation


# static fields
.field public static final NO_OP:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 228
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge$1;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge$1;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->NO_OP:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    return-void
.end method


# virtual methods
.method public abstract clearUnsubmittedSegmentTimes()V
.end method

.method public abstract hideAll()V
.end method

.method public abstract hideSkipHighlightButton()V
.end method

.method public abstract hideSkipSegmentButton()V
.end method

.method public abstract notifyNewSegmentPreviewed()V
.end method

.method public abstract overlayContext()Landroid/content/Context;
.end method

.method public abstract setSkipSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
.end method

.method public abstract showErrorDialog(Ljava/lang/String;)V
.end method

.method public abstract showSkipHighlightButton(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
.end method

.method public abstract showSkipSegmentButton(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
.end method
