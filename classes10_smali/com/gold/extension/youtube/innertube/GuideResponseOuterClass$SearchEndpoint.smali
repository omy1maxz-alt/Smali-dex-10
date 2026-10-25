.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchEndpoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpointOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 8417
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;-><init>()V

    .line 8420
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    .line 8421
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8265
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 1

    .line 8426
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint$Builder;
    .registers 1

    .line 8344
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint$Builder;
    .registers 2

    .line 8347
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8320
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8327
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8283
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8290
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8332
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8339
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8307
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8314
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8270
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8277
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8295
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8302
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;",
            ">;"
        }
    .end annotation

    .line 8432
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 8371
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_48

    .line 8410
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 8403
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 8388
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 8390
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    monitor-enter p1

    .line 8391
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 8393
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8396
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 8398
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

    .line 8385
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    return-object p0

    .line 8380
    :pswitch_32  #0x3
    const-string p0, "\u0000\u0000"

    .line 8382
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {p2, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8376
    :pswitch_3b  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 8373
    :pswitch_41  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;-><init>()V

    return-object p0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_41  #00000001
        :pswitch_3b  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method
