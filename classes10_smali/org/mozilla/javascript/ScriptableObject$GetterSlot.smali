.class final Lorg/mozilla/javascript/ScriptableObject$GetterSlot;
.super Lorg/mozilla/javascript/ScriptableObject$Slot;
.source "ScriptableObject.java"


# static fields
.field private static final serialVersionUID:J = -0x440256dc8cdfe294L


# instance fields
.field getter:Ljava/lang/Object;

.field setter:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 8

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p1

    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    sget-object v1, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v0, p2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "enumerable"

    invoke-virtual {v0, v4, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "configurable"

    invoke-virtual {v0, v4, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    if-nez v1, :cond_47

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    if-nez v1, :cond_47

    and-int/2addr p1, v2

    if-nez p1, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v1, "writable"

    invoke-virtual {v0, v1, p1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_47
    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    if-nez p1, :cond_4e

    const-string p1, "f"

    goto :goto_52

    :cond_4e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_52
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    if-eqz v1, :cond_81

    instance-of v2, v1, Lorg/mozilla/javascript/MemberBox;

    const-string v4, "get"

    if-eqz v2, :cond_6d

    new-instance v1, Lorg/mozilla/javascript/FunctionObject;

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    check-cast v2, Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->member()Ljava/lang/reflect/Member;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, v4, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_81

    :cond_6d
    instance-of v2, v1, Ljava/lang/reflect/Member;

    if-eqz v2, :cond_7e

    new-instance v1, Lorg/mozilla/javascript/FunctionObject;

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Member;

    invoke-direct {v1, p1, v2, p2}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, v4, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_81

    :cond_7e
    invoke-virtual {v0, v4, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_81
    :goto_81
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    if-eqz v1, :cond_b0

    instance-of v2, v1, Lorg/mozilla/javascript/MemberBox;

    const-string v4, "set"

    if-eqz v2, :cond_9c

    new-instance v1, Lorg/mozilla/javascript/FunctionObject;

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    check-cast v2, Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->member()Ljava/lang/reflect/Member;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, v4, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_b0

    :cond_9c
    instance-of v2, v1, Ljava/lang/reflect/Member;

    if-eqz v2, :cond_ad

    new-instance v1, Lorg/mozilla/javascript/FunctionObject;

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Member;

    invoke-direct {v1, p1, v2, p2}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, v4, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_b0

    :cond_ad
    invoke-virtual {v0, v4, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_b0
    :goto_b0
    return-object v0
.end method

.method getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    if-eqz v0, :cond_33

    instance-of v1, v0, Lorg/mozilla/javascript/MemberBox;

    if-eqz v1, :cond_1e

    check-cast v0, Lorg/mozilla/javascript/MemberBox;

    iget-object v1, v0, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    if-nez v1, :cond_11

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_19

    :cond_11
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    move-object p1, v1

    move-object v1, v2

    :goto_19
    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1e
    instance-of v1, v0, Lorg/mozilla/javascript/Function;

    if-eqz v1, :cond_33

    check-cast v0, Lorg/mozilla/javascript/Function;

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1, v3}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_33
    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    instance-of v0, p1, Lorg/mozilla/javascript/LazilyLoadedCtor;

    if-eqz v0, :cond_4d

    check-cast p1, Lorg/mozilla/javascript/LazilyLoadedCtor;

    :try_start_3b
    invoke-virtual {p1}, Lorg/mozilla/javascript/LazilyLoadedCtor;->init()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_45

    invoke-virtual {p1}, Lorg/mozilla/javascript/LazilyLoadedCtor;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    goto :goto_4d

    :catchall_45
    move-exception v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/LazilyLoadedCtor;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    throw v0

    :cond_4d
    :goto_4d
    return-object p1
.end method

.method setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 9

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_53

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    if-eqz v0, :cond_4e

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p2

    if-eqz p2, :cond_1c

    goto :goto_1d

    :cond_1c
    return v1

    :cond_1d
    :goto_1d
    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    if-eqz p2, :cond_41

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_43

    :cond_41
    const-string p2, ""

    :goto_43
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "msg.set.prop.no.setter"

    invoke-static {p3, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_4e
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_53
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    instance-of v2, v0, Lorg/mozilla/javascript/MemberBox;

    const/4 v3, 0x0

    if-eqz v2, :cond_84

    check-cast v0, Lorg/mozilla/javascript/MemberBox;

    iget-object v2, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v4, v2

    sub-int/2addr v4, v1

    aget-object v2, v2, v4

    invoke-static {v2}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result v2

    invoke-static {p2, p3, p1, v2}, Lorg/mozilla/javascript/FunctionObject;->convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v0, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    if-nez p2, :cond_77

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v3

    goto :goto_80

    :cond_77
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    aput-object p1, v2, v1

    move-object p3, p2

    move-object p2, v2

    :goto_80
    invoke-virtual {v0, p3, p2}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_95

    :cond_84
    instance-of v2, v0, Lorg/mozilla/javascript/Function;

    if-eqz v2, :cond_95

    check-cast v0, Lorg/mozilla/javascript/Function;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-interface {v0, p2, v2, p3, v4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_95
    :goto_95
    return v1
.end method
