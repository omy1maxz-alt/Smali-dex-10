.class Lorg/mozilla/javascript/tools/debugger/VariableModel$1;
.super Ljava/lang/Object;
.source "SwingGui.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/VariableModel;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/debugger/VariableModel;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/VariableModel$1;->this$0:Lorg/mozilla/javascript/tools/debugger/VariableModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_13

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_13
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
