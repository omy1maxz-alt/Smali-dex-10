.class public final Lcom/gold/extension/youtube/shared/ShortsPlayerState;
.super Ljava/lang/Object;
.source "ShortsPlayerState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;

.field private static volatile isOpen:Z

.field private static final onChange:Lcom/gold/extension/youtube/shared/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/youtube/shared/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->Companion:Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;

    .line 27
    new-instance v0, Lcom/gold/extension/youtube/shared/Event;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/Event;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->onChange:Lcom/gold/extension/youtube/shared/Event;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getOnChange$cp()Lcom/gold/extension/youtube/shared/Event;
    .registers 1

    .line 8
    sget-object v0, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->onChange:Lcom/gold/extension/youtube/shared/Event;

    return-object v0
.end method

.method public static final synthetic access$isOpen$cp()Z
    .registers 1

    .line 8
    sget-boolean v0, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->isOpen:Z

    return v0
.end method

.method public static final synthetic access$setOpen$cp(Z)V
    .registers 1

    .line 8
    sput-boolean p0, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->isOpen:Z

    return-void
.end method

.method public static final getOnChange()Lcom/gold/extension/youtube/shared/Event;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gold/extension/youtube/shared/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->Companion:Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object v0

    return-object v0
.end method

.method public static final isOpen()Z
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->Companion:Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;->isOpen()Z

    move-result v0

    return v0
.end method

.method public static final setOpen(Z)V
    .registers 2

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->Companion:Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/shared/ShortsPlayerState$Companion;->setOpen(Z)V

    return-void
.end method
