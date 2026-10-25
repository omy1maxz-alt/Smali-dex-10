.class synthetic Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;
.super Ljava/lang/Object;
.source "YouTubeSponsorBlockConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 198
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->values()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    :try_start_9
    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->SPONSOR:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->SELF_PROMO:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->INTERACTION:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->INTRO:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->OUTRO:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->PREVIEW:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HOOK:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->FILLER:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->MUSIC_OFFTOPIC:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$7;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SegmentCategory:[I

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->UNSUBMITTED:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    return-void
.end method
