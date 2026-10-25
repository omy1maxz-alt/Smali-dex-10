.class public final Ljj$/time/zone/ZoneRules;
.super Ljava/lang/Object;
.source "ZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY_LASTRULES:[Ljj$/time/zone/ZoneOffsetTransitionRule;

.field private static final EMPTY_LDT_ARRAY:[Ljj$/time/LocalDateTime;

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final LAST_CACHED_YEAR:I = 0x834

.field private static final NO_TRANSITIONS:[Ljj$/time/zone/ZoneOffsetTransition;

.field private static final serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field private final lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

.field private final transient lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

.field private final savingsInstantTransitions:[J

.field private final savingsLocalTransitions:[Ljj$/time/LocalDateTime;

.field private final standardOffsets:[Ljj$/time/ZoneOffset;

.field private final standardTransitions:[J

.field private final timeZone:Ljava/util/TimeZone;

.field private final wallOffsets:[Ljj$/time/ZoneOffset;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [J

    sput-object v1, Ljj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    new-array v1, v0, [Ljj$/time/zone/ZoneOffsetTransitionRule;

    sput-object v1, Ljj$/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    new-array v1, v0, [Ljj$/time/LocalDateTime;

    sput-object v1, Ljj$/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljj$/time/LocalDateTime;

    new-array v0, v0, [Ljj$/time/zone/ZoneOffsetTransition;

    sput-object v0, Ljj$/time/zone/ZoneRules;->NO_TRANSITIONS:[Ljj$/time/zone/ZoneOffsetTransition;

    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x1

    new-array v0, v0, [Ljj$/time/ZoneOffset;

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {v1}, Ljj$/time/zone/ZoneRules;->offsetFromMillis(I)Ljj$/time/ZoneOffset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v0, Ljj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->standardTransitions:[J

    sget-object v0, Ljj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    sget-object v0, Ljj$/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljj$/time/LocalDateTime;

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    sget-object v0, Ljj$/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    iput-object p1, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>(Ljj$/time/ZoneOffset;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x1

    new-array v0, v0, [Ljj$/time/ZoneOffset;

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v0, Ljj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->standardTransitions:[J

    sget-object v0, Ljj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    sget-object v0, Ljj$/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljj$/time/LocalDateTime;

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    sget-object v0, Ljj$/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method constructor <init>(Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->standardTransitions:[J

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljj$/time/ZoneOffset;

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v0, 0x0

    :goto_22
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->standardTransitions:[J

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {v2}, Ljj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v2

    aput-wide v2, v1, v0

    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {v3}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {v3}, Ljj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-virtual {v3}, Ljj$/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljj$/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljj$/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    :cond_7b
    invoke-virtual {v3}, Ljj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljj$/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljj$/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljj$/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_89
    invoke-virtual {v3}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljj$/time/LocalDateTime;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljj$/time/LocalDateTime;

    iput-object v2, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljj$/time/ZoneOffset;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljj$/time/ZoneOffset;

    iput-object v2, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    const/4 v2, 0x0

    :goto_b6
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_cd

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {v4}, Ljj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    :cond_cd
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_e7

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljj$/time/zone/ZoneOffsetTransitionRule;

    invoke-interface {p5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljj$/time/zone/ZoneOffsetTransitionRule;

    iput-object v2, p0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    const/4 v2, 0x0

    iput-object v2, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    return-void

    :cond_e7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Too many transition rules"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private constructor <init>([J[Ljj$/time/ZoneOffset;[J[Ljj$/time/ZoneOffset;[Ljj$/time/zone/ZoneOffsetTransitionRule;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    iput-object p1, p0, Ljj$/time/zone/ZoneRules;->standardTransitions:[J

    iput-object p2, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    iput-object p3, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iput-object p4, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    iput-object p5, p0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    array-length v0, p3

    if-nez v0, :cond_1c

    sget-object v0, Ljj$/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljj$/time/LocalDateTime;

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    goto :goto_66

    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_22
    array-length v2, p3

    if-ge v1, v2, :cond_58

    aget-object v2, p4, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p4, v3

    new-instance v4, Ljj$/time/zone/ZoneOffsetTransition;

    aget-wide v5, p3, v1

    invoke-direct {v4, v5, v6, v2, v3}, Ljj$/time/zone/ZoneOffsetTransition;-><init>(JLjj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V

    invoke-virtual {v4}, Ljj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {v4}, Ljj$/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljj$/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljj$/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_47
    invoke-virtual {v4}, Ljj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljj$/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljj$/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljj$/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljj$/time/LocalDateTime;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljj$/time/LocalDateTime;

    iput-object v1, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    :goto_66
    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method private findOffsetInfo(Ljj$/time/LocalDateTime;Ljj$/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p2}, Ljj$/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p2}, Ljj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1, v0}, Ljj$/time/LocalDateTime;->isBefore(Ljj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p2}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    :cond_15
    invoke-virtual {p2}, Ljj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljj$/time/LocalDateTime;->isBefore(Ljj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_20

    return-object p2

    :cond_20
    invoke-virtual {p2}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    :cond_25
    invoke-virtual {p1, v0}, Ljj$/time/LocalDateTime;->isBefore(Ljj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p2}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    :cond_30
    invoke-virtual {p2}, Ljj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljj$/time/LocalDateTime;->isBefore(Ljj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p2}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    :cond_3f
    return-object p2
.end method

.method private findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Ljj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljj$/time/zone/ZoneOffsetTransition;

    if-eqz v3, :cond_13

    return-object v3

    :cond_13
    iget-object v4, v0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    if-eqz v4, :cond_cb

    const/16 v4, 0x708

    if-ge v1, v4, :cond_1e

    sget-object v4, Ljj$/time/zone/ZoneRules;->NO_TRANSITIONS:[Ljj$/time/zone/ZoneOffsetTransition;

    return-object v4

    :cond_1e
    add-int/lit8 v4, v1, -0x1

    const/16 v6, 0xc

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8, v8}, Ljj$/time/LocalDateTime;->of(IIIII)Ljj$/time/LocalDateTime;

    move-result-object v4

    iget-object v6, v0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    aget-object v6, v6, v8

    invoke-virtual {v4, v6}, Ljj$/time/LocalDateTime;->toEpochSecond(Ljj$/time/ZoneOffset;)J

    move-result-wide v6

    iget-object v8, v0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const-wide/16 v9, 0x3e8

    mul-long v11, v6, v9

    invoke-virtual {v8, v11, v12}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    const-wide/32 v11, 0x1e7cb00

    add-long/2addr v11, v6

    sget-object v3, Ljj$/time/zone/ZoneRules;->NO_TRANSITIONS:[Ljj$/time/zone/ZoneOffsetTransition;

    :goto_41
    cmp-long v13, v6, v11

    if-gez v13, :cond_bd

    const-wide/32 v13, 0x76a700

    add-long/2addr v13, v6

    iget-object v15, v0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    move-wide/from16 v16, v9

    mul-long v9, v13, v16

    invoke-virtual {v15, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-eq v8, v9, :cond_b9

    :goto_55
    sub-long v9, v13, v6

    const-wide/16 v18, 0x1

    cmp-long v15, v9, v18

    if-lez v15, :cond_79

    add-long v9, v13, v6

    move-wide/from16 v18, v6

    const-wide/16 v5, 0x2

    invoke-static {v9, v10, v5, v6}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v5

    iget-object v7, v0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    mul-long v9, v5, v16

    invoke-virtual {v7, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    if-ne v7, v8, :cond_74

    move-wide v9, v5

    move-wide v6, v9

    goto :goto_78

    :cond_74
    move-wide v9, v5

    move-wide v13, v9

    move-wide/from16 v6, v18

    :goto_78
    goto :goto_55

    :cond_79
    move-wide/from16 v18, v6

    iget-object v5, v0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    mul-long v6, v18, v16

    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    if-eq v5, v8, :cond_88

    move-wide/from16 v5, v18

    move-wide v13, v5

    :cond_88
    invoke-static {v8}, Ljj$/time/zone/ZoneRules;->offsetFromMillis(I)Ljj$/time/ZoneOffset;

    move-result-object v5

    iget-object v6, v0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    mul-long v9, v13, v16

    invoke-virtual {v6, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    invoke-static {v6}, Ljj$/time/zone/ZoneRules;->offsetFromMillis(I)Ljj$/time/ZoneOffset;

    move-result-object v7

    invoke-direct {v0, v13, v14, v7}, Ljj$/time/zone/ZoneRules;->findYear(JLjj$/time/ZoneOffset;)I

    move-result v8

    if-ne v8, v1, :cond_b6

    array-length v8, v3

    add-int/lit8 v8, v8, 0x1

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, [Ljj$/time/zone/ZoneOffsetTransition;

    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    new-instance v9, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-direct {v9, v13, v14, v5, v7}, Ljj$/time/zone/ZoneOffsetTransition;-><init>(JLjj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V

    aput-object v9, v3, v8

    move v8, v6

    move-wide/from16 v6, v18

    goto :goto_b9

    :cond_b6
    move v8, v6

    move-wide/from16 v6, v18

    :cond_b9
    :goto_b9
    move-wide v6, v13

    move-wide/from16 v9, v16

    goto :goto_41

    :cond_bd
    const/16 v5, 0x77c

    if-gt v5, v1, :cond_ca

    const/16 v15, 0x834

    if-ge v1, v15, :cond_ca

    iget-object v5, v0, Ljj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ca
    return-object v3

    :cond_cb
    iget-object v4, v0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    array-length v5, v4

    new-array v3, v5, [Ljj$/time/zone/ZoneOffsetTransition;

    const/4 v5, 0x0

    :goto_d1
    array-length v6, v4

    if-ge v5, v6, :cond_df

    aget-object v6, v4, v5

    invoke-virtual {v6, v1}, Ljj$/time/zone/ZoneOffsetTransitionRule;->createTransition(I)Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d1

    :cond_df
    const/16 v15, 0x834

    if-ge v1, v15, :cond_e8

    iget-object v5, v0, Ljj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e8
    return-object v3
.end method

.method private findYear(JLjj$/time/ZoneOffset;)I
    .registers 9

    invoke-virtual {p3}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    const v2, 0x15180

    invoke-static {v0, v1, v2}, Ljj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/LocalDate;->getYear()I

    move-result v4

    return v4
.end method

.method private getOffsetInfo(Ljj$/time/LocalDateTime;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Ljj$/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-direct {p0, v0}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_27

    iget-object v2, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    aget-object v1, v3, v1

    invoke-virtual {p1, v1}, Ljj$/time/LocalDateTime;->toEpochSecond(Ljj$/time/ZoneOffset;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    invoke-static {v1}, Ljj$/time/zone/ZoneRules;->offsetFromMillis(I)Ljj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    :cond_27
    const/4 v2, 0x0

    array-length v3, v0

    :goto_29
    if-ge v1, v3, :cond_44

    aget-object v4, v0, v1

    invoke-direct {p0, p1, v4}, Ljj$/time/zone/ZoneRules;->findOffsetInfo(Ljj$/time/LocalDateTime;Ljj$/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljj$/time/zone/ZoneOffsetTransition;

    if-nez v5, :cond_43

    invoke-virtual {v4}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    goto :goto_43

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_43
    :goto_43
    return-object v2

    :cond_44
    return-object v2

    :cond_45
    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    aget-object v0, v0, v1

    return-object v0

    :cond_4f
    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    if-lez v0, :cond_89

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    iget-object v2, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljj$/time/LocalDateTime;->isAfter(Ljj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-virtual {p1}, Ljj$/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-direct {p0, v0}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, v0

    :goto_6d
    if-ge v1, v3, :cond_88

    aget-object v4, v0, v1

    invoke-direct {p0, p1, v4}, Ljj$/time/zone/ZoneRules;->findOffsetInfo(Ljj$/time/LocalDateTime;Ljj$/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljj$/time/zone/ZoneOffsetTransition;

    if-nez v5, :cond_87

    invoke-virtual {v4}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    goto :goto_87

    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_87
    :goto_87
    return-object v2

    :cond_88
    return-object v2

    :cond_89
    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_97

    iget-object v2, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    aget-object v1, v2, v1

    return-object v1

    :cond_97
    if-gez v0, :cond_9d

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_b6

    :cond_9d
    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_b6

    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    add-int/lit8 v0, v0, 0x1

    :cond_b6
    :goto_b6
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_e8

    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljj$/time/zone/ZoneRules;->savingsLocalTransitions:[Ljj$/time/LocalDateTime;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    div-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    div-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    invoke-virtual {v3}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    if-le v5, v6, :cond_e2

    new-instance v5, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-direct {v5, v1, v3, v4}, Ljj$/time/zone/ZoneOffsetTransition;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V

    return-object v5

    :cond_e2
    new-instance v5, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-direct {v5, v2, v3, v4}, Ljj$/time/zone/ZoneOffsetTransition;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V

    return-object v5

    :cond_e8
    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static of(Ljj$/time/ZoneOffset;)Ljj$/time/zone/ZoneRules;
    .registers 2

    const-string v0, "offset"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/zone/ZoneRules;

    invoke-direct {v0, p0}, Ljj$/time/zone/ZoneRules;-><init>(Ljj$/time/ZoneOffset;)V

    return-object v0
.end method

.method public static of(Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljj$/time/zone/ZoneRules;
    .registers 12

    const-string v0, "baseStandardOffset"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "baseWallOffset"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "standardOffsetTransitionList"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "transitionList"

    invoke-static {p3, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "lastRules"

    invoke-static {p4, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljj$/time/zone/ZoneRules;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ljj$/time/zone/ZoneRules;-><init>(Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method private static offsetFromMillis(I)Ljj$/time/ZoneOffset;
    .registers 2

    div-int/lit16 v0, p0, 0x3e8

    invoke-static {v0}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/zone/ZoneRules;
    .registers 11

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v1, Ljj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    goto :goto_b

    :cond_9
    new-array v1, v0, [J

    :goto_b
    move-object v3, v1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_18

    invoke-static {p0}, Ljj$/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_18
    add-int/lit8 v1, v0, 0x1

    new-array v4, v1, [Ljj$/time/ZoneOffset;

    const/4 v1, 0x0

    :goto_1d
    array-length v2, v4

    if-ge v1, v2, :cond_29

    invoke-static {p0}, Ljj$/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljj$/time/ZoneOffset;

    move-result-object v2

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_29
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    if-nez v1, :cond_33

    sget-object v2, Ljj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    move-object v5, v2

    goto :goto_36

    :cond_33
    new-array v2, v1, [J

    move-object v5, v2

    :goto_36
    nop

    const/4 v2, 0x0

    :goto_38
    if-ge v2, v1, :cond_43

    invoke-static {p0}, Ljj$/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v6

    aput-wide v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_43
    add-int/lit8 v2, v1, 0x1

    new-array v6, v2, [Ljj$/time/ZoneOffset;

    const/4 v2, 0x0

    :goto_48
    array-length v7, v6

    if-ge v2, v7, :cond_54

    invoke-static {p0}, Ljj$/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljj$/time/ZoneOffset;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_54
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v8

    if-nez v8, :cond_5d

    sget-object v2, Ljj$/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    goto :goto_5f

    :cond_5d
    new-array v2, v8, [Ljj$/time/zone/ZoneOffsetTransitionRule;

    :goto_5f
    move-object v7, v2

    const/4 v2, 0x0

    :goto_61
    if-ge v2, v8, :cond_6c

    invoke-static {p0}, Ljj$/time/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Ljj$/time/zone/ZoneOffsetTransitionRule;

    move-result-object v9

    aput-object v9, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_6c
    new-instance v2, Ljj$/time/zone/ZoneRules;

    invoke-direct/range {v2 .. v7}, Ljj$/time/zone/ZoneRules;-><init>([J[Ljj$/time/ZoneOffset;[J[Ljj$/time/ZoneOffset;[Ljj$/time/zone/ZoneOffsetTransitionRule;)V

    return-object v2
.end method

.method static readExternalTimeZone(Ljava/io/DataInput;)Ljj$/time/zone/ZoneRules;
    .registers 3

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljj$/time/zone/ZoneRules;

    invoke-direct {v1, v0}, Ljj$/time/zone/ZoneRules;-><init>(Ljava/util/TimeZone;)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/zone/Ser;

    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_9

    const/16 v1, 0x64

    goto :goto_a

    :cond_9
    const/4 v1, 0x1

    :goto_a
    invoke-direct {v0, v1, p0}, Ljj$/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/zone/ZoneRules;

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    move-object v1, p1

    check-cast v1, Ljj$/time/zone/ZoneRules;

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    iget-object v4, v1, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-static {v3, v4}, Ljj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->standardTransitions:[J

    iget-object v4, v1, Ljj$/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    iget-object v4, v1, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v4, v1, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    iget-object v4, v1, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    iget-object v4, v1, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    return v0

    :cond_4b
    return v2
.end method

.method public getDaylightSavings(Ljj$/time/Instant;)Ljj$/time/Duration;
    .registers 6

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    sub-int v1, v0, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofMillis(J)Ljj$/time/Duration;

    move-result-object v1

    return-object v1

    :cond_1c
    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_24

    sget-object v0, Ljj$/time/Duration;->ZERO:Ljj$/time/Duration;

    return-object v0

    :cond_24
    invoke-virtual {p0, p1}, Ljj$/time/zone/ZoneRules;->getStandardOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;
    .registers 11

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    invoke-static {v0}, Ljj$/time/zone/ZoneRules;->offsetFromMillis(I)Ljj$/time/ZoneOffset;

    move-result-object v0

    return-object v0

    :cond_13
    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1e
    invoke-virtual {p1}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    iget-object v2, p0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    array-length v2, v2

    if-lez v2, :cond_61

    iget-object v2, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v2, v3

    cmp-long v2, v0, v3

    if-lez v2, :cond_61

    iget-object v2, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Ljj$/time/zone/ZoneRules;->findYear(JLjj$/time/ZoneOffset;)I

    move-result v2

    invoke-direct {p0, v2}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_47
    array-length v6, v3

    if-ge v5, v6, :cond_5c

    aget-object v4, v3, v5

    invoke-virtual {v4}, Ljj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v6

    cmp-long v8, v0, v6

    if-gez v8, :cond_59

    invoke-virtual {v4}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v6

    return-object v6

    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_5c
    invoke-virtual {v4}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v5

    return-object v5

    :cond_61
    iget-object v2, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_6c

    neg-int v3, v2

    add-int/lit8 v2, v3, -0x2

    :cond_6c
    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    return-object v3
.end method

.method public getOffset(Ljj$/time/LocalDateTime;)Ljj$/time/ZoneOffset;
    .registers 4

    invoke-direct {p0, p1}, Ljj$/time/zone/ZoneRules;->getOffsetInfo(Ljj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljj$/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {v1}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    :cond_10
    move-object v1, v0

    check-cast v1, Ljj$/time/ZoneOffset;

    return-object v1
.end method

.method public getStandardOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;
    .registers 7

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-static {v0}, Ljj$/time/zone/ZoneRules;->offsetFromMillis(I)Ljj$/time/ZoneOffset;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1a
    invoke-virtual {p1}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    iget-object v2, p0, Ljj$/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_29

    neg-int v3, v2

    add-int/lit8 v2, v3, -0x2

    :cond_29
    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    return-object v3
.end method

.method public getTransition(Ljj$/time/LocalDateTime;)Ljj$/time/zone/ZoneOffsetTransition;
    .registers 4

    invoke-direct {p0, p1}, Ljj$/time/zone/ZoneRules;->getOffsetInfo(Ljj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljj$/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljj$/time/zone/ZoneOffsetTransition;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public getTransitionRules()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v2, v2

    if-ge v1, v2, :cond_24

    new-instance v2, Ljj$/time/zone/ZoneOffsetTransition;

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    aget-wide v4, v3, v1

    iget-object v3, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    aget-object v3, v3, v1

    iget-object v6, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    add-int/lit8 v7, v1, 0x1

    aget-object v6, v6, v7

    invoke-direct {v2, v4, v5, v3, v6}, Ljj$/time/zone/ZoneOffsetTransition;-><init>(JLjj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getValidOffsets(Ljj$/time/LocalDateTime;)Ljava/util/List;
    .registers 4

    invoke-direct {p0, p1}, Ljj$/time/zone/ZoneRules;->getOffsetInfo(Ljj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljj$/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {v1}, Ljj$/time/zone/ZoneOffsetTransition;->getValidOffsets()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_10
    move-object v1, v0

    check-cast v1, Ljj$/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isDaylightSavings(Ljj$/time/Instant;)Z
    .registers 4

    invoke-virtual {p0, p1}, Ljj$/time/zone/ZoneRules;->getStandardOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isFixedOffset()Z
    .registers 4

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_24

    :cond_17
    invoke-static {}, Ljj$/time/Instant;->now()Ljj$/time/Instant;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/zone/ZoneRules;->previousTransition(Ljj$/time/Instant;)Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1

    :cond_24
    :goto_24
    return v2

    :cond_25
    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    return v1
.end method

.method public isValidOffset(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Z
    .registers 4

    invoke-virtual {p0, p1}, Ljj$/time/zone/ZoneRules;->getValidOffsets(Ljj$/time/LocalDateTime;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public nextTransition(Ljj$/time/Instant;)Ljj$/time/zone/ZoneOffsetTransition;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const v2, 0x3b9ac9ff

    if-eqz v1, :cond_a3

    invoke-virtual/range {p1 .. p1}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p1}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-direct {v0, v5, v6, v1}, Ljj$/time/zone/ZoneRules;->findYear(JLjj$/time/ZoneOffset;)I

    move-result v1

    invoke-direct {v0, v1}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v8, :cond_2b

    aget-object v10, v7, v9

    invoke-virtual {v10}, Ljj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v11

    cmp-long v13, v5, v11

    if-gez v13, :cond_28

    return-object v10

    :cond_28
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_2b
    if-ge v1, v2, :cond_45

    add-int/lit8 v2, v1, 0x1

    invoke-direct {v0, v2}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v7

    array-length v2, v7

    const/4 v8, 0x0

    :goto_35
    if-ge v8, v2, :cond_45

    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v10

    cmp-long v12, v5, v10

    if-gez v12, :cond_42

    return-object v9

    :cond_42
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    :cond_45
    const-wide/32 v8, 0x1da9c00

    add-long/2addr v8, v5

    iget-object v2, v0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const-wide/16 v10, 0x1

    add-long/2addr v10, v5

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    invoke-virtual {v2, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    invoke-static {}, Ljj$/time/Clock;->systemUTC()Ljj$/time/Clock;

    move-result-object v10

    invoke-virtual {v10}, Ljj$/time/Clock;->millis()J

    move-result-wide v10

    div-long/2addr v10, v12

    const-wide/32 v14, 0x1e7cb00

    add-long/2addr v10, v14

    :goto_63
    cmp-long v14, v8, v10

    if-gtz v14, :cond_a1

    iget-object v14, v0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const/4 v15, 0x0

    const/16 v16, 0x0

    mul-long v3, v8, v12

    invoke-virtual {v14, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    if-eq v2, v3, :cond_9b

    invoke-static {v3}, Ljj$/time/zone/ZoneRules;->offsetFromMillis(I)Ljj$/time/ZoneOffset;

    move-result-object v4

    invoke-direct {v0, v8, v9, v4}, Ljj$/time/zone/ZoneRules;->findYear(JLjj$/time/ZoneOffset;)I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v0, v4}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v4

    array-length v7, v4

    const/4 v12, 0x0

    :goto_84
    if-ge v12, v7, :cond_94

    aget-object v13, v4, v12

    invoke-virtual {v13}, Ljj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v14

    cmp-long v17, v5, v14

    if-gez v17, :cond_91

    return-object v13

    :cond_91
    add-int/lit8 v12, v12, 0x1

    goto :goto_84

    :cond_94
    invoke-direct {v0, v1}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v4

    aget-object v7, v4, v16

    return-object v7

    :cond_9b
    const-wide/32 v17, 0x76a700

    add-long v8, v8, v17

    goto :goto_63

    :cond_a1
    const/4 v15, 0x0

    return-object v15

    :cond_a3
    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v1, v0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v1, v1

    if-nez v1, :cond_ac

    return-object v15

    :cond_ac
    invoke-virtual/range {p1 .. p1}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v3

    iget-object v1, v0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v5, v0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-wide v5, v1, v5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_f2

    iget-object v1, v0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    array-length v1, v1

    if-nez v1, :cond_c3

    return-object v15

    :cond_c3
    iget-object v1, v0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    iget-object v5, v0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v1, v1, v5

    invoke-direct {v0, v3, v4, v1}, Ljj$/time/zone/ZoneRules;->findYear(JLjj$/time/ZoneOffset;)I

    move-result v1

    invoke-direct {v0, v1}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_d6
    if-ge v7, v6, :cond_e6

    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v9

    cmp-long v11, v3, v9

    if-gez v11, :cond_e3

    return-object v8

    :cond_e3
    add-int/lit8 v7, v7, 0x1

    goto :goto_d6

    :cond_e6
    if-ge v1, v2, :cond_f1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {v0, v2}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    aget-object v5, v2, v16

    return-object v5

    :cond_f1
    return-object v15

    :cond_f2
    iget-object v1, v0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_fe

    neg-int v2, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_100

    :cond_fe
    add-int/lit8 v2, v1, 0x1

    :goto_100
    new-instance v1, Ljj$/time/zone/ZoneOffsetTransition;

    iget-object v5, v0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    aget-wide v6, v5, v2

    iget-object v5, v0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    aget-object v5, v5, v2

    iget-object v8, v0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    add-int/lit8 v9, v2, 0x1

    aget-object v8, v8, v9

    invoke-direct {v1, v6, v7, v5, v8}, Ljj$/time/zone/ZoneOffsetTransition;-><init>(JLjj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V

    return-object v1
.end method

.method public previousTransition(Ljj$/time/Instant;)Ljj$/time/zone/ZoneOffsetTransition;
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x1

    const/4 v7, 0x1

    if-eqz v1, :cond_d6

    invoke-virtual/range {p1 .. p1}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Ljj$/time/Instant;->getNano()I

    move-result v1

    if-lez v1, :cond_1d

    cmp-long v1, v8, v2

    if-gez v1, :cond_1d

    add-long/2addr v8, v4

    :cond_1d
    invoke-virtual/range {p0 .. p1}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-direct {v0, v8, v9, v1}, Ljj$/time/zone/ZoneRules;->findYear(JLjj$/time/ZoneOffset;)I

    move-result v1

    invoke-direct {v0, v1}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    array-length v3, v2

    sub-int/2addr v3, v7

    :goto_2b
    if-ltz v3, :cond_3d

    aget-object v10, v2, v3

    invoke-virtual {v10}, Ljj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_3a

    aget-object v4, v2, v3

    return-object v4

    :cond_3a
    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    :cond_3d
    const/16 v3, 0x708

    if-le v1, v3, :cond_d3

    add-int/lit8 v10, v1, -0x1

    invoke-direct {v0, v10}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    array-length v10, v2

    sub-int/2addr v10, v7

    :goto_49
    if-ltz v10, :cond_5b

    aget-object v11, v2, v10

    invoke-virtual {v11}, Ljj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v11

    cmp-long v13, v8, v11

    if-lez v13, :cond_58

    aget-object v3, v2, v10

    return-object v3

    :cond_58
    add-int/lit8 v10, v10, -0x1

    goto :goto_49

    :cond_5b
    const-wide/32 v10, 0x1da9c00

    sub-long v10, v8, v10

    invoke-static {}, Ljj$/time/Clock;->systemUTC()Ljj$/time/Clock;

    move-result-object v12

    invoke-virtual {v12}, Ljj$/time/Clock;->millis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    const-wide/32 v16, 0x1e7cb00

    add-long v12, v12, v16

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iget-object v12, v0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    sub-long v4, v8, v4

    mul-long v4, v4, v14

    invoke-virtual {v12, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    invoke-static {v3, v7, v7}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v12

    const-wide/32 v16, 0x15180

    mul-long v12, v12, v16

    :goto_8b
    cmp-long v3, v12, v10

    if-gtz v3, :cond_d0

    iget-object v3, v0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const/16 v16, 0x0

    const/16 v17, 0x1

    mul-long v6, v10, v14

    invoke-virtual {v3, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    if-eq v4, v3, :cond_ca

    invoke-static {v3}, Ljj$/time/zone/ZoneRules;->offsetFromMillis(I)Ljj$/time/ZoneOffset;

    move-result-object v5

    invoke-direct {v0, v10, v11, v5}, Ljj$/time/zone/ZoneRules;->findYear(JLjj$/time/ZoneOffset;)I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v0, v5}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    :goto_ae
    if-ltz v5, :cond_c0

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v6

    cmp-long v14, v8, v6

    if-lez v14, :cond_bd

    aget-object v6, v2, v5

    return-object v6

    :cond_bd
    add-int/lit8 v5, v5, -0x1

    goto :goto_ae

    :cond_c0
    invoke-direct {v0, v1}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v2, v5

    return-object v5

    :cond_ca
    const-wide/32 v5, 0x76a700

    sub-long/2addr v10, v5

    const/4 v7, 0x1

    goto :goto_8b

    :cond_d0
    const/16 v16, 0x0

    return-object v16

    :cond_d3
    const/16 v16, 0x0

    return-object v16

    :cond_d6
    const/16 v16, 0x0

    const/16 v17, 0x1

    iget-object v1, v0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v1, v1

    if-nez v1, :cond_e0

    return-object v16

    :cond_e0
    invoke-virtual/range {p1 .. p1}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Ljj$/time/Instant;->getNano()I

    move-result v1

    if-lez v1, :cond_ef

    cmp-long v1, v6, v2

    if-gez v1, :cond_ef

    add-long/2addr v6, v4

    :cond_ef
    iget-object v1, v0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v2, v0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    iget-object v1, v0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    array-length v1, v1

    if-lez v1, :cond_139

    cmp-long v1, v6, v2

    if-lez v1, :cond_139

    iget-object v1, v0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    iget-object v4, v0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v1, v4

    invoke-direct {v0, v6, v7, v1}, Ljj$/time/zone/ZoneRules;->findYear(JLjj$/time/ZoneOffset;)I

    move-result v4

    invoke-direct {v0, v4}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v5

    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    :goto_115
    if-ltz v8, :cond_127

    aget-object v9, v5, v8

    invoke-virtual {v9}, Ljj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v9

    cmp-long v11, v6, v9

    if-lez v11, :cond_124

    aget-object v9, v5, v8

    return-object v9

    :cond_124
    add-int/lit8 v8, v8, -0x1

    goto :goto_115

    :cond_127
    invoke-direct {v0, v2, v3, v1}, Ljj$/time/zone/ZoneRules;->findYear(JLjj$/time/ZoneOffset;)I

    move-result v8

    add-int/lit8 v4, v4, -0x1

    if-le v4, v8, :cond_139

    invoke-direct {v0, v4}, Ljj$/time/zone/ZoneRules;->findTransitionArray(I)[Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v5

    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v5, v9

    return-object v9

    :cond_139
    iget-object v1, v0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_144

    neg-int v4, v1

    add-int/lit8 v1, v4, -0x1

    :cond_144
    if-gtz v1, :cond_147

    return-object v16

    :cond_147
    new-instance v4, Ljj$/time/zone/ZoneOffsetTransition;

    iget-object v5, v0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    add-int/lit8 v8, v1, -0x1

    aget-wide v8, v5, v8

    iget-object v5, v0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    add-int/lit8 v10, v1, -0x1

    aget-object v5, v5, v10

    iget-object v10, v0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    aget-object v10, v10, v1

    invoke-direct {v4, v8, v9, v5, v10}, Ljj$/time/zone/ZoneOffsetTransition;-><init>(JLjj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const-string v1, "]"

    if-eqz v0, :cond_24

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZoneRules[timeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    iget-object v2, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZoneRules[currentStandardOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 8

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->standardTransitions:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->standardTransitions:[J

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_15

    aget-wide v4, v0, v3

    invoke-static {v4, v5, p1}, Ljj$/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_15
    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->standardOffsets:[Ljj$/time/ZoneOffset;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_23

    aget-object v4, v0, v3

    invoke-static {v4, p1}, Ljj$/time/zone/Ser;->writeOffset(Ljj$/time/ZoneOffset;Ljava/io/DataOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_23
    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v1, :cond_37

    aget-wide v4, v0, v3

    invoke-static {v4, v5, p1}, Ljj$/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_37
    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->wallOffsets:[Ljj$/time/ZoneOffset;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v1, :cond_45

    aget-object v4, v0, v3

    invoke-static {v4, p1}, Ljj$/time/zone/Ser;->writeOffset(Ljj$/time/ZoneOffset;Ljava/io/DataOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_45
    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->lastRules:[Ljj$/time/zone/ZoneOffsetTransitionRule;

    array-length v1, v0

    :goto_4e
    if-ge v2, v1, :cond_58

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljj$/time/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_58
    return-void
.end method

.method writeExternalTimeZone(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, Ljj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
