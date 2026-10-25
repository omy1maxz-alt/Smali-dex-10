.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Xtags.java"

# interfaces
.implements Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTagsOrBuilder;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllXtags(Ljava/lang/Iterable;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->-$$Nest$maddAllXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addXtags(ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;
    .registers 5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p1, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->-$$Nest$maddXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V

    return-object p0
.end method

.method public addXtags(ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;
    .registers 4

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p1, p2}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->-$$Nest$maddXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V

    return-object p0
.end method

.method public addXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;
    .registers 4

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->-$$Nest$maddXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V

    return-object p0
.end method

.method public addXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->-$$Nest$maddXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V

    return-object p0
.end method

.method public clearXtags()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->-$$Nest$mclearXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;)V

    return-object p0
.end method

.method public getXtags(I)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->getXtags(I)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    move-result-object v0

    return-object v0
.end method

.method public getXtagsCount()I
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->getXtagsCount()I

    move-result v0

    return v0
.end method

.method public getXtagsList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->getXtagsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeXtags(I)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->-$$Nest$mremoveXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;I)V

    return-object p0
.end method

.method public setXtags(ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;
    .registers 5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p1, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->-$$Nest$msetXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V

    return-object p0
.end method

.method public setXtags(ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;
    .registers 4

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    invoke-static {v0, p1, p2}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->-$$Nest$msetXtags(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;ILcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V

    return-object p0
.end method
