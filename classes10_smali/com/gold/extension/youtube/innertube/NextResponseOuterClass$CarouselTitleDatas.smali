.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatasOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarouselTitleDatas"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatasOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private title_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mclearTitle(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->clearTitle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTitle(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTitleBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->setTitleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 10472
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;-><init>()V

    .line 10475
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    .line 10476
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 10220
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10221
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->title_:Ljava/lang/String;

    return-void
.end method

.method private clearTitle()V
    .registers 2

    .line 10258
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->title_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 1

    .line 10481
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;
    .registers 1

    .line 10348
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;
    .registers 2

    .line 10351
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10324
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10331
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10287
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10294
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10336
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10343
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10311
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10318
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10274
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10281
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10299
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10306
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;",
            ">;"
        }
    .end annotation

    .line 10487
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTitle(Ljava/lang/String;)V
    .registers 2

    .line 10249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10251
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->title_:Ljava/lang/String;

    return-void
.end method

.method private setTitleBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 10266
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 10267
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->title_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 10424
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_4e

    .line 10465
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 10458
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 10443
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 10445
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    monitor-enter p1

    .line 10446
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 10448
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10451
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 10453
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

    .line 10440
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    return-object p0

    .line 10432
    :pswitch_32  #0x3
    const-string p0, "title_"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 10435
    const-string p1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ"

    .line 10437
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 10429
    :pswitch_41  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 10426
    :pswitch_47  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;-><init>()V

    return-object p0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_47  #00000001
        :pswitch_41  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 10231
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->title_:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 10240
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->title_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
