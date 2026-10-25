.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accessibility"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;,
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCESSIBILITYDATA_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataCase_:I

.field private data_:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$mclearAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->clearAccessibilityData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->clearData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->mergeAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->setAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 6490
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;-><init>()V

    .line 6493
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    .line 6494
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 6180
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 6182
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->dataCase_:I

    return-void
.end method

.method private clearAccessibilityData()V
    .registers 3

    .line 6270
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->dataCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 6271
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->dataCase_:I

    const/4 v0, 0x0

    .line 6272
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->data_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearData()V
    .registers 2

    const/4 v0, 0x0

    .line 6220
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->dataCase_:I

    const/4 v0, 0x0

    .line 6221
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->data_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 1

    .line 6499
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object v0
.end method

.method private mergeAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)V
    .registers 5

    .line 6256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6257
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->dataCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->data_:Ljava/lang/Object;

    .line 6258
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 6259
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;

    move-result-object v0

    .line 6260
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->data_:Ljava/lang/Object;

    goto :goto_27

    .line 6262
    :cond_25
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->data_:Ljava/lang/Object;

    .line 6264
    :goto_27
    iput v1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->dataCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;
    .registers 1

    .line 6353
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;
    .registers 2

    .line 6356
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6329
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6336
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6292
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6299
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6341
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6348
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6316
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6323
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6279
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6286
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6304
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6311
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;",
            ">;"
        }
    .end annotation

    .line 6505
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)V
    .registers 2

    .line 6247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6248
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->data_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 6249
    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->dataCase_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 6440
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_52

    .line 6483
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 6476
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 6461
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 6463
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    monitor-enter p1

    .line 6464
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 6466
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6469
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 6471
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

    .line 6458
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    return-object p0

    .line 6448
    :pswitch_32  #0x3
    const-string p0, "data_"

    const-string p1, "dataCase_"

    const-class p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 6453
    const-string p1, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001<\u0000"

    .line 6455
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6445
    :pswitch_45  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 6442
    :pswitch_4b  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;-><init>()V

    return-object p0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_45  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 3

    .line 6237
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->dataCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 6238
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    return-object p0

    .line 6240
    :cond_a
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    move-result-object p0

    return-object p0
.end method

.method public getDataCase()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;
    .registers 1

    .line 6215
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->dataCase_:I

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;->forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public hasAccessibilityData()Z
    .registers 2

    .line 6230
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->dataCase_:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
