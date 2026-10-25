.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->$r8$lambda$2C0ZfnHVy7Dxao0PAld3YvOhOGc(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method
