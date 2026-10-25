.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QualityHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeaderOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 12873
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;-><init>()V

    .line 12876
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    .line 12877
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12721
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 1

    .line 12882
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader$Builder;
    .registers 1

    .line 12800
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader$Builder;
    .registers 2

    .line 12803
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12776
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12783
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12739
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12746
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12788
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12795
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12763
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12770
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12726
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12733
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12751
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12758
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;",
            ">;"
        }
    .end annotation

    .line 12888
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 12827
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_48

    .line 12866
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 12859
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 12844
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 12846
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    monitor-enter p1

    .line 12847
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 12849
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12852
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 12854
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

    .line 12841
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    return-object p0

    .line 12836
    :pswitch_32  #0x3
    const-string p0, "\u0000\u0000"

    .line 12838
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {p2, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12832
    :pswitch_3b  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 12829
    :pswitch_41  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;-><init>()V

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
