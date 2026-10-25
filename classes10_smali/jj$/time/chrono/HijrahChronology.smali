.class public final Ljj$/time/chrono/HijrahChronology;
.super Ljj$/time/chrono/AbstractChronology;
.source "HijrahChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Ljj$/time/chrono/HijrahChronology;

.field private static final serialVersionUID:J = 0x2b668b59cb61d531L


# instance fields
.field private final transient calendarType:Ljava/lang/String;

.field private transient hijrahEpochMonthStartDays:[I

.field private transient hijrahStartEpochMonth:I

.field private volatile transient initComplete:Z

.field private transient maxEpochDay:I

.field private transient maxMonthLength:I

.field private transient maxYearLength:I

.field private transient minEpochDay:I

.field private transient minMonthLength:I

.field private transient minYearLength:I

.field private final transient typeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljj$/time/chrono/HijrahChronology;

    const-string v1, "Hijrah-umalqura"

    const-string v2, "islamic-umalqura"

    invoke-direct {v0, v1, v2}, Ljj$/time/chrono/HijrahChronology;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljj$/time/chrono/HijrahChronology;->INSTANCE:Ljj$/time/chrono/HijrahChronology;

    sget-object v0, Ljj$/time/chrono/HijrahChronology;->INSTANCE:Ljj$/time/chrono/HijrahChronology;

    const-string v1, "Hijrah"

    invoke-static {v0, v1}, Ljj$/time/chrono/AbstractChronology;->registerChrono(Ljj$/time/chrono/Chronology;Ljava/lang/String;)Ljj$/time/chrono/Chronology;

    sget-object v0, Ljj$/time/chrono/HijrahChronology;->INSTANCE:Ljj$/time/chrono/HijrahChronology;

    const-string v1, "islamic"

    invoke-static {v0, v1}, Ljj$/time/chrono/AbstractChronology;->registerChrono(Ljj$/time/chrono/Chronology;Ljava/lang/String;)Ljj$/time/chrono/Chronology;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljj$/time/chrono/AbstractChronology;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iput-object p1, p0, Ljj$/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    iput-object p2, p0, Ljj$/time/chrono/HijrahChronology;->calendarType:Ljava/lang/String;

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calendar typeId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calendar id is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCalendarInit()V
    .registers 2

    iget-boolean v0, p0, Ljj$/time/chrono/HijrahChronology;->initComplete:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Ljj$/time/chrono/HijrahChronology;->loadCalendarData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/time/chrono/HijrahChronology;->initComplete:Z

    :cond_a
    return-void
.end method

.method private createEpochMonths(IIILjava/util/Map;)[I
    .registers 15

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xc

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    new-array v3, v0, [I

    const v4, 0x7fffffff

    iput v4, p0, Ljj$/time/chrono/HijrahChronology;->minMonthLength:I

    const/high16 v4, -0x80000000

    iput v4, p0, Ljj$/time/chrono/HijrahChronology;->maxMonthLength:I

    move v4, p2

    :goto_17
    if-gt v4, p3, :cond_65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    const/4 v6, 0x0

    :goto_24
    if-ge v6, v1, :cond_62

    aget v7, v5, v6

    add-int/lit8 v8, v2, 0x1

    aput p1, v3, v2

    const/16 v2, 0x1d

    if-lt v7, v2, :cond_49

    const/16 v2, 0x20

    if-gt v7, v2, :cond_49

    add-int/2addr p1, v7

    iget v2, p0, Ljj$/time/chrono/HijrahChronology;->minMonthLength:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Ljj$/time/chrono/HijrahChronology;->minMonthLength:I

    iget v2, p0, Ljj$/time/chrono/HijrahChronology;->maxMonthLength:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Ljj$/time/chrono/HijrahChronology;->maxMonthLength:I

    add-int/lit8 v6, v6, 0x1

    move v2, v8

    goto :goto_24

    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid month length in year: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_65
    add-int/lit8 v1, v2, 0x1

    aput p1, v3, v2

    array-length v2, v3

    if-ne v1, v2, :cond_6d

    return-object v3

    :cond_6d
    new-instance v2, Ljava/lang/IllegalStateException;

    array-length v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Did not fill epochMonths exactly: ndx = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " should be "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private epochDayToEpochMonth(I)I
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_b

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    :cond_b
    return v0
.end method

.method private epochMonthLength(I)I
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Ljj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method private epochMonthToEpochDay(I)I
    .registers 3

    iget-object v0, p0, Ljj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    aget v0, v0, p1

    return v0
.end method

.method private epochMonthToMonth(I)I
    .registers 3

    iget v0, p0, Ljj$/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private epochMonthToYear(I)I
    .registers 3

    iget v0, p0, Ljj$/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private static hijrahUmalquraMonthLengths()[[I
    .registers 303

    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_d60

    new-array v2, v0, [I

    fill-array-data v2, :array_d7c

    new-array v3, v0, [I

    fill-array-data v3, :array_d98

    new-array v4, v0, [I

    fill-array-data v4, :array_db4

    new-array v5, v0, [I

    fill-array-data v5, :array_dd0

    new-array v6, v0, [I

    fill-array-data v6, :array_dec

    new-array v7, v0, [I

    fill-array-data v7, :array_e08

    new-array v8, v0, [I

    fill-array-data v8, :array_e24

    new-array v9, v0, [I

    fill-array-data v9, :array_e40

    new-array v10, v0, [I

    fill-array-data v10, :array_e5c

    new-array v11, v0, [I

    fill-array-data v11, :array_e78

    new-array v12, v0, [I

    fill-array-data v12, :array_e94

    new-array v13, v0, [I

    fill-array-data v13, :array_eb0

    new-array v14, v0, [I

    fill-array-data v14, :array_ecc

    new-array v15, v0, [I

    fill-array-data v15, :array_ee8

    move-object/from16 v16, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f04

    move-object/from16 v17, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f20

    move-object/from16 v18, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f3c

    move-object/from16 v19, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f58

    move-object/from16 v20, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f74

    move-object/from16 v21, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f90

    move-object/from16 v22, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_fac

    move-object/from16 v23, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_fc8

    move-object/from16 v24, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_fe4

    move-object/from16 v25, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1000

    move-object/from16 v26, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_101c

    move-object/from16 v27, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1038

    move-object/from16 v28, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1054

    move-object/from16 v29, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1070

    move-object/from16 v30, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_108c

    move-object/from16 v31, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_10a8

    move-object/from16 v32, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_10c4

    move-object/from16 v33, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_10e0

    move-object/from16 v34, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_10fc

    move-object/from16 v35, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1118

    move-object/from16 v36, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1134

    move-object/from16 v37, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1150

    move-object/from16 v38, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_116c

    move-object/from16 v39, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1188

    move-object/from16 v40, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_11a4

    move-object/from16 v41, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_11c0

    move-object/from16 v42, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_11dc

    move-object/from16 v43, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_11f8

    move-object/from16 v44, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1214

    move-object/from16 v45, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1230

    move-object/from16 v46, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_124c

    move-object/from16 v47, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1268

    move-object/from16 v48, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1284

    move-object/from16 v49, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_12a0

    move-object/from16 v50, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_12bc

    move-object/from16 v51, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_12d8

    move-object/from16 v52, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_12f4

    move-object/from16 v53, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1310

    move-object/from16 v54, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_132c

    move-object/from16 v55, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1348

    move-object/from16 v56, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1364

    move-object/from16 v57, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1380

    move-object/from16 v58, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_139c

    move-object/from16 v59, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_13b8

    move-object/from16 v60, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_13d4

    move-object/from16 v61, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_13f0

    move-object/from16 v62, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_140c

    move-object/from16 v63, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1428

    move-object/from16 v64, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1444

    move-object/from16 v65, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1460

    move-object/from16 v66, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_147c

    move-object/from16 v67, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1498

    move-object/from16 v68, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_14b4

    move-object/from16 v69, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_14d0

    move-object/from16 v70, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_14ec

    move-object/from16 v71, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1508

    move-object/from16 v72, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1524

    move-object/from16 v73, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1540

    move-object/from16 v74, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_155c

    move-object/from16 v75, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1578

    move-object/from16 v76, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1594

    move-object/from16 v77, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_15b0

    move-object/from16 v78, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_15cc

    move-object/from16 v79, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_15e8

    move-object/from16 v80, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1604

    move-object/from16 v81, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1620

    move-object/from16 v82, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_163c

    move-object/from16 v83, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1658

    move-object/from16 v84, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1674

    move-object/from16 v85, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1690

    move-object/from16 v86, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_16ac

    move-object/from16 v87, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_16c8

    move-object/from16 v88, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_16e4

    move-object/from16 v89, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1700

    move-object/from16 v90, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_171c

    move-object/from16 v91, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1738

    move-object/from16 v92, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1754

    move-object/from16 v93, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1770

    move-object/from16 v94, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_178c

    move-object/from16 v95, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_17a8

    move-object/from16 v96, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_17c4

    move-object/from16 v97, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_17e0

    move-object/from16 v98, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_17fc

    move-object/from16 v99, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1818

    move-object/from16 v100, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1834

    move-object/from16 v101, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1850

    move-object/from16 v102, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_186c

    move-object/from16 v103, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1888

    move-object/from16 v104, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_18a4

    move-object/from16 v105, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_18c0

    move-object/from16 v106, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_18dc

    move-object/from16 v107, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_18f8

    move-object/from16 v108, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1914

    move-object/from16 v109, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1930

    move-object/from16 v110, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_194c

    move-object/from16 v111, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1968

    move-object/from16 v112, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1984

    move-object/from16 v113, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_19a0

    move-object/from16 v114, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_19bc

    move-object/from16 v115, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_19d8

    move-object/from16 v116, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_19f4

    move-object/from16 v117, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1a10

    move-object/from16 v118, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1a2c

    move-object/from16 v119, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1a48

    move-object/from16 v120, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1a64

    move-object/from16 v121, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1a80

    move-object/from16 v122, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1a9c

    move-object/from16 v123, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1ab8

    move-object/from16 v124, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1ad4

    move-object/from16 v125, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1af0

    move-object/from16 v126, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1b0c

    move-object/from16 v127, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1b28

    move-object/from16 v128, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1b44

    move-object/from16 v129, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1b60

    move-object/from16 v130, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1b7c

    move-object/from16 v131, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1b98

    move-object/from16 v132, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1bb4

    move-object/from16 v133, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1bd0

    move-object/from16 v134, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1bec

    move-object/from16 v135, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1c08

    move-object/from16 v136, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1c24

    move-object/from16 v137, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1c40

    move-object/from16 v138, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1c5c

    move-object/from16 v139, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1c78

    move-object/from16 v140, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1c94

    move-object/from16 v141, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1cb0

    move-object/from16 v142, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1ccc

    move-object/from16 v143, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1ce8

    move-object/from16 v144, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1d04

    move-object/from16 v145, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1d20

    move-object/from16 v146, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1d3c

    move-object/from16 v147, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1d58

    move-object/from16 v148, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1d74

    move-object/from16 v149, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1d90

    move-object/from16 v150, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1dac

    move-object/from16 v151, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1dc8

    move-object/from16 v152, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1de4

    move-object/from16 v153, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1e00

    move-object/from16 v154, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1e1c

    move-object/from16 v155, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1e38

    move-object/from16 v156, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1e54

    move-object/from16 v157, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1e70

    move-object/from16 v158, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1e8c

    move-object/from16 v159, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1ea8

    move-object/from16 v160, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1ec4

    move-object/from16 v161, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1ee0

    move-object/from16 v162, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1efc

    move-object/from16 v163, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1f18

    move-object/from16 v164, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1f34

    move-object/from16 v165, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1f50

    move-object/from16 v166, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1f6c

    move-object/from16 v167, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1f88

    move-object/from16 v168, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1fa4

    move-object/from16 v169, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1fc0

    move-object/from16 v170, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1fdc

    move-object/from16 v171, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1ff8

    move-object/from16 v172, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2014

    move-object/from16 v173, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2030

    move-object/from16 v174, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_204c

    move-object/from16 v175, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2068

    move-object/from16 v176, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2084

    move-object/from16 v177, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_20a0

    move-object/from16 v178, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_20bc

    move-object/from16 v179, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_20d8

    move-object/from16 v180, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_20f4

    move-object/from16 v181, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2110

    move-object/from16 v182, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_212c

    move-object/from16 v183, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2148

    move-object/from16 v184, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2164

    move-object/from16 v185, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2180

    move-object/from16 v186, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_219c

    move-object/from16 v187, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_21b8

    move-object/from16 v188, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_21d4

    move-object/from16 v189, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_21f0

    move-object/from16 v190, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_220c

    move-object/from16 v191, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2228

    move-object/from16 v192, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2244

    move-object/from16 v193, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2260

    move-object/from16 v194, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_227c

    move-object/from16 v195, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2298

    move-object/from16 v196, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_22b4

    move-object/from16 v197, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_22d0

    move-object/from16 v198, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_22ec

    move-object/from16 v199, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2308

    move-object/from16 v200, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2324

    move-object/from16 v201, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2340

    move-object/from16 v202, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_235c

    move-object/from16 v203, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2378

    move-object/from16 v204, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2394

    move-object/from16 v205, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_23b0

    move-object/from16 v206, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_23cc

    move-object/from16 v207, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_23e8

    move-object/from16 v208, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2404

    move-object/from16 v209, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2420

    move-object/from16 v210, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_243c

    move-object/from16 v211, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2458

    move-object/from16 v212, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2474

    move-object/from16 v213, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2490

    move-object/from16 v214, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_24ac

    move-object/from16 v215, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_24c8

    move-object/from16 v216, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_24e4

    move-object/from16 v217, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2500

    move-object/from16 v218, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_251c

    move-object/from16 v219, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2538

    move-object/from16 v220, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2554

    move-object/from16 v221, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2570

    move-object/from16 v222, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_258c

    move-object/from16 v223, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_25a8

    move-object/from16 v224, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_25c4

    move-object/from16 v225, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_25e0

    move-object/from16 v226, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_25fc

    move-object/from16 v227, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2618

    move-object/from16 v228, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2634

    move-object/from16 v229, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2650

    move-object/from16 v230, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_266c

    move-object/from16 v231, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2688

    move-object/from16 v232, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_26a4

    move-object/from16 v233, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_26c0

    move-object/from16 v234, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_26dc

    move-object/from16 v235, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_26f8

    move-object/from16 v236, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2714

    move-object/from16 v237, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2730

    move-object/from16 v238, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_274c

    move-object/from16 v239, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2768

    move-object/from16 v240, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2784

    move-object/from16 v241, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_27a0

    move-object/from16 v242, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_27bc

    move-object/from16 v243, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_27d8

    move-object/from16 v244, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_27f4

    move-object/from16 v245, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2810

    move-object/from16 v246, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_282c

    move-object/from16 v247, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2848

    move-object/from16 v248, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2864

    move-object/from16 v249, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2880

    move-object/from16 v250, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_289c

    move-object/from16 v251, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_28b8

    move-object/from16 v252, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_28d4

    move-object/from16 v253, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_28f0

    move-object/from16 v254, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_290c

    move-object/from16 v255, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2928

    move-object/16 v256, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2944

    move-object/16 v257, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2960

    move-object/16 v258, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_297c

    move-object/16 v259, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2998

    move-object/16 v260, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_29b4

    move-object/16 v261, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_29d0

    move-object/16 v262, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_29ec

    move-object/16 v263, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2a08

    move-object/16 v264, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2a24

    move-object/16 v265, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2a40

    move-object/16 v266, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2a5c

    move-object/16 v267, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2a78

    move-object/16 v268, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2a94

    move-object/16 v269, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2ab0

    move-object/16 v270, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2acc

    move-object/16 v271, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2ae8

    move-object/16 v272, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2b04

    move-object/16 v273, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2b20

    move-object/16 v274, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2b3c

    move-object/16 v275, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2b58

    move-object/16 v276, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2b74

    move-object/16 v277, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2b90

    move-object/16 v278, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2bac

    move-object/16 v279, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2bc8

    move-object/16 v280, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2be4

    move-object/16 v281, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2c00

    move-object/16 v282, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2c1c

    move-object/16 v283, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2c38

    move-object/16 v284, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2c54

    move-object/16 v285, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2c70

    move-object/16 v286, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2c8c

    move-object/16 v287, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2ca8

    move-object/16 v288, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2cc4

    move-object/16 v289, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2ce0

    move-object/16 v290, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2cfc

    move-object/16 v291, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2d18

    move-object/16 v292, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2d34

    move-object/16 v293, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2d50

    move-object/16 v294, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2d6c

    move-object/16 v295, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2d88

    move-object/16 v296, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2da4

    move-object/16 v297, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2dc0

    move-object/16 v298, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2ddc

    move-object/16 v299, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2df8

    move-object/16 v300, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2e14

    move-object/16 v301, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2e30

    const/16 v0, 0x12d

    new-array v0, v0, [[I

    move-object/16 v302, v16

    const/16 v16, 0x0

    aput-object v1, v0, v16

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v7, v0, v1

    const/4 v1, 0x7

    aput-object v8, v0, v1

    const/16 v1, 0x8

    aput-object v9, v0, v1

    const/16 v1, 0x9

    aput-object v10, v0, v1

    const/16 v1, 0xa

    aput-object v11, v0, v1

    const/16 v1, 0xb

    aput-object v12, v0, v1

    const/16 v1, 0xc

    aput-object v13, v0, v1

    const/16 v1, 0xd

    aput-object v14, v0, v1

    const/16 v1, 0xe

    move-object/from16 v16, v302

    aput-object v16, v0, v1

    const/16 v1, 0xf

    aput-object v17, v0, v1

    const/16 v1, 0x10

    aput-object v18, v0, v1

    const/16 v1, 0x11

    aput-object v19, v0, v1

    const/16 v1, 0x12

    aput-object v20, v0, v1

    const/16 v1, 0x13

    aput-object v21, v0, v1

    const/16 v1, 0x14

    aput-object v22, v0, v1

    const/16 v1, 0x15

    aput-object v23, v0, v1

    const/16 v1, 0x16

    aput-object v24, v0, v1

    const/16 v1, 0x17

    aput-object v25, v0, v1

    const/16 v1, 0x18

    aput-object v26, v0, v1

    const/16 v1, 0x19

    aput-object v27, v0, v1

    const/16 v1, 0x1a

    aput-object v28, v0, v1

    const/16 v1, 0x1b

    aput-object v29, v0, v1

    const/16 v1, 0x1c

    aput-object v30, v0, v1

    const/16 v1, 0x1d

    aput-object v31, v0, v1

    const/16 v1, 0x1e

    aput-object v32, v0, v1

    const/16 v1, 0x1f

    aput-object v33, v0, v1

    const/16 v1, 0x20

    aput-object v34, v0, v1

    const/16 v1, 0x21

    aput-object v35, v0, v1

    const/16 v1, 0x22

    aput-object v36, v0, v1

    const/16 v1, 0x23

    aput-object v37, v0, v1

    const/16 v1, 0x24

    aput-object v38, v0, v1

    const/16 v1, 0x25

    aput-object v39, v0, v1

    const/16 v1, 0x26

    aput-object v40, v0, v1

    const/16 v1, 0x27

    aput-object v41, v0, v1

    const/16 v1, 0x28

    aput-object v42, v0, v1

    const/16 v1, 0x29

    aput-object v43, v0, v1

    const/16 v1, 0x2a

    aput-object v44, v0, v1

    const/16 v1, 0x2b

    aput-object v45, v0, v1

    const/16 v1, 0x2c

    aput-object v46, v0, v1

    const/16 v1, 0x2d

    aput-object v47, v0, v1

    const/16 v1, 0x2e

    aput-object v48, v0, v1

    const/16 v1, 0x2f

    aput-object v49, v0, v1

    const/16 v1, 0x30

    aput-object v50, v0, v1

    const/16 v1, 0x31

    aput-object v51, v0, v1

    const/16 v1, 0x32

    aput-object v52, v0, v1

    const/16 v1, 0x33

    aput-object v53, v0, v1

    const/16 v1, 0x34

    aput-object v54, v0, v1

    const/16 v1, 0x35

    aput-object v55, v0, v1

    const/16 v1, 0x36

    aput-object v56, v0, v1

    const/16 v1, 0x37

    aput-object v57, v0, v1

    const/16 v1, 0x38

    aput-object v58, v0, v1

    const/16 v1, 0x39

    aput-object v59, v0, v1

    const/16 v1, 0x3a

    aput-object v60, v0, v1

    const/16 v1, 0x3b

    aput-object v61, v0, v1

    const/16 v1, 0x3c

    aput-object v62, v0, v1

    const/16 v1, 0x3d

    aput-object v63, v0, v1

    const/16 v1, 0x3e

    aput-object v64, v0, v1

    const/16 v1, 0x3f

    aput-object v65, v0, v1

    const/16 v1, 0x40

    aput-object v66, v0, v1

    const/16 v1, 0x41

    aput-object v67, v0, v1

    const/16 v1, 0x42

    aput-object v68, v0, v1

    const/16 v1, 0x43

    aput-object v69, v0, v1

    const/16 v1, 0x44

    aput-object v70, v0, v1

    const/16 v1, 0x45

    aput-object v71, v0, v1

    const/16 v1, 0x46

    aput-object v72, v0, v1

    const/16 v1, 0x47

    aput-object v73, v0, v1

    const/16 v1, 0x48

    aput-object v74, v0, v1

    const/16 v1, 0x49

    aput-object v75, v0, v1

    const/16 v1, 0x4a

    aput-object v76, v0, v1

    const/16 v1, 0x4b

    aput-object v77, v0, v1

    const/16 v1, 0x4c

    aput-object v78, v0, v1

    const/16 v1, 0x4d

    aput-object v79, v0, v1

    const/16 v1, 0x4e

    aput-object v80, v0, v1

    const/16 v1, 0x4f

    aput-object v81, v0, v1

    const/16 v1, 0x50

    aput-object v82, v0, v1

    const/16 v1, 0x51

    aput-object v83, v0, v1

    const/16 v1, 0x52

    aput-object v84, v0, v1

    const/16 v1, 0x53

    aput-object v85, v0, v1

    const/16 v1, 0x54

    aput-object v86, v0, v1

    const/16 v1, 0x55

    aput-object v87, v0, v1

    const/16 v1, 0x56

    aput-object v88, v0, v1

    const/16 v1, 0x57

    aput-object v89, v0, v1

    const/16 v1, 0x58

    aput-object v90, v0, v1

    const/16 v1, 0x59

    aput-object v91, v0, v1

    const/16 v1, 0x5a

    aput-object v92, v0, v1

    const/16 v1, 0x5b

    aput-object v93, v0, v1

    const/16 v1, 0x5c

    aput-object v94, v0, v1

    const/16 v1, 0x5d

    aput-object v95, v0, v1

    const/16 v1, 0x5e

    aput-object v96, v0, v1

    const/16 v1, 0x5f

    aput-object v97, v0, v1

    const/16 v1, 0x60

    aput-object v98, v0, v1

    const/16 v1, 0x61

    aput-object v99, v0, v1

    const/16 v1, 0x62

    aput-object v100, v0, v1

    const/16 v1, 0x63

    aput-object v101, v0, v1

    const/16 v1, 0x64

    aput-object v102, v0, v1

    const/16 v1, 0x65

    aput-object v103, v0, v1

    const/16 v1, 0x66

    aput-object v104, v0, v1

    const/16 v1, 0x67

    aput-object v105, v0, v1

    const/16 v1, 0x68

    aput-object v106, v0, v1

    const/16 v1, 0x69

    aput-object v107, v0, v1

    const/16 v1, 0x6a

    aput-object v108, v0, v1

    const/16 v1, 0x6b

    aput-object v109, v0, v1

    const/16 v1, 0x6c

    aput-object v110, v0, v1

    const/16 v1, 0x6d

    aput-object v111, v0, v1

    const/16 v1, 0x6e

    aput-object v112, v0, v1

    const/16 v1, 0x6f

    aput-object v113, v0, v1

    const/16 v1, 0x70

    aput-object v114, v0, v1

    const/16 v1, 0x71

    aput-object v115, v0, v1

    const/16 v1, 0x72

    aput-object v116, v0, v1

    const/16 v1, 0x73

    aput-object v117, v0, v1

    const/16 v1, 0x74

    aput-object v118, v0, v1

    const/16 v1, 0x75

    aput-object v119, v0, v1

    const/16 v1, 0x76

    aput-object v120, v0, v1

    const/16 v1, 0x77

    aput-object v121, v0, v1

    const/16 v1, 0x78

    aput-object v122, v0, v1

    const/16 v1, 0x79

    aput-object v123, v0, v1

    const/16 v1, 0x7a

    aput-object v124, v0, v1

    const/16 v1, 0x7b

    aput-object v125, v0, v1

    const/16 v1, 0x7c

    aput-object v126, v0, v1

    const/16 v1, 0x7d

    aput-object v127, v0, v1

    const/16 v1, 0x7e

    aput-object v128, v0, v1

    const/16 v1, 0x7f

    aput-object v129, v0, v1

    const/16 v1, 0x80

    aput-object v130, v0, v1

    const/16 v1, 0x81

    aput-object v131, v0, v1

    const/16 v1, 0x82

    aput-object v132, v0, v1

    const/16 v1, 0x83

    aput-object v133, v0, v1

    const/16 v1, 0x84

    aput-object v134, v0, v1

    const/16 v1, 0x85

    aput-object v135, v0, v1

    const/16 v1, 0x86

    aput-object v136, v0, v1

    const/16 v1, 0x87

    aput-object v137, v0, v1

    const/16 v1, 0x88

    aput-object v138, v0, v1

    const/16 v1, 0x89

    aput-object v139, v0, v1

    const/16 v1, 0x8a

    aput-object v140, v0, v1

    const/16 v1, 0x8b

    aput-object v141, v0, v1

    const/16 v1, 0x8c

    aput-object v142, v0, v1

    const/16 v1, 0x8d

    aput-object v143, v0, v1

    const/16 v1, 0x8e

    aput-object v144, v0, v1

    const/16 v1, 0x8f

    aput-object v145, v0, v1

    const/16 v1, 0x90

    aput-object v146, v0, v1

    const/16 v1, 0x91

    aput-object v147, v0, v1

    const/16 v1, 0x92

    aput-object v148, v0, v1

    const/16 v1, 0x93

    aput-object v149, v0, v1

    const/16 v1, 0x94

    aput-object v150, v0, v1

    const/16 v1, 0x95

    aput-object v151, v0, v1

    const/16 v1, 0x96

    aput-object v152, v0, v1

    const/16 v1, 0x97

    aput-object v153, v0, v1

    const/16 v1, 0x98

    aput-object v154, v0, v1

    const/16 v1, 0x99

    aput-object v155, v0, v1

    const/16 v1, 0x9a

    aput-object v156, v0, v1

    const/16 v1, 0x9b

    aput-object v157, v0, v1

    const/16 v1, 0x9c

    aput-object v158, v0, v1

    const/16 v1, 0x9d

    aput-object v159, v0, v1

    const/16 v1, 0x9e

    aput-object v160, v0, v1

    const/16 v1, 0x9f

    aput-object v161, v0, v1

    const/16 v1, 0xa0

    aput-object v162, v0, v1

    const/16 v1, 0xa1

    aput-object v163, v0, v1

    const/16 v1, 0xa2

    aput-object v164, v0, v1

    const/16 v1, 0xa3

    aput-object v165, v0, v1

    const/16 v1, 0xa4

    aput-object v166, v0, v1

    const/16 v1, 0xa5

    aput-object v167, v0, v1

    const/16 v1, 0xa6

    aput-object v168, v0, v1

    const/16 v1, 0xa7

    aput-object v169, v0, v1

    const/16 v1, 0xa8

    aput-object v170, v0, v1

    const/16 v1, 0xa9

    aput-object v171, v0, v1

    const/16 v1, 0xaa

    aput-object v172, v0, v1

    const/16 v1, 0xab

    aput-object v173, v0, v1

    const/16 v1, 0xac

    aput-object v174, v0, v1

    const/16 v1, 0xad

    aput-object v175, v0, v1

    const/16 v1, 0xae

    aput-object v176, v0, v1

    const/16 v1, 0xaf

    aput-object v177, v0, v1

    const/16 v1, 0xb0

    aput-object v178, v0, v1

    const/16 v1, 0xb1

    aput-object v179, v0, v1

    const/16 v1, 0xb2

    aput-object v180, v0, v1

    const/16 v1, 0xb3

    aput-object v181, v0, v1

    const/16 v1, 0xb4

    aput-object v182, v0, v1

    const/16 v1, 0xb5

    aput-object v183, v0, v1

    const/16 v1, 0xb6

    aput-object v184, v0, v1

    const/16 v1, 0xb7

    aput-object v185, v0, v1

    const/16 v1, 0xb8

    aput-object v186, v0, v1

    const/16 v1, 0xb9

    aput-object v187, v0, v1

    const/16 v1, 0xba

    aput-object v188, v0, v1

    const/16 v1, 0xbb

    aput-object v189, v0, v1

    const/16 v1, 0xbc

    aput-object v190, v0, v1

    const/16 v1, 0xbd

    aput-object v191, v0, v1

    const/16 v1, 0xbe

    aput-object v192, v0, v1

    const/16 v1, 0xbf

    aput-object v193, v0, v1

    const/16 v1, 0xc0

    aput-object v194, v0, v1

    const/16 v1, 0xc1

    aput-object v195, v0, v1

    const/16 v1, 0xc2

    aput-object v196, v0, v1

    const/16 v1, 0xc3

    aput-object v197, v0, v1

    const/16 v1, 0xc4

    aput-object v198, v0, v1

    const/16 v1, 0xc5

    aput-object v199, v0, v1

    const/16 v1, 0xc6

    aput-object v200, v0, v1

    const/16 v1, 0xc7

    aput-object v201, v0, v1

    const/16 v1, 0xc8

    aput-object v202, v0, v1

    const/16 v1, 0xc9

    aput-object v203, v0, v1

    const/16 v1, 0xca

    aput-object v204, v0, v1

    const/16 v1, 0xcb

    aput-object v205, v0, v1

    const/16 v1, 0xcc

    aput-object v206, v0, v1

    const/16 v1, 0xcd

    aput-object v207, v0, v1

    const/16 v1, 0xce

    aput-object v208, v0, v1

    const/16 v1, 0xcf

    aput-object v209, v0, v1

    const/16 v1, 0xd0

    aput-object v210, v0, v1

    const/16 v1, 0xd1

    aput-object v211, v0, v1

    const/16 v1, 0xd2

    aput-object v212, v0, v1

    const/16 v1, 0xd3

    aput-object v213, v0, v1

    const/16 v1, 0xd4

    aput-object v214, v0, v1

    const/16 v1, 0xd5

    aput-object v215, v0, v1

    const/16 v1, 0xd6

    aput-object v216, v0, v1

    const/16 v1, 0xd7

    aput-object v217, v0, v1

    const/16 v1, 0xd8

    aput-object v218, v0, v1

    const/16 v1, 0xd9

    aput-object v219, v0, v1

    const/16 v1, 0xda

    aput-object v220, v0, v1

    const/16 v1, 0xdb

    aput-object v221, v0, v1

    const/16 v1, 0xdc

    aput-object v222, v0, v1

    const/16 v1, 0xdd

    aput-object v223, v0, v1

    const/16 v1, 0xde

    aput-object v224, v0, v1

    const/16 v1, 0xdf

    aput-object v225, v0, v1

    const/16 v1, 0xe0

    aput-object v226, v0, v1

    const/16 v1, 0xe1

    aput-object v227, v0, v1

    const/16 v1, 0xe2

    aput-object v228, v0, v1

    const/16 v1, 0xe3

    aput-object v229, v0, v1

    const/16 v1, 0xe4

    aput-object v230, v0, v1

    const/16 v1, 0xe5

    aput-object v231, v0, v1

    const/16 v1, 0xe6

    aput-object v232, v0, v1

    const/16 v1, 0xe7

    aput-object v233, v0, v1

    const/16 v1, 0xe8

    aput-object v234, v0, v1

    const/16 v1, 0xe9

    aput-object v235, v0, v1

    const/16 v1, 0xea

    aput-object v236, v0, v1

    const/16 v1, 0xeb

    aput-object v237, v0, v1

    const/16 v1, 0xec

    aput-object v238, v0, v1

    const/16 v1, 0xed

    aput-object v239, v0, v1

    const/16 v1, 0xee

    aput-object v240, v0, v1

    const/16 v1, 0xef

    aput-object v241, v0, v1

    const/16 v1, 0xf0

    aput-object v242, v0, v1

    const/16 v1, 0xf1

    aput-object v243, v0, v1

    const/16 v1, 0xf2

    aput-object v244, v0, v1

    const/16 v1, 0xf3

    aput-object v245, v0, v1

    const/16 v1, 0xf4

    aput-object v246, v0, v1

    const/16 v1, 0xf5

    aput-object v247, v0, v1

    const/16 v1, 0xf6

    aput-object v248, v0, v1

    const/16 v1, 0xf7

    aput-object v249, v0, v1

    const/16 v1, 0xf8

    aput-object v250, v0, v1

    const/16 v1, 0xf9

    aput-object v251, v0, v1

    const/16 v1, 0xfa

    aput-object v252, v0, v1

    const/16 v1, 0xfb

    aput-object v253, v0, v1

    const/16 v1, 0xfc

    aput-object v254, v0, v1

    const/16 v1, 0xfd

    aput-object v255, v0, v1

    const/16 v1, 0xfe

    move-object/from16 v2, v256

    aput-object v2, v0, v1

    const/16 v1, 0xff

    move-object/from16 v2, v257

    aput-object v2, v0, v1

    const/16 v1, 0x100

    move-object/from16 v2, v258

    aput-object v2, v0, v1

    const/16 v1, 0x101

    move-object/from16 v2, v259

    aput-object v2, v0, v1

    const/16 v1, 0x102

    move-object/from16 v2, v260

    aput-object v2, v0, v1

    const/16 v1, 0x103

    move-object/from16 v2, v261

    aput-object v2, v0, v1

    const/16 v1, 0x104

    move-object/from16 v2, v262

    aput-object v2, v0, v1

    const/16 v1, 0x105

    move-object/from16 v2, v263

    aput-object v2, v0, v1

    const/16 v1, 0x106

    move-object/from16 v2, v264

    aput-object v2, v0, v1

    const/16 v1, 0x107

    move-object/from16 v2, v265

    aput-object v2, v0, v1

    const/16 v1, 0x108

    move-object/from16 v2, v266

    aput-object v2, v0, v1

    const/16 v1, 0x109

    move-object/from16 v2, v267

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    move-object/from16 v2, v268

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    move-object/from16 v2, v269

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    move-object/from16 v2, v270

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    move-object/from16 v2, v271

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    move-object/from16 v2, v272

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    move-object/from16 v2, v273

    aput-object v2, v0, v1

    const/16 v1, 0x110

    move-object/from16 v2, v274

    aput-object v2, v0, v1

    const/16 v1, 0x111

    move-object/from16 v2, v275

    aput-object v2, v0, v1

    const/16 v1, 0x112

    move-object/from16 v2, v276

    aput-object v2, v0, v1

    const/16 v1, 0x113

    move-object/from16 v2, v277

    aput-object v2, v0, v1

    const/16 v1, 0x114

    move-object/from16 v2, v278

    aput-object v2, v0, v1

    const/16 v1, 0x115

    move-object/from16 v2, v279

    aput-object v2, v0, v1

    const/16 v1, 0x116

    move-object/from16 v2, v280

    aput-object v2, v0, v1

    const/16 v1, 0x117

    move-object/from16 v2, v281

    aput-object v2, v0, v1

    const/16 v1, 0x118

    move-object/from16 v2, v282

    aput-object v2, v0, v1

    const/16 v1, 0x119

    move-object/from16 v2, v283

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    move-object/from16 v2, v284

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    move-object/from16 v2, v285

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    move-object/from16 v2, v286

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    move-object/from16 v2, v287

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    move-object/from16 v2, v288

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    move-object/from16 v2, v289

    aput-object v2, v0, v1

    const/16 v1, 0x120

    move-object/from16 v2, v290

    aput-object v2, v0, v1

    const/16 v1, 0x121

    move-object/from16 v2, v291

    aput-object v2, v0, v1

    const/16 v1, 0x122

    move-object/from16 v2, v292

    aput-object v2, v0, v1

    const/16 v1, 0x123

    move-object/from16 v2, v293

    aput-object v2, v0, v1

    const/16 v1, 0x124

    move-object/from16 v2, v294

    aput-object v2, v0, v1

    const/16 v1, 0x125

    move-object/from16 v2, v295

    aput-object v2, v0, v1

    const/16 v1, 0x126

    move-object/from16 v2, v296

    aput-object v2, v0, v1

    const/16 v1, 0x127

    move-object/from16 v2, v297

    aput-object v2, v0, v1

    const/16 v1, 0x128

    move-object/from16 v2, v298

    aput-object v2, v0, v1

    const/16 v1, 0x129

    move-object/from16 v2, v299

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    move-object/from16 v2, v300

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    move-object/from16 v2, v301

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    aput-object v15, v0, v1

    return-object v0

    :array_d60
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_d7c
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_d98
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_db4
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_dd0
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_dec
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_e08
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_e24
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_e40
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_e5c
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_e78
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_e94
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_eb0
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_ecc
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_ee8
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_f04
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_f20
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_f3c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_f58
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_f74
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_f90
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_fac
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_fc8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_fe4
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1000
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_101c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1038
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1054
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1070
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_108c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_10a8
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_10c4
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_10e0
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_10fc
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1118
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1134
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1150
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_116c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1188
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_11a4
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_11c0
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_11dc
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_11f8
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1214
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1230
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_124c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_1268
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1284
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_12a0
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_12bc
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_12d8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_12f4
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1310
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_132c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1348
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_1364
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1380
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_139c
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_13b8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_13d4
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_13f0
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_140c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1428
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1444
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1460
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_147c
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1498
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_14b4
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_14d0
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_14ec
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1508
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_1524
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1540
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_155c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1578
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1594
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_15b0
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_15cc
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_15e8
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_1604
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1620
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_163c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_1658
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_1674
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1690
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_16ac
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_16c8
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_16e4
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1700
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_171c
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1738
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1754
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1770
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_178c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_17a8
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_17c4
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_17e0
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_17fc
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_1818
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_1834
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1850
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_186c
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1888
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_18a4
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_18c0
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_18dc
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_18f8
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1914
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1930
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_194c
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_1968
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_1984
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_19a0
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_19bc
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_19d8
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_19f4
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1a10
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1a2c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1a48
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1a64
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_1a80
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1a9c
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1ab8
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1ad4
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1af0
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1b0c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1b28
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1b44
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1b60
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1b7c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1b98
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1bb4
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_1bd0
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_1bec
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1c08
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_1c24
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1c40
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1c5c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_1c78
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1c94
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_1cb0
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_1ccc
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1ce8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1d04
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1d20
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1d3c
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_1d58
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_1d74
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1d90
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1dac
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1dc8
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1de4
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1e00
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1e1c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1e38
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1e54
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1e70
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1e8c
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_1ea8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_1ec4
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1ee0
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1efc
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_1f18
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1f34
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1f50
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1f6c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1f88
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1fa4
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1fc0
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1fdc
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1ff8
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2014
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_2030
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_204c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2068
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2084
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_20a0
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_20bc
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_20d8
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_20f4
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_2110
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_212c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_2148
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2164
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_2180
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_219c
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_21b8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_21d4
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_21f0
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_220c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2228
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2244
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2260
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_227c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_2298
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_22b4
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_22d0
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_22ec
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2308
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2324
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_2340
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_235c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_2378
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_2394
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_23b0
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_23cc
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_23e8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_2404
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_2420
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_243c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2458
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2474
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_2490
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_24ac
    .array-data 4
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_24c8
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_24e4
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_2500
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_251c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2538
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_2554
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2570
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_258c
    .array-data 4
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_25a8
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_25c4
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_25e0
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_25fc
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_2618
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_2634
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2650
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_266c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_2688
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_26a4
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_26c0
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_26dc
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_26f8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2714
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2730
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_274c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2768
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2784
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_27a0
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_27bc
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_27d8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_27f4
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_2810
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_282c
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_2848
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_2864
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2880
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_289c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_28b8
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_28d4
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_28f0
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_290c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2928
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2944
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2960
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_297c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_2998
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_29b4
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_29d0
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_29ec
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2a08
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_2a24
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2a40
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2a5c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2a78
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2a94
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2ab0
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_2acc
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_2ae8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_2b04
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2b20
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2b3c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2b58
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_2b74
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_2b90
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_2bac
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2bc8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2be4
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2c00
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2c1c
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2c38
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_2c54
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_2c70
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2c8c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_2ca8
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2cc4
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_2ce0
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2cfc
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2d18
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2d34
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2d50
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_2d6c
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_2d88
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_2da4
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_2dc0
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2ddc
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2df8
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_2e14
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_2e30
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data
.end method

.method private loadCalendarData()V
    .registers 17

    move-object/from16 v1, p0

    const-string v0, "1.8.0_1"

    const-string v2, "islamic-umalqura"

    const-string v3, "Hijrah-umalqura"

    :try_start_8
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljj$/time/chrono/HijrahChronology;->hijrahUmalquraMonthLengths()[[I

    move-result-object v5

    const/16 v6, 0x514

    array-length v7, v5

    const/16 v8, 0x514

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    move-object v9, v3

    move-object v10, v2

    move-object v11, v0

    const/16 v12, 0x75a

    const/16 v13, 0xb

    const/16 v14, 0xc

    invoke-static {v12, v13, v14}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v12

    invoke-virtual {v12}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v12

    long-to-int v13, v12

    const/16 v12, 0x514

    :goto_2d
    if-gt v12, v7, :cond_6b

    add-int/lit16 v15, v12, -0x514

    aget-object v15, v5, v15

    array-length v8, v15

    if-ne v8, v14, :cond_43

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    add-int/lit8 v12, v12, 0x1

    const/16 v8, 0x514

    goto :goto_2d

    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    array-length v3, v15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "wrong number of months on line: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "; count: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    invoke-virtual {v1}, Ljj$/time/chrono/HijrahChronology;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    invoke-virtual {v1}, Ljj$/time/chrono/HijrahChronology;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c7

    if-eqz v13, :cond_bf

    const/16 v0, 0x3cf0

    iput v0, v1, Ljj$/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    iput v13, v1, Ljj$/time/chrono/HijrahChronology;->minEpochDay:I

    iget v0, v1, Ljj$/time/chrono/HijrahChronology;->minEpochDay:I

    const/16 v2, 0x514

    invoke-direct {v1, v0, v2, v7, v4}, Ljj$/time/chrono/HijrahChronology;->createEpochMonths(IIILjava/util/Map;)[I

    move-result-object v0

    iput-object v0, v1, Ljj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    iget-object v0, v1, Ljj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    iget-object v2, v1, Ljj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    iput v0, v1, Ljj$/time/chrono/HijrahChronology;->maxEpochDay:I

    const/16 v0, 0x514

    :goto_a4
    if-ge v0, v7, :cond_bd

    invoke-virtual {v1, v0}, Ljj$/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v2

    iget v3, v1, Ljj$/time/chrono/HijrahChronology;->minYearLength:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Ljj$/time/chrono/HijrahChronology;->minYearLength:I

    iget v3, v1, Ljj$/time/chrono/HijrahChronology;->maxYearLength:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Ljj$/time/chrono/HijrahChronology;->maxYearLength:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    :cond_bd
    nop

    return-void

    :cond_bf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Configuration does not contain a ISO start date"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Configuration does not contain a version"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Configuration is for a different calendar type: islamic-umalqura"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Configuration is for a different calendar: Hijrah-umalqura"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_df} :catch_df

    :catch_df
    move-exception v0

    new-instance v2, Ljj$/time/DateTimeException;

    iget-object v3, v1, Ljj$/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to initialize HijrahCalendar: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private yearMonthToDayOfYear(II)I
    .registers 6

    invoke-direct {p0, p1}, Ljj$/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    add-int v1, v0, p2

    invoke-direct {p0, v1}, Ljj$/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v1

    invoke-direct {p0, v0}, Ljj$/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private yearToEpochMonth(I)I
    .registers 4

    mul-int/lit8 v0, p1, 0xc

    iget v1, p0, Ljj$/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method checkValidDayOfYear(I)V
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahChronology;->getMaximumDayOfYear()I

    move-result v0

    if-gt p1, v0, :cond_a

    return-void

    :cond_a
    new-instance v0, Ljj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hijrah day of year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkValidMonth(I)V
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    const/16 v0, 0xc

    if-gt p1, v0, :cond_8

    return-void

    :cond_8
    new-instance v0, Ljj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hijrah month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkValidYear(J)I
    .registers 6

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_14

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_14

    long-to-int v0, p1

    return v0

    :cond_14
    new-instance v0, Ljj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hijrah year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic date(III)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/HijrahChronology;->date(III)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/ChronoLocalDate;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Ljj$/time/chrono/HijrahChronology;->date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/HijrahChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Ljj$/time/chrono/HijrahDate;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Ljj$/time/chrono/HijrahDate;->of(Ljj$/time/chrono/HijrahChronology;III)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/HijrahDate;
    .registers 6

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahChronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Ljj$/time/chrono/HijrahChronology;->date(III)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/HijrahDate;
    .registers 4

    instance-of v0, p1, Ljj$/time/chrono/HijrahDate;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0

    :cond_8
    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ljj$/time/chrono/HijrahDate;->ofEpochDay(Ljj$/time/chrono/HijrahChronology;J)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahChronology;->dateEpochDay(J)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Ljj$/time/chrono/HijrahDate;
    .registers 4

    invoke-static {p0, p1, p2}, Ljj$/time/chrono/HijrahDate;->ofEpochDay(Ljj$/time/chrono/HijrahChronology;J)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow()Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahChronology;->dateNow()Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/HijrahChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/HijrahChronology;->dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Ljj$/time/chrono/HijrahDate;
    .registers 2

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/HijrahChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/HijrahDate;
    .registers 3

    invoke-static {p1}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/HijrahChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/HijrahDate;
    .registers 3

    invoke-static {p1}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/HijrahChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahChronology;->dateYearDay(II)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/HijrahChronology;->dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Ljj$/time/chrono/HijrahDate;
    .registers 7

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Ljj$/time/chrono/HijrahDate;->of(Ljj$/time/chrono/HijrahChronology;III)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v1

    if-gt p2, v1, :cond_13

    add-int/lit8 v1, p2, -0x1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/HijrahDate;->plusDays(J)Ljj$/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1

    :cond_13
    new-instance v1, Ljj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dayOfYear: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/HijrahDate;
    .registers 5

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahChronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Ljj$/time/chrono/HijrahChronology;->dateYearDay(II)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Ljj$/time/chrono/Era;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/HijrahChronology;->eraOf(I)Ljj$/time/chrono/HijrahEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Ljj$/time/chrono/HijrahEra;
    .registers 4

    packed-switch p1, :pswitch_data_e

    new-instance v0, Ljj$/time/DateTimeException;

    const-string v1, "invalid Hijrah era"

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b  #0x1
    sget-object v0, Ljj$/time/chrono/HijrahEra;->AH:Ljj$/time/chrono/HijrahEra;

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b  #00000001
    .end packed-switch
.end method

.method public eras()Ljava/util/List;
    .registers 2

    invoke-static {}, Ljj$/time/chrono/HijrahEra;->values()[Ljj$/time/chrono/HijrahEra;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/HijrahChronology;->calendarType:Ljava/lang/String;

    return-object v0
.end method

.method getDayOfYear(II)I
    .registers 4

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0}, Ljj$/time/chrono/HijrahChronology;->yearMonthToDayOfYear(II)I

    move-result v0

    return v0
.end method

.method getEpochDay(III)J
    .registers 8

    invoke-direct {p0}, Ljj$/time/chrono/HijrahChronology;->checkCalendarInit()V

    invoke-virtual {p0, p2}, Ljj$/time/chrono/HijrahChronology;->checkValidMonth(I)V

    invoke-direct {p0, p1}, Ljj$/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_3f

    iget-object v1, p0, Ljj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3f

    const/4 v1, 0x1

    if-lt p3, v1, :cond_26

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v1

    if-gt p3, v1, :cond_26

    invoke-direct {p0, v0}, Ljj$/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v1

    add-int/lit8 v2, p3, -0x1

    add-int/2addr v1, v2

    int-to-long v1, v1

    return-wide v1

    :cond_26
    new-instance v1, Ljj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Hijrah day of month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    new-instance v1, Ljj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Hijrah date, year: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getHijrahDateInfo(I)[I
    .registers 10

    invoke-direct {p0}, Ljj$/time/chrono/HijrahChronology;->checkCalendarInit()V

    iget v0, p0, Ljj$/time/chrono/HijrahChronology;->minEpochDay:I

    if-lt p1, v0, :cond_2e

    iget v0, p0, Ljj$/time/chrono/HijrahChronology;->maxEpochDay:I

    if-ge p1, v0, :cond_2e

    invoke-direct {p0, p1}, Ljj$/time/chrono/HijrahChronology;->epochDayToEpochMonth(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljj$/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v1

    invoke-direct {p0, v0}, Ljj$/time/chrono/HijrahChronology;->epochMonthToMonth(I)I

    move-result v2

    invoke-direct {p0, v0}, Ljj$/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v3

    sub-int v4, p1, v3

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x1

    aput v6, v5, v7

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x2

    aput v6, v5, v7

    return-object v5

    :cond_2e
    new-instance v0, Ljj$/time/DateTimeException;

    const-string v1, "Hijrah date out of range"

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method getMaximumDayOfYear()I
    .registers 2

    iget v0, p0, Ljj$/time/chrono/HijrahChronology;->maxYearLength:I

    return v0
.end method

.method getMaximumMonthLength()I
    .registers 2

    iget v0, p0, Ljj$/time/chrono/HijrahChronology;->maxMonthLength:I

    return v0
.end method

.method getMaximumYear()I
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljj$/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method getMinimumMonthLength()I
    .registers 2

    iget v0, p0, Ljj$/time/chrono/HijrahChronology;->minMonthLength:I

    return v0
.end method

.method getMinimumYear()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljj$/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v0

    return v0
.end method

.method getMonthLength(II)I
    .registers 7

    invoke-direct {p0, p1}, Ljj$/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_13

    iget-object v1, p0, Ljj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v1, v1

    if-ge v0, v1, :cond_13

    invoke-direct {p0, v0}, Ljj$/time/chrono/HijrahChronology;->epochMonthLength(I)I

    move-result v1

    return v1

    :cond_13
    new-instance v1, Ljj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Hijrah date, year: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getSmallestMaximumDayOfYear()I
    .registers 2

    iget v0, p0, Ljj$/time/chrono/HijrahChronology;->minYearLength:I

    return v0
.end method

.method getYearLength(I)I
    .registers 3

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Ljj$/time/chrono/HijrahChronology;->yearMonthToDayOfYear(II)I

    move-result v0

    return v0
.end method

.method public isLeapYear(J)Z
    .registers 7

    invoke-direct {p0}, Ljj$/time/chrono/HijrahChronology;->checkCalendarInit()V

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_22

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v3, p1, v0

    if-lez v3, :cond_17

    goto :goto_22

    :cond_17
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljj$/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v0

    const/16 v1, 0x162

    if-le v0, v1, :cond_21

    const/4 v2, 0x1

    :cond_21
    return v2

    :cond_22
    :goto_22
    return v2
.end method

.method public localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/AbstractChronology;->localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public prolepticYear(Ljj$/time/chrono/Era;I)I
    .registers 5

    instance-of v0, p1, Ljj$/time/chrono/HijrahEra;

    if-eqz v0, :cond_5

    return p2

    :cond_5
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be HijrahEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;
    .registers 12

    invoke-direct {p0}, Ljj$/time/chrono/HijrahChronology;->checkCalendarInit()V

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_52

    move-object v0, p1

    sget-object v1, Ljj$/time/chrono/HijrahChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_58

    invoke-virtual {p1}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_1a  #0x6
    invoke-static {v2, v3, v2, v3}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_1f  #0x4, 0x5
    invoke-virtual {p0}, Ljj$/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_2e  #0x3
    const-wide/16 v4, 0x5

    invoke-static {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_35  #0x2
    invoke-virtual {p0}, Ljj$/time/chrono/HijrahChronology;->getMaximumDayOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_3f  #0x1
    invoke-virtual {p0}, Ljj$/time/chrono/HijrahChronology;->getMinimumMonthLength()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahChronology;->getMaximumMonthLength()I

    move-result v1

    int-to-long v8, v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    invoke-static/range {v2 .. v9}, Ljj$/time/temporal/ValueRange;->of(JJJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :cond_52
    invoke-virtual {p1}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3f  #00000001
        :pswitch_35  #00000002
        :pswitch_2e  #00000003
        :pswitch_1f  #00000004
        :pswitch_1f  #00000005
        :pswitch_1a  #00000006
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahChronology;->resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/HijrahDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljj$/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->zonedDateTime(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/AbstractChronology;->zonedDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
