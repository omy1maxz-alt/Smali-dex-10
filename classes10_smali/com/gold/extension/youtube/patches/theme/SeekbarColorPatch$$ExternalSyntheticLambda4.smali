.class public final synthetic Lcom/gold/extension/youtube/patches/theme/SeekbarColorPatch$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:[F


# direct methods
.method public synthetic constructor <init>([I[F)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/theme/SeekbarColorPatch$$ExternalSyntheticLambda4;->f$0:[I

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/theme/SeekbarColorPatch$$ExternalSyntheticLambda4;->f$1:[F

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/theme/SeekbarColorPatch$$ExternalSyntheticLambda4;->f$0:[I

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/theme/SeekbarColorPatch$$ExternalSyntheticLambda4;->f$1:[F

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/theme/SeekbarColorPatch;->$r8$lambda$u1xRJSpBY-MePnfSiWfawq0yyBM([I[F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
