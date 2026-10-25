.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TypeOrBuilder;"
    }
.end annotation


# static fields
.field public static final COMPONENTTYPE_FIELD_NUMBER:I = 0xa0f56b9

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private componentType_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;


# direct methods
.method public static bridge synthetic -$$Nest$mclearComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->clearComponentType()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->mergeComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->setComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 7689
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;-><init>()V

    .line 7692
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    .line 7693
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7437
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearComponentType()V
    .registers 2

    const/4 v0, 0x0

    .line 7484
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->componentType_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    .line 7485
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 1

    .line 7698
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object v0
.end method

.method private mergeComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)V
    .registers 4

    .line 7470
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7471
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->componentType_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    if-eqz v0, :cond_22

    .line 7472
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 7473
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->componentType_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    .line 7474
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->componentType_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    goto :goto_24

    .line 7476
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->componentType_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    .line 7478
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;
    .registers 1

    .line 7565
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;
    .registers 2

    .line 7568
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7541
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7548
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7504
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7511
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7553
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7560
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7528
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7535
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7491
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7498
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7516
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7523
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;",
            ">;"
        }
    .end annotation

    .line 7704
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)V
    .registers 2

    .line 7461
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7462
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->componentType_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    .line 7463
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 7639
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 7682
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 7675
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 7660
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 7662
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    monitor-enter p1

    .line 7663
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 7665
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7668
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 7670
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

    .line 7657
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    return-object p0

    .line 7647
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "componentType_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 7651
    const-string p1, "\u0000\u0001\u0000\u0001\uf6b9偺\uf6b9偺\u0001\u0000\u0000\u0000\uf6b9偺ဉ\u0000"

    .line 7654
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7644
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 7641
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;-><init>()V

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

.method public getComponentType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 1

    .line 7454
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->componentType_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasComponentType()Z
    .registers 2

    .line 7447
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
