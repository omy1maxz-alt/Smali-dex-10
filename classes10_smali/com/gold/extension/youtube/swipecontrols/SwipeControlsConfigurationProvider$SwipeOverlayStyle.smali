.class public final enum Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;
.super Ljava/lang/Enum;
.source "SwipeControlsConfigurationProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeOverlayStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

.field public static final enum CIRCULAR:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

.field public static final enum CIRCULAR_MINIMAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

.field public static final enum HORIZONTAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

.field public static final enum HORIZONTAL_MINIMAL_CENTER:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

.field public static final enum HORIZONTAL_MINIMAL_TOP:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

.field public static final enum VERTICAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

.field public static final enum VERTICAL_MINIMAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;


# instance fields
.field private final isCircular:Z

.field private final isHorizontalMinimalCenter:Z

.field private final isMinimal:Z

.field private final isVertical:Z


# direct methods
.method private static final synthetic $values()[Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;
    .registers 7

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->HORIZONTAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->HORIZONTAL_MINIMAL_TOP:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    sget-object v2, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->HORIZONTAL_MINIMAL_CENTER:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    sget-object v3, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->CIRCULAR:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    sget-object v4, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->CIRCULAR_MINIMAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    sget-object v5, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->VERTICAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    sget-object v6, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->VERTICAL_MINIMAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    filled-new-array/range {v0 .. v6}, [Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 15

    .line 240
    new-instance v0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;-><init>(Ljava/lang/String;IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->HORIZONTAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    .line 245
    new-instance v1, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    const/16 v8, 0xe

    const/4 v9, 0x0

    const-string v2, "HORIZONTAL_MINIMAL_TOP"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;-><init>(Ljava/lang/String;IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->HORIZONTAL_MINIMAL_TOP:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    .line 250
    new-instance v2, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    const/16 v9, 0xc

    const/4 v10, 0x0

    const-string v3, "HORIZONTAL_MINIMAL_CENTER"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;-><init>(Ljava/lang/String;IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->HORIZONTAL_MINIMAL_CENTER:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    .line 255
    new-instance v3, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    const/16 v10, 0xb

    const/4 v11, 0x0

    const-string v4, "CIRCULAR"

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;-><init>(Ljava/lang/String;IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->CIRCULAR:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    .line 260
    new-instance v4, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    const/16 v11, 0xa

    const/4 v12, 0x0

    const-string v5, "CIRCULAR_MINIMAL"

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;-><init>(Ljava/lang/String;IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->CIRCULAR_MINIMAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    .line 265
    new-instance v5, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    const/4 v12, 0x7

    const/4 v13, 0x0

    const-string v6, "VERTICAL"

    const/4 v7, 0x5

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v13}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;-><init>(Ljava/lang/String;IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->VERTICAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    .line 270
    new-instance v6, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    const/4 v13, 0x6

    const/4 v14, 0x0

    const-string v7, "VERTICAL_MINIMAL"

    const/4 v8, 0x6

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v6 .. v14}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;-><init>(Ljava/lang/String;IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->VERTICAL_MINIMAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    invoke-static {}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->$values()[Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->$VALUES:[Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ)V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 232
    iput-boolean p3, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isMinimal:Z

    .line 233
    iput-boolean p4, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isHorizontalMinimalCenter:Z

    .line 234
    iput-boolean p5, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isCircular:Z

    .line 235
    iput-boolean p6, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isVertical:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move p3, v0

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_b

    move p4, v0

    :cond_b
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_10

    move p5, v0

    :cond_10
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_15

    move p6, v0

    .line 231
    :cond_15
    invoke-direct/range {p0 .. p6}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;-><init>(Ljava/lang/String;IZZZZ)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;
    .registers 2

    .line 0
    const-class v0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->$VALUES:[Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    return-object v0
.end method


# virtual methods
.method public final isCircular()Z
    .registers 1

    .line 234
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isCircular:Z

    return p0
.end method

.method public final isHorizontalMinimalCenter()Z
    .registers 1

    .line 233
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isHorizontalMinimalCenter:Z

    return p0
.end method

.method public final isMinimal()Z
    .registers 1

    .line 232
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isMinimal:Z

    return p0
.end method

.method public final isVertical()Z
    .registers 1

    .line 235
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->isVertical:Z

    return p0
.end method
