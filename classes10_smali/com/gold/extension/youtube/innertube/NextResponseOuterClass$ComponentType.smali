.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentTypeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

.field public static final MODEL_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private model_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;


# direct methods
.method public static bridge synthetic -$$Nest$mclearModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->clearModel()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->mergeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->setModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 7982
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;-><init>()V

    .line 7985
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    .line 7986
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7731
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearModel()V
    .registers 2

    const/4 v0, 0x0

    .line 7778
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->model_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    .line 7779
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 1

    .line 7991
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object v0
.end method

.method private mergeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V
    .registers 4

    .line 7764
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7765
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->model_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    if-eqz v0, :cond_22

    .line 7766
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 7767
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->model_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    .line 7768
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->model_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    goto :goto_24

    .line 7770
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->model_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    .line 7772
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;
    .registers 1

    .line 7859
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;
    .registers 2

    .line 7862
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7835
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7842
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7798
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7805
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7847
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7854
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7822
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7829
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7785
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7792
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7810
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7817
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;",
            ">;"
        }
    .end annotation

    .line 7997
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V
    .registers 2

    .line 7755
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7756
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->model_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    .line 7757
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 7933
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 7975
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 7968
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 7953
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 7955
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    monitor-enter p1

    .line 7956
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 7958
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7961
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 7963
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

    .line 7950
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    return-object p0

    .line 7941
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "model_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 7945
    const-string p1, "\u0000\u0001\u0000\u0001\u0005\u0005\u0001\u0000\u0000\u0000\u0005ဉ\u0000"

    .line 7947
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7938
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 7935
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;-><init>()V

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

.method public getModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;
    .registers 1

    .line 7748
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->model_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasModel()Z
    .registers 2

    .line 7741
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
