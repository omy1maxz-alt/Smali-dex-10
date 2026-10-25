.class public final enum Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;
.super Ljava/lang/Enum;
.source "BaseSearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

.field public static final enum COLOR_PICKER:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

.field public static final enum GROUP_HEADER:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

.field public static final enum LIST:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

.field public static final enum NO_RESULTS:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

.field public static final enum REGULAR:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

.field public static final enum SWITCH:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

.field public static final enum URL_LINK:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;
    .registers 7

    .line 31
    sget-object v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->REGULAR:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    sget-object v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->SWITCH:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    sget-object v2, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->LIST:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    sget-object v3, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->COLOR_PICKER:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    sget-object v4, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->GROUP_HEADER:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    sget-object v5, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->NO_RESULTS:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    sget-object v6, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->URL_LINK:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    filled-new-array/range {v0 .. v6}, [Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->REGULAR:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    .line 33
    new-instance v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    const-string v1, "SWITCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->SWITCH:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    .line 34
    new-instance v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    const-string v1, "LIST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->LIST:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    .line 35
    new-instance v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    const-string v1, "COLOR_PICKER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->COLOR_PICKER:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    .line 36
    new-instance v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    const-string v1, "GROUP_HEADER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->GROUP_HEADER:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    .line 37
    new-instance v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    const-string v1, "NO_RESULTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->NO_RESULTS:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    .line 38
    new-instance v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    const-string v1, "URL_LINK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->URL_LINK:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    .line 31
    invoke-static {}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->$values()[Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->$VALUES:[Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static getResourceIdentifier(Ljava/lang/String;)I
    .registers 2

    .line 54
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->LAYOUT:Lcom/gold/extension/shared/ResourceType;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    const-class v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;
    .registers 1

    .line 31
    sget-object v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->$VALUES:[Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    return-object v0
.end method


# virtual methods
.method public getLayoutResourceId()I
    .registers 1

    .line 42
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_38

    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    .line 48
    :pswitch_d  #0x5
    const-string p0, "youtube_preference_search_no_result"

    invoke-static {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->getResourceIdentifier(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 47
    :pswitch_14  #0x4
    const-string p0, "youtube_preference_search_result_group_header"

    invoke-static {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->getResourceIdentifier(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 46
    :pswitch_1b  #0x3
    const-string p0, "youtube_preference_search_result_color"

    invoke-static {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->getResourceIdentifier(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 45
    :pswitch_22  #0x2
    const-string p0, "youtube_preference_search_result_list"

    invoke-static {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->getResourceIdentifier(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 44
    :pswitch_29  #0x1
    const-string p0, "youtube_preference_search_result_switch"

    invoke-static {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->getResourceIdentifier(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 43
    :pswitch_30  #0x0, 0x6
    const-string p0, "youtube_preference_search_result_regular"

    invoke-static {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->getResourceIdentifier(Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_29  #00000001
        :pswitch_22  #00000002
        :pswitch_1b  #00000003
        :pswitch_14  #00000004
        :pswitch_d  #00000005
        :pswitch_30  #00000006
    .end packed-switch
.end method
