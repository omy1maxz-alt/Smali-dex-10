.class final Lorg/mozilla/javascript/JavaMembers$MethodSignature;
.super Ljava/lang/Object;
.source "JavaMembers.java"


# instance fields
.field private final args:[Ljava/lang/Class;

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->args:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/JavaMembers$MethodSignature;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    check-cast p1, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    iget-object v0, p1, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->args:[Ljava/lang/Class;

    iget-object p1, p1, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->args:[Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->args:[Ljava/lang/Class;

    array-length v1, v1

    xor-int/2addr v0, v1

    return v0
.end method
