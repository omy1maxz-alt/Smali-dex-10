.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RendererAccessibilityData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUTTONRENDERERACCESSIBILITYDATA_FIELD_NUMBER:I = 0x4838cfa

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;


# direct methods
.method public static bridge synthetic -$$Nest$mclearButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->clearButtonRendererAccessibilityData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->mergeButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->setButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 3034
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;-><init>()V

    .line 3037
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    .line 3038
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2782
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearButtonRendererAccessibilityData()V
    .registers 2

    const/4 v0, 0x0

    .line 2829
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    .line 2830
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 1

    .line 3043
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object v0
.end method

.method private mergeButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V
    .registers 4

    .line 2815
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2816
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    if-eqz v0, :cond_22

    .line 2817
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 2818
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    .line 2819
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    goto :goto_24

    .line 2821
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    .line 2823
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;
    .registers 1

    .line 2910
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;
    .registers 2

    .line 2913
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2886
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2893
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2849
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2856
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2898
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2905
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2873
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2880
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2836
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2843
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2861
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2868
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;",
            ">;"
        }
    .end annotation

    .line 3049
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V
    .registers 2

    .line 2806
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2807
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    .line 2808
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2984
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 3027
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 3020
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 3005
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 3007
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    monitor-enter p1

    .line 3008
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 3010
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3013
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 3015
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

    .line 3002
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    return-object p0

    .line 2992
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "buttonRendererAccessibilityData_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2996
    const-string p1, "\u0000\u0001\u0000\u0001\uecfa␜\uecfa␜\u0001\u0000\u0000\u0000\uecfa␜ဉ\u0000"

    .line 2999
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2989
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 2986
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;-><init>()V

    return-object p0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_49  #00000001
        :pswitch_43  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getButtonRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 1

    .line 2799
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->buttonRendererAccessibilityData_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasButtonRendererAccessibilityData()Z
    .registers 2

    .line 2792
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
