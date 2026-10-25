.class public final synthetic Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Locale;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda19;->f$0:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda19;->f$0:Ljava/util/Locale;

    check-cast p1, Ljava/util/Locale;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->$r8$lambda$GMIiTcEobdz7IWmYCGAsf57_M7Q(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
