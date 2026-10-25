.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TitleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Title"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$DataCase;,
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TitleOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;",
            ">;"
        }
    .end annotation
.end field

.field public static final RUNS_FIELD_NUMBER:I = 0x4838cfa


# instance fields
.field private dataCase_:I

.field private data_:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->clearData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->clearRuns()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->mergeRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->setRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 7140
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;-><init>()V

    .line 7143
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    .line 7144
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 6829
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 6831
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->dataCase_:I

    return-void
.end method

.method private clearData()V
    .registers 2

    const/4 v0, 0x0

    .line 6869
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->dataCase_:I

    const/4 v0, 0x0

    .line 6870
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->data_:Ljava/lang/Object;

    return-void
.end method

.method private clearRuns()V
    .registers 3

    .line 6919
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->dataCase_:I

    const v1, 0x4838cfa

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    .line 6920
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->dataCase_:I

    const/4 v0, 0x0

    .line 6921
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->data_:Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 1

    .line 7149
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object v0
.end method

.method private mergeRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)V
    .registers 5

    .line 6905
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6906
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->dataCase_:I

    const v1, 0x4838cfa

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->data_:Ljava/lang/Object;

    .line 6907
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    move-result-object v2

    if-eq v0, v2, :cond_27

    .line 6908
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs$Builder;

    move-result-object v0

    .line 6909
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->data_:Ljava/lang/Object;

    goto :goto_29

    .line 6911
    :cond_27
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->data_:Ljava/lang/Object;

    .line 6913
    :goto_29
    iput v1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->dataCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;
    .registers 1

    .line 7002
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;
    .registers 2

    .line 7005
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6978
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6985
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6941
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6948
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6990
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6997
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6965
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6972
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6928
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6935
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6953
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6960
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;",
            ">;"
        }
    .end annotation

    .line 7155
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setRuns(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;)V
    .registers 2

    .line 6896
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6897
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->data_:Ljava/lang/Object;

    const p1, 0x4838cfa

    .line 6898
    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->dataCase_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 7089
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_52

    .line 7133
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 7126
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 7111
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 7113
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    monitor-enter p1

    .line 7114
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 7116
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7119
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 7121
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

    .line 7108
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    return-object p0

    .line 7097
    :pswitch_32  #0x3
    const-string p0, "data_"

    const-string p1, "dataCase_"

    const-class p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 7102
    const-string p1, "\u0000\u0001\u0001\u0000\uecfa␜\uecfa␜\u0001\u0000\u0000\u0000\uecfa␜<\u0000"

    .line 7105
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7094
    :pswitch_45  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 7091
    :pswitch_4b  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;-><init>()V

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

.method public getDataCase()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$DataCase;
    .registers 1

    .line 6864
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->dataCase_:I

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$DataCase;->forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public getRuns()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;
    .registers 3

    .line 6886
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->dataCase_:I

    const v1, 0x4838cfa

    if-ne v0, v1, :cond_c

    .line 6887
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    return-object p0

    .line 6889
    :cond_c
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Runs;

    move-result-object p0

    return-object p0
.end method

.method public hasRuns()Z
    .registers 2

    .line 6879
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;->dataCase_:I

    const v0, 0x4838cfa

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
