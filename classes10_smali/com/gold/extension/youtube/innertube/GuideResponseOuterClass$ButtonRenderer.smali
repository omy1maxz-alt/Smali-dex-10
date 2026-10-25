.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUTTONRENDERERACCESSIBILITYDATA_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

.field public static final ICON_FIELD_NUMBER:I = 0x8

.field public static final NAVIGATIONENDPOINT_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RENDERERACCESSIBILITYDATA_FIELD_NUMBER:I = 0x10


# instance fields
.field private bitField0_:I

.field private buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

.field private icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

.field private navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

.field private rendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;


# direct methods
.method public static bridge synthetic -$$Nest$mclearButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->clearButtonRendererAccessibilityData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->clearIcon()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->clearNavigationEndpoint()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->clearRendererAccessibilityData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->mergeButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->mergeIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->mergeNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->mergeRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->setButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->setNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->setRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 2557
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;-><init>()V

    .line 2560
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    .line 2561
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2017
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearButtonRendererAccessibilityData()V
    .registers 2

    const/4 v0, 0x0

    .line 2160
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    .line 2161
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    return-void
.end method

.method private clearIcon()V
    .registers 2

    const/4 v0, 0x0

    .line 2064
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 2065
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    return-void
.end method

.method private clearNavigationEndpoint()V
    .registers 2

    const/4 v0, 0x0

    .line 2112
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    .line 2113
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    return-void
.end method

.method private clearRendererAccessibilityData()V
    .registers 2

    const/4 v0, 0x0

    .line 2208
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->rendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    .line 2209
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 1

    .line 2566
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object v0
.end method

.method private mergeButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V
    .registers 4

    .line 2146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2147
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    if-eqz v0, :cond_22

    .line 2148
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 2149
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    .line 2150
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    goto :goto_24

    .line 2152
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    .line 2154
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    return-void
.end method

.method private mergeIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 4

    .line 2050
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2051
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    if-eqz v0, :cond_22

    .line 2052
    invoke-static {}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 2053
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 2054
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->newBuilder(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    goto :goto_24

    .line 2056
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 2058
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    return-void
.end method

.method private mergeNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V
    .registers 4

    .line 2098
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2099
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    if-eqz v0, :cond_22

    .line 2100
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 2101
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    .line 2102
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    goto :goto_24

    .line 2104
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    .line 2106
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    return-void
.end method

.method private mergeRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)V
    .registers 4

    .line 2194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2195
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->rendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    if-eqz v0, :cond_22

    .line 2196
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 2197
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->rendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    .line 2198
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->rendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    goto :goto_24

    .line 2200
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->rendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    .line 2202
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 1

    .line 2289
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 2

    .line 2292
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2265
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2272
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2228
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2235
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2277
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2284
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2252
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2259
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2215
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2222
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2240
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2247
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;",
            ">;"
        }
    .end annotation

    .line 2572
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V
    .registers 2

    .line 2137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2138
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    .line 2139
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    return-void
.end method

.method private setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 2

    .line 2041
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2042
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 2043
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    return-void
.end method

.method private setNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V
    .registers 2

    .line 2089
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2090
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    .line 2091
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    return-void
.end method

.method private setRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)V
    .registers 2

    .line 2185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2186
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->rendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    .line 2187
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 2504
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_56

    .line 2550
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 2543
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 2528
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 2530
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    monitor-enter p1

    .line 2531
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 2533
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2536
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 2538
    :cond_2a
    :goto_2a
    monitor-exit p1

    return-object p0

    :goto_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_28

    throw p0

    :cond_2e
    return-object p0

    .line 2525
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0

    .line 2512
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "icon_"

    const-string p2, "navigationEndpoint_"

    const-string p3, "buttonRendererAccessibilityData_"

    const-string v0, "rendererAccessibilityData_"

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2519
    const-string p1, "\u0000\u0004\u0000\u0001\b\u0010\u0004\u0000\u0000\u0000\bဉ\u0000\tဉ\u0001\nဉ\u0002\u0010ဉ\u0003"

    .line 2522
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2509
    :pswitch_49  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 2506
    :pswitch_4f  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;-><init>()V

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f  #00000001
        :pswitch_49  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getButtonRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 1

    .line 2130
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 1

    .line 2034
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getNavigationEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 1

    .line 2082
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 1

    .line 2178
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->rendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasButtonRendererAccessibilityData()Z
    .registers 1

    .line 2123
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasIcon()Z
    .registers 2

    .line 2027
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasNavigationEndpoint()Z
    .registers 1

    .line 2075
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasRendererAccessibilityData()Z
    .registers 1

    .line 2171
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
