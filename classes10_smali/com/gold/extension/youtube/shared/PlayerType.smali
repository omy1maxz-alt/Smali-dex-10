.class public final enum Lcom/gold/extension/youtube/shared/PlayerType;
.super Ljava/lang/Enum;
.source "PlayerType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/shared/PlayerType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/shared/PlayerType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerType.kt\napp/morphe/extension/youtube/shared/PlayerType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1208#2,2:154\n1236#2,4:156\n*S KotlinDebug\n*F\n+ 1 PlayerType.kt\napp/morphe/extension/youtube/shared/PlayerType\n*L\n57#1:154,2\n57#1:156,4\n*E\n"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/shared/PlayerType;

.field public static final Companion:Lcom/gold/extension/youtube/shared/PlayerType$Companion;

.field public static final enum HIDDEN:Lcom/gold/extension/youtube/shared/PlayerType;

.field public static final enum INLINE_MINIMAL:Lcom/gold/extension/youtube/shared/PlayerType;

.field public static final enum NONE:Lcom/gold/extension/youtube/shared/PlayerType;

.field public static final enum VIRTUAL_REALITY_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

.field public static final enum WATCH_WHILE_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

.field public static final enum WATCH_WHILE_MAXIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

.field public static final enum WATCH_WHILE_MINIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

.field public static final enum WATCH_WHILE_PICTURE_IN_PICTURE:Lcom/gold/extension/youtube/shared/PlayerType;

.field public static final enum WATCH_WHILE_SLIDING_FULLSCREEN_DISMISSED:Lcom/gold/extension/youtube/shared/PlayerType;

.field public static final enum WATCH_WHILE_SLIDING_MAXIMIZED_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

.field public static final enum WATCH_WHILE_SLIDING_MINIMIZED_DISMISSED:Lcom/gold/extension/youtube/shared/PlayerType;

.field public static final enum WATCH_WHILE_SLIDING_MINIMIZED_MAXIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

.field private static volatile currentPlayerType:Lcom/gold/extension/youtube/shared/PlayerType;

.field private static final nameToPlayerType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/youtube/shared/PlayerType;",
            ">;"
        }
    .end annotation
.end field

