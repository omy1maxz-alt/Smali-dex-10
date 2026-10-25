.class public Lcom/gold/youtube/om7753/util/StreamItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "StreamItemAdapter.java"


# instance fields
.field private final hasAnyVideoOnlyStreamWithNoSecondaryStream:Z

.field private final secondaryStreams:Lbou;

.field private final streamsWrapper:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)V
    .registers 4

    new-instance v0, Lbou;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbou;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;-><init>(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;Lbou;)V

    return-void
.end method

.method public constructor <init>(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;Lbou;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->streamsWrapper:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    iput-object p2, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->secondaryStreams:Lbou;

    invoke-direct {p0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->checkHasAnyVideoOnlyStreamWithNoSecondaryStream()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->hasAnyVideoOnlyStreamWithNoSecondaryStream:Z

    return-void
.end method

.method private checkHasAnyVideoOnlyStreamWithNoSecondaryStream()Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->streamsWrapper:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    iget-object v2, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->streamsWrapper:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/youtube/om7753/extractor/stream/Stream;

    instance-of v3, v2, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    if-eqz v3, :cond_30

    check-cast v2, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->secondaryStreams:Lbou;

    invoke-static {v2, v1}, Lbov;->a(Lbou;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_30

    const/4 v0, 0x1

    return v0

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_33
    return v0
.end method

.method private getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p2, :cond_1c

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const-string v5, "stream_quality_item"

    invoke-static {v5}, Lcom/gold/youtube/om7753/util/Utils;->getLayoutByName(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v6, p3

    invoke-virtual {v4, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_1e

    :cond_1c
    move-object/from16 v4, p2

    :goto_1e
    const-string v5, "wo_sound_icon"

    invoke-static {v5}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const-string v6, "stream_format_name"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "stream_quality"

    invoke-static {v7}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "stream_size"

    invoke-static {v8}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getItem(I)Lcom/gold/youtube/om7753/extractor/stream/Stream;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v10

    instance-of v11, v9, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    const/16 v12, 0x8

    if-eqz v11, :cond_81

    move-object v11, v9

    check-cast v11, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-virtual {v11}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v13

    iget-boolean v14, v0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->hasAnyVideoOnlyStreamWithNoSecondaryStream:Z

    if-eqz v14, :cond_eb

    invoke-virtual {v11}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result v11

    const/4 v14, 0x4

    if-eqz v11, :cond_7d

    iget-object v11, v0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->secondaryStreams:Lbou;

    invoke-static {v11, v1}, Lbov;->a(Lbou;I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_7a

    if-eqz p4, :cond_eb

    goto/16 :goto_fa

    :cond_7a
    const/4 v14, 0x0

    goto/16 :goto_fa

    :cond_7d
    if-eqz p4, :cond_eb

    goto/16 :goto_fa

    :cond_81
    instance-of v11, v9, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    const-string v13, "unknown_format"

    invoke-static {v13}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v13

    if-eqz v11, :cond_b7

    move-object v11, v9

    check-cast v11, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-virtual {v11}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v14

    if-lez v14, :cond_ab

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "kbps"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_a9
    move-object v13, v11

    goto :goto_eb

    :cond_ab
    if-eqz v10, :cond_b2

    invoke-virtual {v10}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_a9

    :cond_b2
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_a9

    :cond_b7
    instance-of v11, v9, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;

    if-eqz v11, :cond_ee

    move-object v11, v9

    check-cast v11, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;

    invoke-virtual {v11}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;->getDisplayLanguageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    move-result v11

    if-eqz v11, :cond_eb

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " ("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "caption_auto_generated"

    invoke-static {v13}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_eb
    :goto_eb
    const/16 v14, 0x8

    goto :goto_fa

    :cond_ee
    if-nez v10, :cond_f5

    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_eb

    :cond_f5
    invoke-virtual {v10}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v13

    goto :goto_eb

    :goto_fa
    iget-object v11, v0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->streamsWrapper:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v11, v1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getSizeInBytes(I)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v11, v15, v17

    if-lez v11, :cond_130

    iget-object v11, v0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->secondaryStreams:Lbou;

    invoke-static {v11, v1}, Lbov;->a(Lbou;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;

    if-eqz v11, :cond_123

    invoke-virtual {v11}, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;->getSizeInBytes()J

    move-result-wide v11

    iget-object v15, v0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->streamsWrapper:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v15, v1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getSizeInBytes(I)J

    move-result-wide v15

    add-long/2addr v11, v15

    invoke-static {v11, v12}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12c

    :cond_123
    iget-object v11, v0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->streamsWrapper:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v11, v1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getFormattedSize(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_12c
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_133

    :cond_130
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_133
    instance-of v1, v9, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;

    if-eqz v1, :cond_141

    check-cast v9, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;

    invoke-virtual {v9}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_162

    :cond_141
    if-nez v10, :cond_151

    const-string v1, "unknown_format"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_162

    :cond_151
    sget-object v1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA_OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    if-ne v10, v1, :cond_15b

    const-string v1, "opus"

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_162

    :cond_15b
    invoke-virtual {v10}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_162
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v4
.end method


# virtual methods
.method public getAll()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->streamsWrapper:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllSecondary()Lbou;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->secondaryStreams:Lbou;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->streamsWrapper:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/gold/youtube/om7753/extractor/stream/Stream;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->streamsWrapper:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/Stream;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getItem(I)Lcom/gold/youtube/om7753/extractor/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    move-object p1, p3

    check-cast p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
