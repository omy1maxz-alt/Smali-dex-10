.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessibilityData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityDataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

.field public static final LABEL_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private label_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mclearLabel(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->clearLabel()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLabel(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLabelBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->setLabelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 6785
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;-><init>()V

    .line 6788
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    .line 6789
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 6533
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6534
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->label_:Ljava/lang/String;

    return-void
.end method

.method private clearLabel()V
    .registers 2

    .line 6571
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->label_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 1

    .line 6794
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;
    .registers 1

    .line 6661
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;
    .registers 2

    .line 6664
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6637
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6644
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6600
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6607
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6649
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6656
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6624
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6631
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6587
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6594
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6612
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6619
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;",
            ">;"
        }
    .end annotation

    .line 6800
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLabel(Ljava/lang/String;)V
    .registers 2

    .line 6562
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6564
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->label_:Ljava/lang/String;

    return-void
.end method

.method private setLabelBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 6579
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6580
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->label_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 6737
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_4e

    .line 6778
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 6771
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 6756
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 6758
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    monitor-enter p1

    .line 6759
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 6761
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6764
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 6766
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

    .line 6753
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0

    .line 6745
    :pswitch_32  #0x3
    const-string p0, "label_"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 6748
    const-string p1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ"

    .line 6750
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6742
    :pswitch_41  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 6739
    :pswitch_47  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;-><init>()V

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

.method public getLabel()Ljava/lang/String;
    .registers 1

    .line 6544
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->label_:Ljava/lang/String;

    return-object p0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 6553
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->label_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
