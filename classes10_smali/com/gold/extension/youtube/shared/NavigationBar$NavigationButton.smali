.class public final enum Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;
.super Ljava/lang/Enum;
.source "NavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/shared/NavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

.field public static final enum CREATE:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

.field public static final enum HOME:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

.field public static final enum LIBRARY:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

.field public static final enum NOTIFICATIONS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

.field public static final enum SEARCH:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

.field public static final enum SETTINGS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

.field public static final enum SHORTS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

.field public static final enum SUBSCRIPTIONS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

.field private static volatile selectedNavigationButton:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final ytEnumNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;
    .registers 8

    .line 316
    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->HOME:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    sget-object v1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SHORTS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    sget-object v2, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->CREATE:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    sget-object v3, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SEARCH:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    sget-object v4, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SETTINGS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    sget-object v5, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SUBSCRIPTIONS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    sget-object v6, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->NOTIFICATIONS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    sget-object v7, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->LIBRARY:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    filled-new-array/range {v0 .. v7}, [Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputselectedNavigationButton(Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;)V
    .registers 1

    .line 0
    sput-object p0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->selectedNavigationButton:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 317
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    const-string v1, "PIVOT_HOME"

    const-string v2, "TAB_HOME_CAIRO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "HOME"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->HOME:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    .line 318
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    const-string v1, "TAB_SHORTS"

    const-string v2, "TAB_SHORTS_CAIRO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHORTS"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SHORTS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    .line 323
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    const-string v1, "CREATION_TAB_LARGE"

    const-string v2, "CREATION_TAB_LARGE_CAIRO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "CREATE"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->CREATE:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    .line 327
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    const-string v1, "SEARCH_BOLD"

    const-string v2, "SEARCH_CAIRO"

    const-string v3, "SEARCH"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v3, v2, v1}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SEARCH:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    .line 331
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    const-string v1, "SETTINGS_CAIRO"

    const-string v2, "SETTINGS"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SETTINGS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    .line 332
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    const-string v1, "PIVOT_SUBSCRIPTIONS"

    const-string v2, "TAB_SUBSCRIPTIONS_CAIRO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUBSCRIPTIONS"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SUBSCRIPTIONS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    .line 337
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    const-string v1, "TAB_ACTIVITY"

    const-string v2, "TAB_ACTIVITY_CAIRO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "NOTIFICATIONS"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->NOTIFICATIONS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    .line 341
    new-instance v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    const-string v6, "VIDEO_LIBRARY_WHITE"

    const-string v7, "PIVOT_LIBRARY"

    const-string v1, "YOU_LIBRARY_DUMMY_PLACEHOLDER_NAME"

    const-string v2, "ACCOUNT_CIRCLE"

    const-string v3, "ACCOUNT_CIRCLE_CAIRO"

    const-string v4, "INCOGNITO_CIRCLE"

    const-string v5, "INCOGNITO_CAIRO"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIBRARY"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->LIBRARY:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    .line 316
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->$values()[Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->$VALUES:[Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 389
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->ytEnumNames:Ljava/util/List;

    return-void
.end method

.method public static getSelectedNavigationButton()Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 379
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->-$$Nest$smwaitForNavButtonLatchIfNeeded()V

    .line 380
    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->selectedNavigationButton:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 316
    const-class v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;
    .registers 1

    .line 316
    sget-object v0, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->$VALUES:[Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    return-object v0
.end method