.field private static final onChange:Lcom/gold/extension/youtube/shared/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/youtube/shared/Event<",
            "Lcom/gold/extension/youtube/shared/PlayerType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/gold/extension/youtube/shared/PlayerType;
    .registers 12

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->NONE:Lcom/gold/extension/youtube/shared/PlayerType;

    sget-object v1, Lcom/gold/extension/youtube/shared/PlayerType;->HIDDEN:Lcom/gold/extension/youtube/shared/PlayerType;

    sget-object v2, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_MINIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    sget-object v3, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_MAXIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    sget-object v4, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    sget-object v5, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_SLIDING_MAXIMIZED_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    sget-object v6, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_SLIDING_MINIMIZED_MAXIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    sget-object v7, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_SLIDING_MINIMIZED_DISMISSED:Lcom/gold/extension/youtube/shared/PlayerType;

    sget-object v8, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_SLIDING_FULLSCREEN_DISMISSED:Lcom/gold/extension/youtube/shared/PlayerType;

    sget-object v9, Lcom/gold/extension/youtube/shared/PlayerType;->INLINE_MINIMAL:Lcom/gold/extension/youtube/shared/PlayerType;

    sget-object v10, Lcom/gold/extension/youtube/shared/PlayerType;->VIRTUAL_REALITY_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    sget-object v11, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_PICTURE_IN_PICTURE:Lcom/gold/extension/youtube/shared/PlayerType;

    filled-new-array/range {v0 .. v11}, [Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 22
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->NONE:Lcom/gold/extension/youtube/shared/PlayerType;

    .line 28
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType;

    const-string v1, "HIDDEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->HIDDEN:Lcom/gold/extension/youtube/shared/PlayerType;

    .line 33
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType;

    const-string v1, "WATCH_WHILE_MINIMIZED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_MINIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    .line 34
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType;

    const-string v1, "WATCH_WHILE_MAXIMIZED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_MAXIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    .line 35
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType;

    const-string v1, "WATCH_WHILE_FULLSCREEN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    .line 36
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType;

    const-string v1, "WATCH_WHILE_SLIDING_MAXIMIZED_FULLSCREEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_SLIDING_MAXIMIZED_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    .line 37
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType;

    const-string v1, "WATCH_WHILE_SLIDING_MINIMIZED_MAXIMIZED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_SLIDING_MINIMIZED_MAXIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    .line 44
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType;

    const-string v1, "WATCH_WHILE_SLIDING_MINIMIZED_DISMISSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_SLIDING_MINIMIZED_DISMISSED:Lcom/gold/extension/youtube/shared/PlayerType;

    .line 45
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType;

    const-string v1, "WATCH_WHILE_SLIDING_FULLSCREEN_DISMISSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_SLIDING_FULLSCREEN_DISMISSED:Lcom/gold/extension/youtube/shared/PlayerType;

    .line 50
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType;

    const-string v1, "INLINE_MINIMAL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->INLINE_MINIMAL:Lcom/gold/extension/youtube/shared/PlayerType;

    .line 51
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType;

    const-string v1, "VIRTUAL_REALITY_FULLSCREEN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->VIRTUAL_REALITY_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    .line 52
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType;

    const-string v1, "WATCH_WHILE_PICTURE_IN_PICTURE"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3}, Lcom/gold/extension/youtube/shared/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_PICTURE_IN_PICTURE:Lcom/gold/extension/youtube/shared/PlayerType;

    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->$values()[Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->$VALUES:[Lcom/gold/extension/youtube/shared/PlayerType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gold/extension/youtube/shared/PlayerType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->Companion:Lcom/gold/extension/youtube/shared/PlayerType$Companion;

    .line 57
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    .line 1208
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1209
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1236
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ab
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1237
    move-object v3, v1

    check-cast v3, Lcom/gold/extension/youtube/shared/PlayerType;

    .line 57
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 1237
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ab

    .line 57
    :cond_c0
    sput-object v2, Lcom/gold/extension/youtube/shared/PlayerType;->nameToPlayerType:Ljava/util/Map;

    .line 85
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->NONE:Lcom/gold/extension/youtube/shared/PlayerType;

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->currentPlayerType:Lcom/gold/extension/youtube/shared/PlayerType;

    .line 91
    new-instance v0, Lcom/gold/extension/youtube/shared/Event;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/Event;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->onChange:Lcom/gold/extension/youtube/shared/Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getCurrentPlayerType$cp()Lcom/gold/extension/youtube/shared/PlayerType;
    .registers 1

    .line 18
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->currentPlayerType:Lcom/gold/extension/youtube/shared/PlayerType;

    return-object v0
.end method

.method public static final synthetic access$getNameToPlayerType$cp()Ljava/util/Map;
    .registers 1

    .line 18
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->nameToPlayerType:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getOnChange$cp()Lcom/gold/extension/youtube/shared/Event;
    .registers 1

    .line 18
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->onChange:Lcom/gold/extension/youtube/shared/Event;

    return-object v0
.end method

.method public static final synthetic access$setCurrentPlayerType$cp(Lcom/gold/extension/youtube/shared/PlayerType;)V
    .registers 1

    .line 18
    sput-object p0, Lcom/gold/extension/youtube/shared/PlayerType;->currentPlayerType:Lcom/gold/extension/youtube/shared/PlayerType;

    return-void
.end method

.method public static final getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->Companion:Lcom/gold/extension/youtube/shared/PlayerType$Companion;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/shared/PlayerType$Companion;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v0

    return-object v0
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
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static final getOnChange()Lcom/gold/extension/youtube/shared/Event;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gold/extension/youtube/shared/Event<",
            "Lcom/gold/extension/youtube/shared/PlayerType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->Companion:Lcom/gold/extension/youtube/shared/PlayerType$Companion;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/shared/PlayerType$Companion;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object v0

    return-object v0
.end method

.method private static final setCurrent(Lcom/gold/extension/youtube/shared/PlayerType;)V
    .registers 2

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->Companion:Lcom/gold/extension/youtube/shared/PlayerType$Companion;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/shared/PlayerType$Companion;->access$setCurrent(Lcom/gold/extension/youtube/shared/PlayerType$Companion;Lcom/gold/extension/youtube/shared/PlayerType;)V

    return-void
.end method

.method public static final setFromString(Ljava/lang/String;)V
    .registers 2

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->Companion:Lcom/gold/extension/youtube/shared/PlayerType$Companion;

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/shared/PlayerType$Companion;->setFromString(Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/shared/PlayerType;
    .registers 2

    .line 0
    const-class v0, Lcom/gold/extension/youtube/shared/PlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/shared/PlayerType;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/shared/PlayerType;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->$VALUES:[Lcom/gold/extension/youtube/shared/PlayerType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/shared/PlayerType;

    return-object v0
.end method


# virtual methods
.method public final isMaximizedOrFullscreen()Z
    .registers 2

    .line 149
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_MAXIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    if-eq p0, v0, :cond_f

    .line 150
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_SLIDING_MAXIMIZED_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final isNoneHiddenOrMinimized()Z
    .registers 2

    .line 145
    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerType;->isNoneHiddenOrSlidingMinimized()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_MINIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public final isNoneHiddenOrSlidingMinimized()Z
    .registers 2

    .line 123
    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerType;->isNoneOrHidden()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_SLIDING_MINIMIZED_DISMISSED:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public final isNoneOrHidden()Z
    .registers 2

    .line 103
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->NONE:Lcom/gold/extension/youtube/shared/PlayerType;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->HIDDEN:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method
