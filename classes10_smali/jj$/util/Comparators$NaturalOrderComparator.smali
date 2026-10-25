.class final enum Ljj$/util/Comparators$NaturalOrderComparator;
.super Ljava/lang/Enum;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljj$/util/Comparator;


# static fields
.field private static final synthetic $VALUES:[Ljj$/util/Comparators$NaturalOrderComparator;

.field public static final enum INSTANCE:Ljj$/util/Comparators$NaturalOrderComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljj$/util/Comparators$NaturalOrderComparator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/util/Comparators$NaturalOrderComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljj$/util/Comparators$NaturalOrderComparator;

    const/4 v0, 0x1

    new-array v0, v0, [Ljj$/util/Comparators$NaturalOrderComparator;

    sget-object v1, Ljj$/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljj$/util/Comparators$NaturalOrderComparator;

    aput-object v1, v0, v2

    sput-object v0, Ljj$/util/Comparators$NaturalOrderComparator;->$VALUES:[Ljj$/util/Comparators$NaturalOrderComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/util/Comparators$NaturalOrderComparator;
    .registers 2

    const-class v0, Ljj$/util/Comparators$NaturalOrderComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/util/Comparators$NaturalOrderComparator;

    return-object v0
.end method

.method public static values()[Ljj$/util/Comparators$NaturalOrderComparator;
    .registers 1

    sget-object v0, Ljj$/util/Comparators$NaturalOrderComparator;->$VALUES:[Ljj$/util/Comparators$NaturalOrderComparator;

    invoke-virtual {v0}, [Ljj$/util/Comparators$NaturalOrderComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/util/Comparators$NaturalOrderComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 4

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Ljj$/util/Comparators$NaturalOrderComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public reversed()Ljava/util/Comparator;
    .registers 2

    invoke-static {}, Ljj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Comparator$-CC;->$default$thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Comparator$-CC;->$default$thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/Comparator$-CC;->$default$thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Comparator$-CC;->$default$thenComparingDouble(Ljava/util/Comparator;Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Comparator$-CC;->$default$thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Comparator$-CC;->$default$thenComparingLong(Ljava/util/Comparator;Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method
