.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverflowMenuButtonViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModelOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

.field public static final FORCEENABLEPUSHOVEROVERFLOWMENUITEMS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private forceEnablePushoverOverflowMenuItems_:Z


# direct methods
.method public static bridge synthetic -$$Nest$mclearForceEnablePushoverOverflowMenuItems(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->clearForceEnablePushoverOverflowMenuItems()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetForceEnablePushoverOverflowMenuItems(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->setForceEnablePushoverOverflowMenuItems(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 19008
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;-><init>()V

    .line 19011
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    .line 19012
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18800
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearForceEnablePushoverOverflowMenuItems()V
    .registers 2

    const/4 v0, 0x0

    .line 18825
    iput-boolean v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->forceEnablePushoverOverflowMenuItems_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 1

    .line 19017
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;
    .registers 1

    .line 18905
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;
    .registers 2

    .line 18908
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18881
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18888
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18844
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18851
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18893
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18900
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18868
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18875
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18831
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18838
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18856
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18863
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;",
            ">;"
        }
    .end annotation

    .line 19023
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setForceEnablePushoverOverflowMenuItems(Z)V
    .registers 2

    .line 18818
    iput-boolean p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->forceEnablePushoverOverflowMenuItems_:Z

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 18960
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_4e

    .line 19001
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 18994
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 18979
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 18981
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    monitor-enter p1

    .line 18982
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 18984
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 18987
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 18989
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

    .line 18976
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    return-object p0

    .line 18968
    :pswitch_32  #0x3
    const-string p0, "forceEnablePushoverOverflowMenuItems_"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 18971
    const-string p1, "\u0000\u0001\u0000\u0000\u0004\u0004\u0001\u0000\u0000\u0000\u0004\u0007"

    .line 18973
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 18965
    :pswitch_41  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 18962
    :pswitch_47  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;-><init>()V

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

.method public getForceEnablePushoverOverflowMenuItems()Z
    .registers 1

    .line 18810
    iget-boolean p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$OverflowMenuButtonViewModel;->forceEnablePushoverOverflowMenuItems_:Z

    return p0
.end method
