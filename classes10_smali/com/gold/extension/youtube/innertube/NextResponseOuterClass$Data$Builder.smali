.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 9910
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCarouselItemDatas(Ljava/lang/Iterable;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;",
            ">;)",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;"
        }
    .end annotation

    .line 10097
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10098
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$maddAllCarouselItemDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllCarouselTitleDatas(Ljava/lang/Iterable;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;",
            ">;)",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;"
        }
    .end annotation

    .line 9995
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9996
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$maddAllCarouselTitleDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCarouselItemDatas(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 4

    .line 10087
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10088
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    .line 10089
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;

    .line 10088
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$maddCarouselItemDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;)V

    return-object p0
.end method

.method public addCarouselItemDatas(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 4

    .line 10069
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10070
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$maddCarouselItemDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;)V

    return-object p0
.end method

.method public addCarouselItemDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 3

    .line 10078
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10079
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$maddCarouselItemDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;)V

    return-object p0
.end method

.method public addCarouselItemDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 3

    .line 10060
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10061
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$maddCarouselItemDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;)V

    return-object p0
.end method

.method public addCarouselTitleDatas(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 4

    .line 9985
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9986
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    .line 9987
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    .line 9986
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$maddCarouselTitleDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;)V

    return-object p0
.end method

.method public addCarouselTitleDatas(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 4

    .line 9967
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9968
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$maddCarouselTitleDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;)V

    return-object p0
.end method

.method public addCarouselTitleDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 3

    .line 9976
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9977
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$maddCarouselTitleDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;)V

    return-object p0
.end method

.method public addCarouselTitleDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 3

    .line 9958
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$maddCarouselTitleDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;)V

    return-object p0
.end method

.method public clearCarouselItemDatas()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 2

    .line 10105
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10106
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$mclearCarouselItemDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;)V

    return-object p0
.end method

.method public clearCarouselTitleDatas()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 2

    .line 10003
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10004
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$mclearCarouselTitleDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;)V

    return-object p0
.end method

.method public getCarouselItemDatas(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;
    .registers 2

    .line 10035
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->getCarouselItemDatas(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;

    move-result-object p0

    return-object p0
.end method

.method public getCarouselItemDatasCount()I
    .registers 1

    .line 10029
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->getCarouselItemDatasCount()I

    move-result p0

    return p0
.end method

.method public getCarouselItemDatasList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;",
            ">;"
        }
    .end annotation

    .line 10021
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    .line 10022
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->getCarouselItemDatasList()Ljava/util/List;

    move-result-object p0

    .line 10021
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCarouselTitleDatas(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
    .registers 2

    .line 9933
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->getCarouselTitleDatas(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    move-result-object p0

    return-object p0
.end method

.method public getCarouselTitleDatasCount()I
    .registers 1

    .line 9927
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->getCarouselTitleDatasCount()I

    move-result p0

    return p0
.end method

.method public getCarouselTitleDatasList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;",
            ">;"
        }
    .end annotation

    .line 9919
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    .line 9920
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->getCarouselTitleDatasList()Ljava/util/List;

    move-result-object p0

    .line 9919
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeCarouselItemDatas(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 3

    .line 10113
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10114
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$mremoveCarouselItemDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;I)V

    return-object p0
.end method

.method public removeCarouselTitleDatas(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 3

    .line 10011
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10012
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$mremoveCarouselTitleDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;I)V

    return-object p0
.end method

.method public setCarouselItemDatas(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 4

    .line 10051
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10052
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    .line 10053
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;

    .line 10052
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$msetCarouselItemDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;)V

    return-object p0
.end method

.method public setCarouselItemDatas(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 4

    .line 10042
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10043
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$msetCarouselItemDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselItemDatas;)V

    return-object p0
.end method

.method public setCarouselTitleDatas(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 4

    .line 9949
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9950
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    .line 9951
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    .line 9950
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$msetCarouselTitleDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;)V

    return-object p0
.end method

.method public setCarouselTitleDatas(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;
    .registers 4

    .line 9940
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9941
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;->-$$Nest$msetCarouselTitleDatas(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;)V

    return-object p0
.end method
