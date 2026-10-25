.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Items2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$DataCase;,
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2OrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIVOTBARICONONLYITEMRENDERER_FIELD_NUMBER:I = 0x12f9f173

.field public static final PIVOTBARITEMRENDERER_FIELD_NUMBER:I = 0x700eca8


# instance fields
.field private dataCase_:I

.field private data_:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->clearData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearPivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->clearPivotBarIconOnlyItemRenderer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearPivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->clearPivotBarItemRenderer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergePivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->mergePivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergePivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->mergePivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->setPivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->setPivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 4221
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;-><init>()V

    .line 4224
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    .line 4225
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3807
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 3809
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    return-void
.end method

.method private clearData()V
    .registers 2

    const/4 v0, 0x0

    .line 3849
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    const/4 v0, 0x0

    .line 3850
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    return-void
.end method

.method private clearPivotBarIconOnlyItemRenderer()V
    .registers 3

    .line 3899
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    const v1, 0x12f9f173

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    .line 3900
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    const/4 v0, 0x0

    .line 3901
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private clearPivotBarItemRenderer()V
    .registers 3

    .line 3951
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    const v1, 0x700eca8

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    .line 3952
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    const/4 v0, 0x0

    .line 3953
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 1

    .line 4230
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object v0
.end method

.method private mergePivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V
    .registers 5

    .line 3885
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3886
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    const v1, 0x12f9f173

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    .line 3887
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    move-result-object v2

    if-eq v0, v2, :cond_27

    .line 3888
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;

    move-result-object v0

    .line 3889
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    goto :goto_29

    .line 3891
    :cond_27
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    .line 3893
    :goto_29
    iput v1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    return-void
.end method

.method private mergePivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V
    .registers 5

    .line 3937
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3938
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    const v1, 0x700eca8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    .line 3939
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    move-result-object v2

    if-eq v0, v2, :cond_27

    .line 3940
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    move-result-object v0

    .line 3941
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    goto :goto_29

    .line 3943
    :cond_27
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    .line 3945
    :goto_29
    iput v1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
    .registers 1

    .line 4034
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
    .registers 2

    .line 4037
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4010
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4017
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3973
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3980
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4022
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4029
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3997
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4004
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3960
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3967
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3985
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3992
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;",
            ">;"
        }
    .end annotation

    .line 4236
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V
    .registers 2

    .line 3876
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3877
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    const p1, 0x12f9f173

    .line 3878
    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    return-void
.end method

.method private setPivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V
    .registers 2

    .line 3928
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3929
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    const p1, 0x700eca8

    .line 3930
    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 4169
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_54

    .line 4214
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 4207
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4192
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 4194
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    monitor-enter p1

    .line 4195
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 4197
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4200
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 4202
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

    .line 4189
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    return-object p0

    .line 4177
    :pswitch_32  #0x3
    const-string p0, "data_"

    const-string p1, "dataCase_"

    const-class p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    const-class p3, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 4183
    const-string p1, "\u0000\u0002\u0001\u0000\ueca8㠇\uf173韏\u0002\u0000\u0000\u0000\ueca8㠇<\u0000\uf173韏<\u0000"

    .line 4186
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4174
    :pswitch_47  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 4171
    :pswitch_4d  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;-><init>()V

    return-object p0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_47  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getDataCase()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$DataCase;
    .registers 1

    .line 3844
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$DataCase;->forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public getPivotBarIconOnlyItemRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 3

    .line 3866
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    const v1, 0x12f9f173

    if-ne v0, v1, :cond_c

    .line 3867
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    return-object p0

    .line 3869
    :cond_c
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    move-result-object p0

    return-object p0
.end method

.method public getPivotBarItemRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 3

    .line 3918
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    const v1, 0x700eca8

    if-ne v0, v1, :cond_c

    .line 3919
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    return-object p0

    .line 3921
    :cond_c
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    move-result-object p0

    return-object p0
.end method

.method public hasPivotBarIconOnlyItemRenderer()Z
    .registers 2

    .line 3859
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    const v0, 0x12f9f173

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasPivotBarItemRenderer()Z
    .registers 2

    .line 3911
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->dataCase_:I

    const v0, 0x700eca8

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
