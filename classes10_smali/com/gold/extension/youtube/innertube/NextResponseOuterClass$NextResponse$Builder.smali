.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 181
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPrimaryContents()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse$Builder;
    .registers 2

    .line 227
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 228
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;->-$$Nest$mclearPrimaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;)V

    return-object p0
.end method

.method public getPrimaryContents()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;->getPrimaryContents()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;

    move-result-object p0

    return-object p0
.end method

.method public hasPrimaryContents()Z
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;->hasPrimaryContents()Z

    move-result p0

    return p0
.end method

.method public mergePrimaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse$Builder;
    .registers 3

    .line 220
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 221
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;->-$$Nest$mmergePrimaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;)V

    return-object p0
.end method

.method public setPrimaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse$Builder;
    .registers 3

    .line 212
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;->-$$Nest$msetPrimaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;)V

    return-object p0
.end method

.method public setPrimaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse$Builder;
    .registers 3

    .line 203
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 204
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;->-$$Nest$msetPrimaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NextResponse;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;)V

    return-object p0
.end method
