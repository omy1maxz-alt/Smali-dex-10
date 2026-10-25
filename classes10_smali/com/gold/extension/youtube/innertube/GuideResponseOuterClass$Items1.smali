.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Items1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1OrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

.field public static final MOBILETOPBARRENDERER_FIELD_NUMBER:I = 0x758e84d

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIVOTBARRENDERER_FIELD_NUMBER:I = 0x70680a5


# instance fields
.field private bitField0_:I

.field private mobileTopbarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

.field private pivotBarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;


# direct methods
.method public static bridge synthetic -$$Nest$mclearMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->clearMobileTopbarRenderer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearPivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->clearPivotBarRenderer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->mergeMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergePivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->mergePivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->setMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->setPivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1073
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;-><init>()V

    .line 1076
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    .line 1077
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 725
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearMobileTopbarRenderer()V
    .registers 2

    const/4 v0, 0x0

    .line 820
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->mobileTopbarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    .line 821
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    return-void
.end method

.method private clearPivotBarRenderer()V
    .registers 2

    const/4 v0, 0x0

    .line 772
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->pivotBarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    .line 773
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 1

    .line 1082
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object v0
.end method

.method private mergeMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)V
    .registers 4

    .line 806
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->mobileTopbarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    if-eqz v0, :cond_22

    .line 808
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 809
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->mobileTopbarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    .line 810
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->mobileTopbarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    goto :goto_24

    .line 812
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->mobileTopbarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    .line 814
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    return-void
.end method

.method private mergePivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)V
    .registers 4

    .line 758
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->pivotBarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    if-eqz v0, :cond_22

    .line 760
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 761
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->pivotBarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    .line 762
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->pivotBarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    goto :goto_24

    .line 764
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->pivotBarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    .line 766
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;
    .registers 1

    .line 901
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;
    .registers 2

    .line 904
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 884
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 840
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 847
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 896
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 827
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 834
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 852
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 859
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;",
            ">;"
        }
    .end annotation

    .line 1088
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)V
    .registers 2

    .line 797
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 798
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->mobileTopbarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    .line 799
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    return-void
.end method

.method private setPivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)V
    .registers 2

    .line 749
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->pivotBarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    .line 751
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1022
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_52

    .line 1066
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 1059
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1044
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 1046
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    monitor-enter p1

    .line 1047
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 1049
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1052
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 1054
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

    .line 1041
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    return-object p0

    .line 1030
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "pivotBarRenderer_"

    const-string p2, "mobileTopbarRenderer_"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 1035
    const-string p1, "\u0000\u0002\u0000\u0001\ue0a5㠴\ue84d㫇\u0002\u0000\u0000\u0000\ue0a5㠴ဉ\u0000\ue84d㫇ဉ\u0001"

    .line 1038
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1027
    :pswitch_45  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 1024
    :pswitch_4b  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;-><init>()V

    return-object p0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_45  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getMobileTopbarRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 1

    .line 790
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->mobileTopbarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getPivotBarRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 1

    .line 742
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->pivotBarRenderer_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasMobileTopbarRenderer()Z
    .registers 1

    .line 783
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasPivotBarRenderer()Z
    .registers 2

    .line 735
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
