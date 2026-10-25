.class synthetic Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$1;
.super Ljava/lang/Object;
.source "KeywordContentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/components/KeywordContentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$app$morphe$extension$youtube$shared$NavigationBar$NavigationButton:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 579
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->values()[Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$1;->$SwitchMap$app$morphe$extension$youtube$shared$NavigationBar$NavigationButton:[I

    :try_start_9
    sget-object v1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->HOME:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$1;->$SwitchMap$app$morphe$extension$youtube$shared$NavigationBar$NavigationButton:[I

    sget-object v1, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SUBSCRIPTIONS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
