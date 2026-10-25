.class public final Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ConfigResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTEXT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private context_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;


# direct methods
.method public static bridge synthetic -$$Nest$mclearContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->clearContext()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->mergeContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->setContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 288
    new-instance v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;-><init>()V

    .line 291
    sput-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    .line 292
    const-class v1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearContext()V
    .registers 2

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->context_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    .line 85
    iget v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 1

    .line 297
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object v0
.end method

.method private mergeContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)V
    .registers 4

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->context_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    if-eqz v0, :cond_22

    .line 72
    invoke-static {}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 73
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->context_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    .line 74
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;->newBuilder(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->context_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    goto :goto_24

    .line 76
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->context_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    .line 78
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;
    .registers 1

    .line 165
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;
    .registers 2

    .line 168
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;",
            ">;"
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)V
    .registers 2

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->context_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    .line 63
    iget p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 239
    sget-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 281
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 274
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 259
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 261
    const-class p1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    monitor-enter p1

    .line 262
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 264
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 267
    sput-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 269
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

    .line 256
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    return-object p0

    .line 247
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "context_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 251
    const-string p1, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000"

    .line 253
    sget-object p2, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 244
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;-><init>(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass-IA;)V

    return-object p0

    .line 241
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;-><init>()V

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

.method public getContext()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->context_:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasContext()Z
    .registers 2

    .line 47
    iget p0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
