.class public final enum Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;
.super Ljava/lang/Enum;
.source "CategoryBehaviour.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

.field public static final enum IGNORE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

.field public static final enum MANUAL_SKIP:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

.field public static final enum SHOW_IN_SEEKBAR:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

.field public static final enum SKIP_AUTOMATICALLY:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

.field public static final enum SKIP_AUTOMATICALLY_ONCE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;


# instance fields
.field public final description:Lcom/gold/extension/shared/StringRef;

.field public final desktopKeyValue:I

.field public final morpheKeyValue:Ljava/lang/String;

.field public final skipAutomatically:Z


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;
    .registers 5

    .line 12
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SKIP_AUTOMATICALLY:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SKIP_AUTOMATICALLY_ONCE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    sget-object v2, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->MANUAL_SKIP:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    sget-object v3, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SHOW_IN_SEEKBAR:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    sget-object v4, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->IGNORE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 11

    .line 13
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    const-string v1, "youtube_sb_skip_automatically"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v6

    const-string v1, "SKIP_AUTOMATICALLY"

    const/4 v2, 0x0

    const-string v3, "skip"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/gold/extension/shared/StringRef;)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SKIP_AUTOMATICALLY:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    .line 15
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    const-string v0, "youtube_sb_skip_automatically_once"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v7

    const-string v2, "SKIP_AUTOMATICALLY_ONCE"

    const/4 v3, 0x1

    const-string v4, "skip-once"

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/gold/extension/shared/StringRef;)V

    sput-object v1, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SKIP_AUTOMATICALLY_ONCE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    .line 16
    new-instance v2, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    const-string v0, "youtube_sb_skip_showbutton"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v8

    const-string v3, "MANUAL_SKIP"

    const/4 v4, 0x2

    const-string v5, "manual-skip"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/gold/extension/shared/StringRef;)V

    sput-object v2, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->MANUAL_SKIP:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    .line 17
    new-instance v3, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    const-string v0, "youtube_sb_skip_seekbaronly"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v9

    const-string v4, "SHOW_IN_SEEKBAR"

    const/4 v5, 0x3

    const-string v6, "seekbar-only"

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/gold/extension/shared/StringRef;)V

    sput-object v3, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SHOW_IN_SEEKBAR:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    .line 19
    new-instance v4, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    const-string v0, "youtube_sb_skip_ignore"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v10

    const-string v5, "IGNORE"

    const/4 v6, 0x4

    const-string v7, "ignore"

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/gold/extension/shared/StringRef;)V

    sput-object v4, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->IGNORE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    .line 12
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->$values()[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->$VALUES:[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IZLcom/gold/extension/shared/StringRef;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/gold/extension/shared/StringRef;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->desktopKeyValue:I

    .line 34
    iput-boolean p5, p0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->skipAutomatically:Z

    .line 35
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p6, p0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->description:Lcom/gold/extension/shared/StringRef;

    return-void
.end method

.method public static byDesktopKeyValue(I)Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;
    .registers 6

    .line 50
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->values()[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 51
    iget v4, v3, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->desktopKeyValue:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byMorpheKeyValue(Ljava/lang/String;)Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;
    .registers 6

    .line 40
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->values()[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 41
    iget-object v4, v3, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    const-class v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;
    .registers 1

    .line 12
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->$VALUES:[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    return-object v0
.end method
