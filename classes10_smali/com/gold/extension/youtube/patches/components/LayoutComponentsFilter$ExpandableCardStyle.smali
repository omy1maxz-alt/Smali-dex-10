.class public final enum Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;
.super Ljava/lang/Enum;
.source "LayoutComponentsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExpandableCardStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

.field public static final enum HIDE_ALL:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

.field public static final enum HIDE_PRODUCT_AND_SUMMARY:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

.field public static final enum HIDE_PRODUCT_ONLY:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

.field public static final enum HIDE_SUMMARY_ONLY:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

.field public static final enum SHOW_ALL:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;
    .registers 5

    .line 80
    sget-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->SHOW_ALL:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    sget-object v1, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->HIDE_PRODUCT_ONLY:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    sget-object v2, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->HIDE_SUMMARY_ONLY:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    sget-object v3, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->HIDE_PRODUCT_AND_SUMMARY:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    sget-object v4, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->HIDE_ALL:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 81
    new-instance v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    const-string v1, "SHOW_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->SHOW_ALL:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    .line 82
    new-instance v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    const-string v1, "HIDE_PRODUCT_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->HIDE_PRODUCT_ONLY:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    .line 83
    new-instance v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    const-string v1, "HIDE_SUMMARY_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->HIDE_SUMMARY_ONLY:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    .line 84
    new-instance v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    const-string v1, "HIDE_PRODUCT_AND_SUMMARY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->HIDE_PRODUCT_AND_SUMMARY:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    .line 85
    new-instance v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    const-string v1, "HIDE_ALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->HIDE_ALL:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    .line 80
    invoke-static {}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->$values()[Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->$VALUES:[Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

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

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 80
    const-class v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;
    .registers 1

    .line 80
    sget-object v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->$VALUES:[Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    return-object v0
.end method
