.class public final synthetic Ljj$/util/DesugarLinkedHashSet;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static spliterator(Ljava/util/LinkedHashSet;)Ljj$/util/Spliterator;
    .registers 2

    const/16 v0, 0x11

    invoke-static {p0, v0}, Ljj$/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
