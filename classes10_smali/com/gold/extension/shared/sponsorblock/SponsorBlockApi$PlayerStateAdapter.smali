.class public interface abstract Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;
.super Ljava/lang/Object;
.source "SponsorBlockApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerStateAdapter"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 187
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter$1;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter$1;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;->DEFAULT:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    return-void
.end method


# virtual methods
.method public abstract isInlineMinimal()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPictureInPicture()Z
.end method

.method public abstract isPlayerTypeNoneOrHidden()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isShortsOpen()Z
.end method

.method public abstract playerControlsVisible()Z
.end method
