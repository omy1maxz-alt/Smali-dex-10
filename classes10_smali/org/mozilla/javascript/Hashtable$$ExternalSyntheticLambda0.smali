.class public final synthetic Lorg/mozilla/javascript/Hashtable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljj$/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lorg/mozilla/javascript/Hashtable$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/mozilla/javascript/Hashtable$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/mozilla/javascript/Hashtable$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/Hashtable$$ExternalSyntheticLambda0;->INSTANCE:Lorg/mozilla/javascript/Hashtable$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/mozilla/javascript/Hashtable$Entry;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Hashtable$Entry;->clear()Ljava/lang/Object;

    return-void
.end method

.method public synthetic andThen(Ljj$/util/function/Consumer;)Ljj$/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljj$/util/function/Consumer;Ljj$/util/function/Consumer;)Ljj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
