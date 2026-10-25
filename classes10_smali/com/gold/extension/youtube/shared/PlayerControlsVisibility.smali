.class public final enum Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;
.super Ljava/lang/Enum;
.source "PlayerControlsVisibility.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerControlsVisibility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerControlsVisibility.kt\napp/morphe/extension/youtube/shared/PlayerControlsVisibility\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1208#2,2:48\n1236#2,4:50\n*S KotlinDebug\n*F\n+ 1 PlayerControlsVisibility.kt\napp/morphe/extension/youtube/shared/PlayerControlsVisibility\n*L\n17#1:48,2\n17#1:50,4\n*E\n"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

.field public static final Companion:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;

.field public static final enum PLAYER_CONTROLS_VISIBILITY_HIDDEN:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

.field public static final enum PLAYER_CONTROLS_VISIBILITY_SHOWN:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

.field public static final enum PLAYER_CONTROLS_VISIBILITY_UNKNOWN:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

.field public static final enum PLAYER_CONTROLS_VISIBILITY_WILL_HIDE:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

.field public static final enum PLAYER_CONTROLS_VISIBILITY_WILL_SHOW:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

.field private static volatile currentPlayerControlsVisibility:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

.field private static final nameToPlayerControlsVisibility:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private static final onChange:Lcom/gold/extension/youtube/shared/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/youtube/shared/Event<",
            "Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;
    .registers 5

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_UNKNOWN:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    sget-object v1, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_WILL_HIDE:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    sget-object v2, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_HIDDEN:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    sget-object v3, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_WILL_SHOW:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    sget-object v4, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_SHOWN:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 9
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    const-string v1, "PLAYER_CONTROLS_VISIBILITY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_UNKNOWN:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    .line 10
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    const-string v1, "PLAYER_CONTROLS_VISIBILITY_WILL_HIDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_WILL_HIDE:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    .line 11
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    const-string v1, "PLAYER_CONTROLS_VISIBILITY_HIDDEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_HIDDEN:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    .line 12
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    const-string v1, "PLAYER_CONTROLS_VISIBILITY_WILL_SHOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_WILL_SHOW:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    .line 13
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    const-string v1, "PLAYER_CONTROLS_VISIBILITY_SHOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_SHOWN:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->$values()[Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->$VALUES:[Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->Companion:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;

    .line 17
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    const/16 v1, 0xa

    .line 1208
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

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

    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1237
    move-object v3, v1

    check-cast v3, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 1237
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 17
    :cond_78
    sput-object v2, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->nameToPlayerControlsVisibility:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_UNKNOWN:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->currentPlayerControlsVisibility:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    .line 45
    new-instance v0, Lcom/gold/extension/youtube/shared/Event;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/Event;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->onChange:Lcom/gold/extension/youtube/shared/Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getCurrentPlayerControlsVisibility$cp()Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;
    .registers 1

    .line 8
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->currentPlayerControlsVisibility:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    return-object v0
.end method

.method public static final synthetic access$getNameToPlayerControlsVisibility$cp()Ljava/util/Map;
    .registers 1

    .line 8
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->nameToPlayerControlsVisibility:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getOnChange$cp()Lcom/gold/extension/youtube/shared/Event;
    .registers 1

    .line 8
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->onChange:Lcom/gold/extension/youtube/shared/Event;

    return-object v0
.end method

.method public static final synthetic access$setCurrentPlayerControlsVisibility$cp(Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;)V
    .registers 1

    .line 8
    sput-object p0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->currentPlayerControlsVisibility:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    return-void
.end method

.method public static final getCurrent()Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->Companion:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

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
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static final getOnChange()Lcom/gold/extension/youtube/shared/Event;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gold/extension/youtube/shared/Event<",
            "Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->Companion:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object v0

    return-object v0
.end method

.method private static final setCurrent(Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;)V
    .registers 2

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->Companion:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;->access$setCurrent(Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;)V

    return-void
.end method

.method public static final setFromString(Ljava/lang/String;)V
    .registers 2

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->Companion:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility$Companion;->setFromString(Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;
    .registers 2

    .line 0
    const-class v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->$VALUES:[Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    return-object v0
.end method
