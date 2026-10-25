.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddToPlaylistButtonViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModelOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDTOPLAYLISTENTITYKEY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addToPlaylistEntityKey_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mclearAddToPlaylistEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->clearAddToPlaylistEntityKey()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAddToPlaylistEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->setAddToPlaylistEntityKey(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAddToPlaylistEntityKeyBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->setAddToPlaylistEntityKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 16908
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;-><init>()V

    .line 16911
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    .line 16912
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 16656
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16657
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->addToPlaylistEntityKey_:Ljava/lang/String;

    return-void
.end method

.method private clearAddToPlaylistEntityKey()V
    .registers 2

    .line 16694
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->getAddToPlaylistEntityKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->addToPlaylistEntityKey_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 1

    .line 16917
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;
    .registers 1

    .line 16784
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;
    .registers 2

    .line 16787
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16760
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16767
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16723
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16730
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16772
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16779
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16747
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16754
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16710
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16717
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16735
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16742
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;",
            ">;"
        }
    .end annotation

    .line 16923
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAddToPlaylistEntityKey(Ljava/lang/String;)V
    .registers 2

    .line 16685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16687
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->addToPlaylistEntityKey_:Ljava/lang/String;

    return-void
.end method

.method private setAddToPlaylistEntityKeyBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 16702
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 16703
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->addToPlaylistEntityKey_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 16860
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_4e

    .line 16901
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 16894
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 16879
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 16881
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    monitor-enter p1

    .line 16882
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 16884
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 16887
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 16889
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

    .line 16876
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    return-object p0

    .line 16868
    :pswitch_32  #0x3
    const-string p0, "addToPlaylistEntityKey_"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 16871
    const-string p1, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002Ȉ"

    .line 16873
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 16865
    :pswitch_41  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 16862
    :pswitch_47  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;-><init>()V

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

.method public getAddToPlaylistEntityKey()Ljava/lang/String;
    .registers 1

    .line 16667
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->addToPlaylistEntityKey_:Ljava/lang/String;

    return-object p0
.end method

.method public getAddToPlaylistEntityKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 16676
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->addToPlaylistEntityKey_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
