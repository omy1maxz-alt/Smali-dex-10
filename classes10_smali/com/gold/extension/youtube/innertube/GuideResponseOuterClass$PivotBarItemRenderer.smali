.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PivotBarItemRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRendererOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

.field public static final ICON_FIELD_NUMBER:I = 0x5

.field public static final NAVIGATIONENDPOINT_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIVOTIDENTIFIER_FIELD_NUMBER:I = 0x1

.field public static final PRESENTATIONSTYLE_FIELD_NUMBER:I = 0x6

.field public static final TARGETID_FIELD_NUMBER:I = 0xa

.field public static final TITLE_FIELD_NUMBER:I = 0x4


# instance fields
.field private accessibility_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

.field private bitField0_:I

.field private icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

.field private navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

.field private pivotIdentifier_:Ljava/lang/String;

.field private presentationStyle_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

.field private targetId_:Ljava/lang/String;

.field private title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;


# direct methods
.method public static bridge synthetic -$$Nest$mclearAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->clearAccessibility()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->clearIcon()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->clearNavigationEndpoint()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearPivotIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->clearPivotIdentifier()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearPresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->clearPresentationStyle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearTargetId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->clearTargetId()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->clearTitle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->mergeAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->mergeIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->mergeNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergePresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->mergePresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->mergeTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->setAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->setNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPivotIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->setPivotIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPivotIdentifierBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->setPivotIdentifierBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->setPresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTargetId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->setTargetId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTargetIdBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->setTargetIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->setTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 5891
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;-><init>()V

    .line 5894
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    .line 5895
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 5056
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5057
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->pivotIdentifier_:Ljava/lang/String;

    .line 5058
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->targetId_:Ljava/lang/String;

    return-void
.end method

.method private clearAccessibility()V
    .registers 2

    const/4 v0, 0x0

    .line 5201
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->accessibility_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    .line 5202
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method private clearIcon()V
    .registers 2

    const/4 v0, 0x0

    .line 5297
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 5298
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method private clearNavigationEndpoint()V
    .registers 2

    const/4 v0, 0x0

    .line 5153
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    .line 5154
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method private clearPivotIdentifier()V
    .registers 2

    .line 5096
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getPivotIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->pivotIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private clearPresentationStyle()V
    .registers 2

    const/4 v0, 0x0

    .line 5345
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->presentationStyle_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    .line 5346
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method private clearTargetId()V
    .registers 2

    .line 5384
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getTargetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->targetId_:Ljava/lang/String;

    return-void
.end method

.method private clearTitle()V
    .registers 2

    const/4 v0, 0x0

    .line 5249
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    .line 5250
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 1

    .line 5900
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object v0
.end method

.method private mergeAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V
    .registers 4

    .line 5187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5188
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->accessibility_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    if-eqz v0, :cond_22

    .line 5189
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 5190
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->accessibility_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    .line 5191
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->accessibility_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    goto :goto_24

    .line 5193
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->accessibility_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    .line 5195
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method private mergeIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 4

    .line 5283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5284
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    if-eqz v0, :cond_22

    .line 5285
    invoke-static {}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 5286
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 5287
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->newBuilder(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    goto :goto_24

    .line 5289
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 5291
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method private mergeNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V
    .registers 4

    .line 5139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5140
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    if-eqz v0, :cond_22

    .line 5141
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 5142
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    .line 5143
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    goto :goto_24

    .line 5145
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    .line 5147
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method private mergePresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)V
    .registers 4

    .line 5331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5332
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->presentationStyle_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    if-eqz v0, :cond_22

    .line 5333
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 5334
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->presentationStyle_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    .line 5335
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->presentationStyle_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    goto :goto_24

    .line 5337
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->presentationStyle_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    .line 5339
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method private mergeTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V
    .registers 4

    .line 5235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5236
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    if-eqz v0, :cond_22

    .line 5237
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 5238
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    .line 5239
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    goto :goto_24

    .line 5241
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    .line 5243
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 1

    .line 5474
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 2

    .line 5477
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5450
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5457
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5413
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5420
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5462
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5469
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5437
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5444
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5400
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5407
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5425
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5432
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;",
            ">;"
        }
    .end annotation

    .line 5906
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V
    .registers 2

    .line 5178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5179
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->accessibility_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    .line 5180
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method private setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 2

    .line 5274
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5275
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 5276
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method private setNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V
    .registers 2

    .line 5130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5131
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    .line 5132
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method private setPivotIdentifier(Ljava/lang/String;)V
    .registers 2

    .line 5087
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5089
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->pivotIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private setPivotIdentifierBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 5104
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5105
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->pivotIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private setPresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)V
    .registers 2

    .line 5322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5323
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->presentationStyle_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    .line 5324
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method

.method private setTargetId(Ljava/lang/String;)V
    .registers 2

    .line 5375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5377
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->targetId_:Ljava/lang/String;

    return-void
.end method

.method private setTargetIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 5392
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5393
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->targetId_:Ljava/lang/String;

    return-void
.end method

.method private setTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V
    .registers 2

    .line 5226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5227
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    .line 5228
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 5834
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_5c

    .line 5884
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 5877
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 5862
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2f

    .line 5864
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    monitor-enter p1

    .line 5865
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2b

    .line 5867
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5870
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_2d

    .line 5872
    :cond_2b
    :goto_2b
    monitor-exit p1

    return-object p0

    :goto_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_28

    throw p0

    :cond_2f
    return-object p0

    .line 5859
    :pswitch_30  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0

    .line 5842
    :pswitch_33  #0x3
    const-string v0, "bitField0_"

    const-string v1, "pivotIdentifier_"

    const-string v2, "navigationEndpoint_"

    const-string v3, "accessibility_"

    const-string v4, "title_"

    const-string v5, "icon_"

    const-string v6, "presentationStyle_"

    const-string v7, "targetId_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 5852
    const-string p1, "\u0000\u0007\u0000\u0001\u0001\n\u0007\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000\u0003ဉ\u0001\u0004ဉ\u0002\u0005ဉ\u0003\u0006ဉ\u0004\nȈ"

    .line 5856
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5839
    :pswitch_50  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 5836
    :pswitch_56  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;-><init>()V

    return-object p0

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_56  #00000001
        :pswitch_50  #00000002
        :pswitch_33  #00000003
        :pswitch_30  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getAccessibility()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 1

    .line 5171
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->accessibility_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 1

    .line 5267
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->icon_:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getNavigationEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 1

    .line 5123
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->navigationEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getPivotIdentifier()Ljava/lang/String;
    .registers 1

    .line 5069
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->pivotIdentifier_:Ljava/lang/String;

    return-object p0
.end method

.method public getPivotIdentifierBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 5078
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->pivotIdentifier_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPresentationStyle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;
    .registers 1

    .line 5315
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->presentationStyle_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getTargetId()Ljava/lang/String;
    .registers 1

    .line 5357
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->targetId_:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 5366
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->targetId_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 1

    .line 5219
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->title_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasAccessibility()Z
    .registers 1

    .line 5164
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasIcon()Z
    .registers 1

    .line 5260
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasNavigationEndpoint()Z
    .registers 2

    .line 5116
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasPresentationStyle()Z
    .registers 1

    .line 5308
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasTitle()Z
    .registers 1

    .line 5212
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
