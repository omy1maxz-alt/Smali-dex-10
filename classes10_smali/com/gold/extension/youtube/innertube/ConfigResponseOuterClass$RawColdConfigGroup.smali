.class public final Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ConfigResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawColdConfigGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroupOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONFIGDATA_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private configData_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mclearConfigData(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->clearConfigData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetConfigData(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->setConfigData(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetConfigDataBytes(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->setConfigDataBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1192
    new-instance v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;-><init>()V

    .line 1195
    sput-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    .line 1196
    const-class v1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 922
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 923
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->configData_:Ljava/lang/String;

    return-void
.end method

.method private clearConfigData()V
    .registers 2

    .line 968
    iget v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->bitField0_:I

    .line 969
    invoke-static {}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->getConfigData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->configData_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 1

    .line 1201
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup$Builder;
    .registers 1

    .line 1059
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup$Builder;
    .registers 2

    .line 1062
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1042
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 998
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1005
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1047
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1054
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1022
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1029
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 985
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 992
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1010
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1017
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;",
            ">;"
        }
    .end annotation

    .line 1207
    sget-object v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setConfigData(Ljava/lang/String;)V
    .registers 3

    .line 960
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    iget v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->bitField0_:I

    .line 962
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->configData_:Ljava/lang/String;

    return-void
.end method

.method private setConfigDataBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 977
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 978
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->configData_:Ljava/lang/String;

    .line 979
    iget p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1143
    sget-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 1185
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 1178
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1163
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 1165
    const-class p1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    monitor-enter p1

    .line 1166
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 1168
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1171
    sput-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 1173
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

    .line 1160
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    return-object p0

    .line 1151
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "configData_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1155
    const-string p1, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ለ\u0000"

    .line 1157
    sget-object p2, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1148
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup$Builder;-><init>(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass-IA;)V

    return-object p0

    .line 1145
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;-><init>()V

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

.method public getConfigData()Ljava/lang/String;
    .registers 1

    .line 942
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->configData_:Ljava/lang/String;

    return-object p0
.end method

.method public getConfigDataBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 951
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->configData_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasConfigData()Z
    .registers 2

    .line 934
    iget p0, p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
