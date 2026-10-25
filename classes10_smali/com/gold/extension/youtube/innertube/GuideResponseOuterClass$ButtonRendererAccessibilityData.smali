.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonRendererAccessibilityData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityDataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

.field public static final LABEL_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mclearLabel(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->clearLabel()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLabel(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLabelBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->setLabelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 3352
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;-><init>()V

    .line 3355
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    .line 3356
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3082
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3083
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->label_:Ljava/lang/String;

    return-void
.end method

.method private clearLabel()V
    .registers 2

    .line 3128
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->bitField0_:I

    .line 3129
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->label_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 1

    .line 3361
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;
    .registers 1

    .line 3219
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;
    .registers 2

    .line 3222
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3195
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3202
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3158
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3165
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3207
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3214
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3182
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3189
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3145
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3152
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3170
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3177
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;",
            ">;"
        }
    .end annotation

    .line 3367
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLabel(Ljava/lang/String;)V
    .registers 3

    .line 3120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3121
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->bitField0_:I

    .line 3122
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->label_:Ljava/lang/String;

    return-void
.end method

.method private setLabelBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 3137
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3138
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->label_:Ljava/lang/String;

    .line 3139
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3303
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 3345
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 3338
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 3323
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 3325
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    monitor-enter p1

    .line 3326
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 3328
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3331
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 3333
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

    .line 3320
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    return-object p0

    .line 3311
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "label_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 3315
    const-string p1, "\u0000\u0001\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0000\u0002ለ\u0000"

    .line 3317
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3308
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 3305
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;-><init>()V

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

.method public getLabel()Ljava/lang/String;
    .registers 1

    .line 3102
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->label_:Ljava/lang/String;

    return-object p0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 3111
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->label_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasLabel()Z
    .registers 2

    .line 3094
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
