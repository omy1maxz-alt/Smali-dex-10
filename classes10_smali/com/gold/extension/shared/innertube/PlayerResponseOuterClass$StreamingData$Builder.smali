.class public final Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlayerResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;",
        ">;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1366
    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAdaptiveFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 4

    .line 1543
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1544
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    .line 1545
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    .line 1544
    invoke-static {v0, p1, p2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$maddAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public addAdaptiveFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 4

    .line 1525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1526
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$maddAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public addAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 3

    .line 1534
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1535
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$maddAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public addAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 3

    .line 1516
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1517
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$maddAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public addAllAdaptiveFormats(Ljava/lang/Iterable;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;)",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;"
        }
    .end annotation

    .line 1553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$maddAllAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllFormats(Ljava/lang/Iterable;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;)",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;"
        }
    .end annotation

    .line 1451
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1452
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$maddAllFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 4

    .line 1441
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1442
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    .line 1443
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    .line 1442
    invoke-static {v0, p1, p2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$maddFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public addFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 4

    .line 1423
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1424
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$maddFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public addFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 3

    .line 1432
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1433
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$maddFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public addFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 3

    .line 1414
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$maddFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public clearAdaptiveFormats()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 2

    .line 1561
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1562
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$mclearAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V

    return-object p0
.end method

.method public clearFormats()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 2

    .line 1459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$mclearFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V

    return-object p0
.end method

.method public clearServerAbrStreamingUrl()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 2

    .line 1607
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1608
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$mclearServerAbrStreamingUrl(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V

    return-object p0
.end method

.method public getAdaptiveFormats(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 2

    .line 1491
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getAdaptiveFormats(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    move-result-object p0

    return-object p0
.end method

.method public getAdaptiveFormatsCount()I
    .registers 1

    .line 1485
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getAdaptiveFormatsCount()I

    move-result p0

    return p0
.end method

.method public getAdaptiveFormatsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;"
        }
    .end annotation

    .line 1477
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    .line 1478
    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getAdaptiveFormatsList()Ljava/util/List;

    move-result-object p0

    .line 1477
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFormats(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 2

    .line 1389
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getFormats(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    move-result-object p0

    return-object p0
.end method

.method public getFormatsCount()I
    .registers 1

    .line 1383
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getFormatsCount()I

    move-result p0

    return p0
.end method

.method public getFormatsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;"
        }
    .end annotation

    .line 1375
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    .line 1376
    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getFormatsList()Ljava/util/List;

    move-result-object p0

    .line 1375
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getServerAbrStreamingUrl()Ljava/lang/String;
    .registers 1

    .line 1580
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getServerAbrStreamingUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServerAbrStreamingUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 1589
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getServerAbrStreamingUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public removeAdaptiveFormats(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 3

    .line 1569
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1570
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$mremoveAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;I)V

    return-object p0
.end method

.method public removeFormats(I)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 3

    .line 1467
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1468
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$mremoveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;I)V

    return-object p0
.end method

.method public setAdaptiveFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 4

    .line 1507
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1508
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    .line 1509
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    .line 1508
    invoke-static {v0, p1, p2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$msetAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public setAdaptiveFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 4

    .line 1498
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1499
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$msetAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public setFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 4

    .line 1405
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1406
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    .line 1407
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    .line 1406
    invoke-static {v0, p1, p2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$msetFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public setFormats(ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 4

    .line 1396
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1397
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$msetFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;ILcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V

    return-object p0
.end method

.method public setServerAbrStreamingUrl(Ljava/lang/String;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 3

    .line 1598
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1599
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$msetServerAbrStreamingUrl(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServerAbrStreamingUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 3

    .line 1618
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1619
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->-$$Nest$msetServerAbrStreamingUrlBytes(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
