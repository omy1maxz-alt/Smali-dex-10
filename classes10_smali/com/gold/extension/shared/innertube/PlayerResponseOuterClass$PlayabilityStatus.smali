.class public final Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlayerResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayabilityStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;",
        ">;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatusOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final REASON_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private reason_:Ljava/lang/String;

.field private status_:I


# direct methods
.method public static bridge synthetic -$$Nest$mclearReason(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->clearReason()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->clearStatus()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetReason(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->setReason(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetReasonBytes(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->setReasonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->setStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetStatusValue(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->setStatusValue(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 955
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-direct {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;-><init>()V

    .line 958
    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    .line 959
    const-class v1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 611
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 612
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->reason_:Ljava/lang/String;

    return-void
.end method

.method private clearReason()V
    .registers 2

    .line 692
    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->getDefaultInstance()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->getReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->reason_:Ljava/lang/String;

    return-void
.end method

.method private clearStatus()V
    .registers 2

    const/4 v0, 0x0

    .line 654
    iput v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->status_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 1

    .line 964
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;
    .registers 1

    .line 782
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;
    .registers 2

    .line 785
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 721
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 728
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 770
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 708
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 715
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 733
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 740
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;",
            ">;"
        }
    .end annotation

    .line 970
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setReason(Ljava/lang/String;)V
    .registers 2

    .line 683
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->reason_:Ljava/lang/String;

    return-void
.end method

.method private setReasonBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 700
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 701
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->reason_:Ljava/lang/String;

    return-void
.end method

.method private setStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;)V
    .registers 2

    .line 646
    invoke-virtual {p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->status_:I

    return-void
.end method

.method private setStatusValue(I)V
    .registers 2

    .line 638
    iput p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->status_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 905
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 948
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 941
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 926
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 928
    const-class p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    monitor-enter p1

    .line 929
    :try_start_1a
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 931
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 934
    sput-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 936
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

    .line 923
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    return-object p0

    .line 913
    :pswitch_32  #0x3
    const-string p0, "status_"

    const-string p1, "reason_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 917
    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002Ȉ"

    .line 920
    sget-object p2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 910
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;-><init>(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass-IA;)V

    return-object p0

    .line 907
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;-><init>()V

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

.method public getReason()Ljava/lang/String;
    .registers 1

    .line 665
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->reason_:Ljava/lang/String;

    return-object p0
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 674
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->reason_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;
    .registers 1

    .line 630
    iget p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->status_:I

    invoke-static {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->forNumber(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    move-result-object p0

    if-nez p0, :cond_a

    .line 631
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;->UNRECOGNIZED:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    :cond_a
    return-object p0
.end method

.method public getStatusValue()I
    .registers 1

    .line 622
    iget p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->status_:I

    return p0
.end method
