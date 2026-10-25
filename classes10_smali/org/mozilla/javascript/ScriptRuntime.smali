.class public Lorg/mozilla/javascript/ScriptRuntime;
.super Ljava/lang/Object;
.source "ScriptRuntime.java"


# static fields
.field public static final BooleanClass:Ljava/lang/Class;

.field public static final ByteClass:Ljava/lang/Class;

.field public static final CharacterClass:Ljava/lang/Class;

.field public static final ClassClass:Ljava/lang/Class;

.field public static final ContextClass:Ljava/lang/Class;

.field public static final ContextFactoryClass:Ljava/lang/Class;

.field private static final DEFAULT_NS_TAG:Ljava/lang/String; = "__default_namespace__"

.field public static final DateClass:Ljava/lang/Class;

.field public static final DoubleClass:Ljava/lang/Class;

.field public static final ENUMERATE_ARRAY:I = 0x2

.field public static final ENUMERATE_ARRAY_NO_ITERATOR:I = 0x5

.field public static final ENUMERATE_KEYS:I = 0x0

.field public static final ENUMERATE_KEYS_NO_ITERATOR:I = 0x3

.field public static final ENUMERATE_VALUES:I = 0x1

.field public static final ENUMERATE_VALUES_IN_ORDER:I = 0x6

.field public static final ENUMERATE_VALUES_NO_ITERATOR:I = 0x4

.field public static final FloatClass:Ljava/lang/Class;

.field public static final FunctionClass:Ljava/lang/Class;

.field public static final IntegerClass:Ljava/lang/Class;

.field private static final LIBRARY_SCOPE_KEY:Ljava/lang/Object;

.field public static final LongClass:Ljava/lang/Class;

.field public static final NaN:D = NaN

.field public static final NaNobj:Ljava/lang/Double;

.field public static final NumberClass:Ljava/lang/Class;

.field public static final ObjectClass:Ljava/lang/Class;

.field public static final ScriptableClass:Ljava/lang/Class;

.field public static final ScriptableObjectClass:Ljava/lang/Class;

.field public static final ShortClass:Ljava/lang/Class;

.field public static final StringClass:Ljava/lang/Class;

.field public static final emptyArgs:[Ljava/lang/Object;

.field public static final emptyStrings:[Ljava/lang/String;

.field public static final messageProvider:Lorg/mozilla/javascript/ScriptRuntime$MessageProvider;

.field public static final negativeZero:D

.field public static final negativeZeroObj:Ljava/lang/Double;

.field public static final zeroObj:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ByteClass:Ljava/lang/Class;

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    const-string v0, "java.lang.Class"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->DoubleClass:Ljava/lang/Class;

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->FloatClass:Ljava/lang/Class;

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->IntegerClass:Ljava/lang/Class;

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->LongClass:Ljava/lang/Class;

    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ShortClass:Ljava/lang/Class;

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->DateClass:Ljava/lang/Class;

    const-string v0, "org.mozilla.javascript.Context"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ContextClass:Ljava/lang/Class;

    const-string v0, "org.mozilla.javascript.ContextFactory"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ContextFactoryClass:Ljava/lang/Class;

    const-string v0, "org.mozilla.javascript.Function"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    const-string v0, "org.mozilla.javascript.ScriptableObject"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableObjectClass:Ljava/lang/Class;

    const-class v0, Lorg/mozilla/javascript/Scriptable;

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    const-string v0, "LIBRARY_SCOPE"

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->LIBRARY_SCOPE_KEY:Ljava/lang/Object;

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->negativeZero:D

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->negativeZeroObj:Ljava/lang/Double;

    new-instance v0, Lorg/mozilla/javascript/ScriptRuntime$DefaultMessageProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime$DefaultMessageProvider;-><init>(Lorg/mozilla/javascript/ScriptRuntime$1;)V

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->messageProvider:Lorg/mozilla/javascript/ScriptRuntime$MessageProvider;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyStrings:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/ConsString;

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static add(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/ConsString;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 5

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1a

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1a

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_1a
    instance-of v0, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v0, :cond_2b

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1, p1}, Lorg/mozilla/javascript/xml/XMLObject;->addValues(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_2b

    return-object v0

    :cond_2b
    instance-of v0, p1, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v0, :cond_3c

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p0}, Lorg/mozilla/javascript/xml/XMLObject;->addValues(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p2, v0, :cond_3c

    return-object p2

    :cond_3c
    instance-of p2, p0, Lorg/mozilla/javascript/Symbol;

    if-nez p2, :cond_97

    instance-of p2, p1, Lorg/mozilla/javascript/Symbol;

    if-nez p2, :cond_97

    instance-of p2, p0, Lorg/mozilla/javascript/Scriptable;

    const/4 v0, 0x0

    if-eqz p2, :cond_4f

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :cond_4f
    instance-of p2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_59

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p1, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_59
    instance-of p2, p0, Ljava/lang/CharSequence;

    if-nez p2, :cond_89

    instance-of p2, p1, Ljava/lang/CharSequence;

    if-nez p2, :cond_89

    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_7b

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_7b

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_7b
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_89
    new-instance p2, Lorg/mozilla/javascript/ConsString;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object p2

    :cond_97
    const-string p0, "msg.not.a.number"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static addInstructionCount(Lorg/mozilla/javascript/Context;I)V
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget p1, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    if-le v0, p1, :cond_f

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->observeInstructionCount(I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    :cond_f
    return-void
.end method

.method public static applyOrCall(ZLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    array-length v0, p4

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->getCallable(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p3

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_17

    aget-object v3, p4, v2

    invoke-static {p1, v3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    goto :goto_28

    :cond_17
    aget-object v3, p4, v2

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v3, v4, :cond_20

    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    goto :goto_28

    :cond_20
    aget-object v3, p4, v2

    invoke-static {p1, v3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    if-nez v3, :cond_34

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    :cond_34
    const/4 v1, 0x1

    if-eqz p0, :cond_43

    if-gt v0, v1, :cond_3c

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_4e

    :cond_3c
    aget-object p0, p4, v1

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getApplyArguments(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_4e

    :cond_43
    if-gt v0, v1, :cond_48

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_4e

    :cond_48
    sub-int/2addr v0, v1

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p4, v1, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4e
    invoke-interface {p3, p1, p2, v3, p0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .registers 7

    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    move-object v2, v1

    :goto_8
    instance-of v1, p1, Lorg/mozilla/javascript/NativeWith;

    if-eqz v1, :cond_33

    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    instance-of v1, p1, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v1, :cond_21

    check-cast p1, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {p1, p0, p2}, Lorg/mozilla/javascript/xml/XMLObject;->has(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-object p1

    :cond_1d
    if-nez v2, :cond_28

    move-object v2, p1

    goto :goto_28

    :cond_21
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    return-object p1

    :cond_28
    :goto_28
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    if-nez p1, :cond_2f

    goto :goto_40

    :cond_2f
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_8

    :cond_33
    :goto_33
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    return-object p1

    :cond_3a
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    if-nez p1, :cond_43

    :goto_40
    move-object p1, v0

    move-object v1, v2

    goto :goto_47

    :cond_43
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_33

    :cond_47
    :goto_47
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->useDynamicScope:Z

    if-eqz v0, :cond_51

    iget-object p0, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->checkDynamicScope(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    :cond_51
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_58

    return-object p1

    :cond_58
    return-object v1
.end method

.method public static call(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 6

    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_19

    check-cast p1, Lorg/mozilla/javascript/Function;

    invoke-static {p0, p2, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-interface {p1, p0, p4, p2, p3}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    const-string p1, "function"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefCallError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_19
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static callIterator(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getElemFunctionAndThis(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static callRef(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;
    .registers 5

    instance-of v0, p0, Lorg/mozilla/javascript/RefCallable;

    if-eqz v0, :cond_2c

    check-cast p0, Lorg/mozilla/javascript/RefCallable;

    invoke-interface {p0, p3, p1, p2}, Lorg/mozilla/javascript/RefCallable;->refCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Ref;

    move-result-object p1

    if-eqz p1, :cond_d

    return-object p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".refCall() returned null"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.no.ref.from.function"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReferenceError"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static callSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;
    .registers 15

    const/4 v0, 0x1

    if-ne p6, v0, :cond_1a

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p6

    if-nez p6, :cond_23

    invoke-static {p1}, Lorg/mozilla/javascript/NativeGlobal;->isEvalFunction(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_23

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p3

    move-object v4, p7

    move v5, p8

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->evalSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p5, 0x2

    if-ne p6, p5, :cond_31

    invoke-static {p1}, Lorg/mozilla/javascript/NativeWith;->isWithFunction(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_28

    :cond_23
    invoke-interface {p1, p0, p4, p2, p3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_28
    const-string p0, "msg.only.from.new"

    const-string p1, "With"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_31
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static checkDeprecated(Lorg/mozilla/javascript/Context;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    const/16 v0, 0x8c

    if-ge p0, v0, :cond_a

    if-nez p0, :cond_15

    :cond_a
    const-string v0, "msg.deprec.ctor"

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_16

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    :cond_15
    return-void

    :cond_16
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method static checkDynamicScope(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    move-object v0, p0

    :cond_4
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-ne v0, p1, :cond_b

    return-object p0

    :cond_b
    if-nez v0, :cond_4

    return-object p1
.end method

.method public static checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;
    .registers 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const-string p0, "msg.no.regexp"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method public static cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_17

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_58

    :cond_17
    instance-of v0, p0, Lorg/mozilla/javascript/Symbol;

    if-nez v0, :cond_5f

    instance-of v0, p1, Lorg/mozilla/javascript/Symbol;

    if-nez v0, :cond_5f

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_2b

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :cond_2b
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_37

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_37
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_50

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    return v1

    :cond_50
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    :goto_58
    cmpg-double v0, v3, p0

    if-gtz v0, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    :goto_5e
    return v1

    :cond_5f
    const-string p0, "msg.compare.symbol"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_17

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_58

    :cond_17
    instance-of v0, p0, Lorg/mozilla/javascript/Symbol;

    if-nez v0, :cond_5f

    instance-of v0, p1, Lorg/mozilla/javascript/Symbol;

    if-nez v0, :cond_5f

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_2b

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :cond_2b
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_37

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_37
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_50

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    return v1

    :cond_50
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    :goto_58
    cmpg-double v0, v3, p0

    if-gez v0, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    :goto_5e
    return v1

    :cond_5f
    const-string p0, "msg.compare.symbol"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .registers 9

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    aget v4, v0, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static constructError(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/EcmaError;
    .registers 10

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    aget v2, v0, v1

    if-eqz v2, :cond_11

    aget v2, v0, v1

    add-int/2addr v2, p2

    aput v2, v0, v1

    :cond_11
    aget v4, v0, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static constructError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EcmaError;
    .registers 14

    new-instance v7, Lorg/mozilla/javascript/EcmaError;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/EcmaError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-object v7
.end method

.method public static createArrowFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;
    .registers 11

    new-instance v6, Lorg/mozilla/javascript/NativeCall;

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NativeCall;-><init>(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;ZZ)V

    return-object v6
.end method

.method public static createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;
    .registers 11

    new-instance v6, Lorg/mozilla/javascript/NativeCall;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NativeCall;-><init>(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;ZZ)V

    return-object v6
.end method

.method private static currentXMLLib(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xml/XMLLib;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lorg/mozilla/javascript/Context;->cachedXMLLib:Lorg/mozilla/javascript/xml/XMLLib;

    if-nez v1, :cond_17

    invoke-static {v0}, Lorg/mozilla/javascript/xml/XMLLib;->extractFromScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object v1

    if-eqz v1, :cond_11

    iput-object v1, p0, Lorg/mozilla/javascript/Context;->cachedXMLLib:Lorg/mozilla/javascript/xml/XMLLib;

    goto :goto_17

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_17
    :goto_17
    return-object v1

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method static defaultObjectToSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 12

    iget-object p3, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v0, 0x0

    if-nez p3, :cond_11

    new-instance p3, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v1, 0x1f

    invoke-direct {p3, v1}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object p3, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 p3, 0x1

    const/4 v1, 0x0

    goto :goto_17

    :cond_11
    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result p3

    move v1, p3

    const/4 p3, 0x0

    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p3, :cond_25

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-nez v1, :cond_9b

    :try_start_2d
    iget-object v1, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v1

    :goto_36
    array-length v4, v1

    if-ge v0, v4, :cond_9b

    aget-object v4, v1, v0

    instance-of v5, v4, Ljava/lang/Integer;
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_95

    const-string v6, ", "

    if-eqz v5, :cond_59

    :try_start_41
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p2, v4, p2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v5, v7, :cond_50

    goto :goto_92

    :cond_50
    if-lez v0, :cond_55

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_86

    :cond_59
    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v4, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v5, v7, :cond_64

    goto :goto_92

    :cond_64
    if-lez v0, :cond_69

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v6

    invoke-static {v4, p0, v6}, Lorg/mozilla/javascript/ScriptRuntime;->isValidIdentifierName(Ljava/lang/String;Lorg/mozilla/javascript/Context;Z)Z

    move-result v6

    if-eqz v6, :cond_77

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    :cond_77
    const/16 v6, 0x27

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4, v6}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_86
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_92
    .catchall {:try_start_41 .. :try_end_92} :catchall_95

    :goto_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :catchall_95
    move-exception p1

    if-eqz p3, :cond_9a

    iput-object v3, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    :cond_9a
    throw p1

    :cond_9b
    if-eqz p3, :cond_9f

    iput-object v3, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    :cond_9f
    const/16 p0, 0x7d

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_ab

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_ab
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "[object Null]"

    return-object p0

    :cond_5
    invoke-static {p0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "[object Undefined]"

    return-object p0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;
    .registers 5

    invoke-static {p2, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    if-nez p3, :cond_10

    if-eqz p4, :cond_b

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefDeleteError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_10
    invoke-static {p3, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->deleteObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Z)Ljava/lang/Object;
    .registers 5

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static deleteObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z
    .registers 4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object p2

    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-interface {p2, p1}, Lorg/mozilla/javascript/SymbolScriptable;->delete(Lorg/mozilla/javascript/Symbol;)V

    invoke-interface {p2, p1, p0}, Lorg/mozilla/javascript/SymbolScriptable;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_16
    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object p1

    iget-object p2, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez p2, :cond_2c

    iget p2, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-interface {p0, p2}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    iget p1, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2c
    invoke-interface {p0, p2}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static doScriptableIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 11

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    instance-of v2, p3, Ljava/lang/Number;

    if-eqz v2, :cond_14

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_1e

    :cond_14
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    if-eqz v0, :cond_1e

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p3

    :cond_1e
    :goto_1e
    and-int/2addr p4, v1

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    if-nez p4, :cond_25

    add-double/2addr v2, v4

    goto :goto_26

    :cond_25
    sub-double/2addr v2, v4

    :goto_26
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p4

    invoke-interface {p0, p1, p2, p4}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    if-eqz v0, :cond_30

    return-object p3

    :cond_30
    return-object p4
.end method

.method public static doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    iget-boolean v5, p1, Lorg/mozilla/javascript/Context;->isTopLevelStrict:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 13

    if-eqz p2, :cond_4e

    iget-object v0, p1, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_48

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    iput-boolean v0, p1, Lorg/mozilla/javascript/Context;->useDynamicScope:Z

    iget-boolean v0, p1, Lorg/mozilla/javascript/Context;->isTopLevelStrict:Z

    iput-boolean p5, p1, Lorg/mozilla/javascript/Context;->isTopLevelStrict:Z

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v1

    const/4 p5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_21
    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/ContextFactory;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_36

    iput-object p5, p1, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    iput-object p5, p1, Lorg/mozilla/javascript/Context;->cachedXMLLib:Lorg/mozilla/javascript/xml/XMLLib;

    iput-boolean v0, p1, Lorg/mozilla/javascript/Context;->isTopLevelStrict:Z

    iget-object p1, p1, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    if-nez p1, :cond_30

    return-object p0

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_36
    move-exception p0

    iput-object p5, p1, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    iput-object p5, p1, Lorg/mozilla/javascript/Context;->cachedXMLLib:Lorg/mozilla/javascript/xml/XMLLib;

    iput-boolean v0, p1, Lorg/mozilla/javascript/Context;->isTopLevelStrict:Z

    iget-object p1, p1, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    if-eqz p1, :cond_47

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_47
    throw p0

    :cond_48
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static elemIncrDecr(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .registers 5

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->elemIncrDecr(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static elemIncrDecr(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;
    .registers 12

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p4, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_18

    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    goto :goto_22

    :cond_18
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    if-eqz v1, :cond_22

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_22
    :goto_22
    and-int/2addr p4, v2

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    if-nez p4, :cond_29

    add-double/2addr v3, v5

    goto :goto_2a

    :cond_29
    sub-double/2addr v3, v5

    :goto_2a
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p4

    invoke-static {p0, p1, p4, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    if-eqz v1, :cond_34

    return-object v0

    :cond_34
    return-object p4
.end method

.method public static enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_10

    check-cast p1, Lorg/mozilla/javascript/NativeCall;

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    iput-object v0, p1, Lorg/mozilla/javascript/NativeCall;->parentActivationCall:Lorg/mozilla/javascript/NativeCall;

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeCall;->defineAttributesForArguments()V

    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static enterDotQuery(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    instance-of v0, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xml/XMLObject;->enterDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeWith;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notXmlError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static enterWith(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    if-eqz p1, :cond_17

    instance-of p0, p1, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz p0, :cond_11

    check-cast p1, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xml/XMLObject;->enterWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeWith;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Lorg/mozilla/javascript/NativeWith;

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/NativeWith;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    return-object p0

    :cond_17
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.undef.with"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static enumChangeObject(Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_d

    goto :goto_16

    :cond_d
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    goto :goto_1

    :cond_16
    :goto_16
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->ids:[Ljava/lang/Object;

    if-eqz v1, :cond_38

    array-length v3, v1

    iget-object v4, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->used:Lorg/mozilla/javascript/ObjToIntMap;

    if-nez v4, :cond_2b

    new-instance v4, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v4, v3}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v4, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->used:Lorg/mozilla/javascript/ObjToIntMap;

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    if-eq v4, v3, :cond_38

    iget-object v5, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->used:Lorg/mozilla/javascript/ObjToIntMap;

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_38
    iput-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->ids:[Ljava/lang/Object;

    iput v2, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->index:I

    return-void
.end method

.method public static enumId(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 7

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;

    iget-object v1, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_a

    iget-object p0, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    return-object p0

    :cond_a
    iget v1, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->enumType:I

    if-eqz v1, :cond_40

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_23

    const/4 v4, 0x3

    if-eq v1, v4, :cond_40

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3b

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1e

    goto :goto_23

    :cond_1e
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_23
    :goto_23
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->enumValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v1, v2

    iget-object p0, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_3b
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->enumValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_40
    iget-object p0, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    return-object p0
.end method

.method public static enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .registers 4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;-><init>(Lorg/mozilla/javascript/ScriptRuntime$1;)V

    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    iput-object p0, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    const/4 p2, 0x6

    if-ne p3, p2, :cond_18

    iput p3, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->enumType:I

    iput-object v1, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->enumInitInOrder(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_18
    if-nez p0, :cond_1b

    return-object v0

    :cond_1b
    iput p3, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->enumType:I

    iput-object v1, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    const/4 p2, 0x3

    if-eq p3, p2, :cond_39

    const/4 p2, 0x4

    if-eq p3, p2, :cond_39

    const/4 p2, 0x5

    if-eq p3, p2, :cond_39

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    iget-object p2, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    if-nez p3, :cond_32

    const/4 p3, 0x1

    goto :goto_33

    :cond_32
    const/4 p3, 0x0

    :goto_33
    invoke-static {p1, p0, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toIterator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    iput-object p0, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    :cond_39
    iget-object p0, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    if-nez p0, :cond_40

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->enumChangeObject(Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;)V

    :cond_40
    return-object v0
.end method

.method public static enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Z)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static enumInitInOrder(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p1, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    instance-of v1, v0, Lorg/mozilla/javascript/SymbolScriptable;

    const-string v2, "msg.not.iterable"

    if-eqz v1, :cond_4a

    sget-object v1, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_3f

    check-cast v0, Lorg/mozilla/javascript/Callable;

    iget-object v1, p1, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p0, v1, v4, v3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_34

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    iput-object p0, p1, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    return-object p1

    :cond_34
    iget-object p0, p1, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_3f
    iget-object p0, p1, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_4a
    iget-object p0, p1, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static enumNext(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 6

    check-cast p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_43

    iget v1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->enumType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_10

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->enumNextInOrder(Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_10
    const-string v1, "next"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Callable;

    if-nez v1, :cond_1d

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1d
    check-cast v0, Lorg/mozilla/javascript/Callable;

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    :try_start_23
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_35
    .catch Lorg/mozilla/javascript/JavaScriptException; {:try_start_23 .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    move-exception p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    if-eqz v0, :cond_42

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_42
    throw p0

    :cond_43
    :goto_43
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_4a

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_4a
    iget v1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->index:I

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->ids:[Ljava/lang/Object;

    array-length v3, v2

    if-ne v1, v3, :cond_5b

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->enumChangeObject(Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;)V

    goto :goto_43

    :cond_5b
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->index:I

    aget-object v0, v2, v1

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->used:Lorg/mozilla/javascript/ObjToIntMap;

    if-eqz v1, :cond_6c

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    goto :goto_43

    :cond_6c
    instance-of v1, v0, Lorg/mozilla/javascript/Symbol;

    if-eqz v1, :cond_71

    goto :goto_43

    :cond_71
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_83

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1, v0, v1}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-nez v1, :cond_80

    goto :goto_43

    :cond_80
    iput-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    goto :goto_a1

    :cond_83
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1, v0, v1}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-nez v1, :cond_92

    goto :goto_43

    :cond_92
    iget-boolean v1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->enumNumbers:Z

    if-eqz v1, :cond_9b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9f

    :cond_9b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_9f
    iput-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    :goto_a1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static enumNextInOrder(Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;)Ljava/lang/Boolean;
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    const-string v1, "next"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/mozilla/javascript/Callable;

    if-eqz v2, :cond_43

    check-cast v0, Lorg/mozilla/javascript/Callable;

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "done"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_37

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_37
    const-string/jumbo v1, "value"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_43
    iget-object p0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static enumValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 3

    check-cast p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Symbol;

    iget-object p0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p1, v0, p0}, Lorg/mozilla/javascript/SymbolScriptable;->get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_34

    :cond_1b
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object p1

    iget-object v0, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez v0, :cond_2e

    iget-object p0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    iget p1, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_34

    :cond_2e
    iget-object p0, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, v0, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    :goto_34
    return-object p0
.end method

.method public static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_110

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v2, :cond_a

    goto/16 :goto_110

    :cond_a
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_19

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_19
    if-ne p0, p1, :cond_1c

    return v0

    :cond_1c
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_27

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->eqString(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_27
    instance-of v2, p0, Ljava/lang/Boolean;

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_64

    move-object v2, p0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    instance-of v7, p1, Ljava/lang/Boolean;

    if-eqz v7, :cond_45

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne v2, p0, :cond_43

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    return v0

    :cond_45
    instance-of v0, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_5b

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, v0, :cond_5b

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_5b
    if-eqz v2, :cond_5e

    goto :goto_5f

    :cond_5e
    move-wide v3, v5

    :goto_5f
    invoke-static {v3, v4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_64
    instance-of v2, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_108

    instance-of v2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_c4

    instance-of v2, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v2, :cond_82

    move-object v2, p0

    check-cast v2, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_82

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_82
    instance-of v2, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v2, :cond_98

    move-object v2, p1

    check-cast v2, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v2, p0}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_98

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_98
    instance-of v2, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v2, :cond_c3

    instance-of v2, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v2, :cond_c3

    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p0

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_c2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isPrimitive(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isPrimitive(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c1

    goto :goto_c2

    :cond_c1
    const/4 v0, 0x0

    :cond_c2
    :goto_c2
    return v0

    :cond_c3
    return v1

    :cond_c4
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_ed

    instance-of v0, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_de

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_de

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_de
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e7

    goto :goto_e8

    :cond_e7
    move-wide v3, v5

    :goto_e8
    invoke-static {v3, v4, p0}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_ed
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_fc

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_fc
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_107

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->eqString(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_107
    return v1

    :cond_108
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    if-ne p0, p1, :cond_10e

    goto :goto_10f

    :cond_10e
    const/4 v0, 0x0

    :goto_10f
    return v0

    :cond_110
    :goto_110
    if-eqz p1, :cond_12d

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v2, :cond_117

    goto :goto_12d

    :cond_117
    instance-of v0, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_12c

    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, p1, :cond_12c

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_12c
    return v1

    :cond_12d
    :goto_12d
    return v0
.end method

.method static eqNumber(DLjava/lang/Object;)Z
    .registers 8

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_6b

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p2, v1, :cond_8

    goto :goto_6b

    :cond_8
    instance-of v1, p2, Ljava/lang/Number;

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpl-double p2, p0, v3

    if-nez p2, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_27

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    cmpl-double p2, p0, v3

    if-nez p2, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0

    :cond_27
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3e

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_36

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    goto :goto_38

    :cond_36
    const-wide/16 v3, 0x0

    :goto_38
    cmpl-double p2, p0, v3

    if-nez p2, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    return v0

    :cond_3e
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    return v0

    :cond_45
    instance-of v1, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_68

    instance-of v0, p2, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_63

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_63

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_63
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_68
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    :cond_6b
    :goto_6b
    return v0
.end method

.method private static eqString(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 7

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_8f

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v1, :cond_9

    goto/16 :goto_8f

    :cond_9
    instance-of v1, p1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v1, v3, :cond_29

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0

    :cond_2a
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v1, v3, p0

    if-nez v1, :cond_41

    const/4 v0, 0x1

    :cond_41
    return v0

    :cond_42
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_61

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_59

    const-wide/high16 p0, 0x3ff0000000000000L  # 1.0

    goto :goto_5b

    :cond_59
    const-wide/16 p0, 0x0

    :goto_5b
    cmpl-double v1, v3, p0

    if-nez v1, :cond_60

    const/4 v0, 0x1

    :cond_60
    return v0

    :cond_61
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    return v0

    :cond_68
    instance-of v1, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_8c

    instance-of v0, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_86

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_86

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_86
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    :cond_8c
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    :cond_8f
    :goto_8f
    return v0
.end method

.method private static errorWithClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    return-object p0
.end method

.method public static escapeAttributeValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->currentXMLLib(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xml/XMLLib;->escapeAttributeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x22

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeString(Ljava/lang/String;C)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x22

    if-eq p1, v0, :cond_f

    const/16 v0, 0x27

    if-eq p1, v0, :cond_f

    const/16 v0, 0x60

    if-eq p1, v0, :cond_f

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_15
    if-eq v1, v2, :cond_a1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    const/16 v5, 0x5c

    if-gt v4, v3, :cond_31

    const/16 v6, 0x7e

    if-gt v3, v6, :cond_31

    if-eq v3, p1, :cond_31

    if-eq v3, v5, :cond_31

    if-eqz v0, :cond_9d

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_9d

    :cond_31
    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x3

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_40
    const/4 v6, -0x1

    if-eq v3, v4, :cond_5e

    if-eq v3, v5, :cond_5c

    packed-switch v3, :pswitch_data_aa

    const/4 v4, -0x1

    goto :goto_5e

    :pswitch_4a  #0xd
    const/16 v4, 0x72

    goto :goto_5e

    :pswitch_4d  #0xc
    const/16 v4, 0x66

    goto :goto_5e

    :pswitch_50  #0xb
    const/16 v4, 0x76

    goto :goto_5e

    :pswitch_53  #0xa
    const/16 v4, 0x6e

    goto :goto_5e

    :pswitch_56  #0x9
    const/16 v4, 0x74

    goto :goto_5e

    :pswitch_59  #0x8
    const/16 v4, 0x62

    goto :goto_5e

    :cond_5c
    const/16 v4, 0x5c

    :cond_5e
    :goto_5e
    if-ltz v4, :cond_68

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9d

    :cond_68
    if-ne v3, p1, :cond_71

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9d

    :cond_71
    const/16 v4, 0x100

    const/4 v5, 0x4

    if-ge v3, v4, :cond_7d

    const-string v4, "\\x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    goto :goto_83

    :cond_7d
    const-string v4, "\\u"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    :goto_83
    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x4

    :goto_87
    if-ltz v4, :cond_9d

    shr-int v5, v3, v4

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0xa

    if-ge v5, v6, :cond_94

    add-int/lit8 v5, v5, 0x30

    goto :goto_96

    :cond_94
    add-int/lit8 v5, v5, 0x57

    :goto_96
    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x4

    goto :goto_87

    :cond_9d
    :goto_9d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_15

    :cond_a1
    if-nez v0, :cond_a4

    goto :goto_a8

    :cond_a4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_a8
    return-object p0

    nop

    :pswitch_data_aa
    .packed-switch 0x8
        :pswitch_59  #00000008
        :pswitch_56  #00000009
        :pswitch_53  #0000000a
        :pswitch_50  #0000000b
        :pswitch_4d  #0000000c
        :pswitch_4a  #0000000d
    .end packed-switch
.end method

.method public static escapeTextValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->currentXMLLib(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xml/XMLLib;->escapeTextValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static evalSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 15

    array-length v0, p3

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    aget-object p3, p3, v0

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-nez v2, :cond_2f

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p1

    if-nez p1, :cond_28

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p0

    if-nez p0, :cond_28

    const-string p0, "msg.eval.nonstring"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    return-object p3

    :cond_28
    const-string p0, "msg.eval.nonstring.strict"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_2f
    if-nez p4, :cond_3f

    new-array p4, v1, [I

    invoke-static {p4}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    aget p5, p4, v0

    move-object p4, v2

    goto :goto_3f

    :cond_3d
    const-string p4, ""

    :cond_3f
    :goto_3f
    invoke-static {v1, p4, p5}, Lorg/mozilla/javascript/ScriptRuntime;->makeUrlForGeneratedScript(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/DefaultErrorReporter;->forEval(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v5

    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v8}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p3

    invoke-interface {v0, p3}, Lorg/mozilla/javascript/Evaluator;->setEvalScriptFlag(Lorg/mozilla/javascript/Script;)V

    check-cast p3, Lorg/mozilla/javascript/Callable;

    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    sget-object p4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {p3, p0, p1, p2, p4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6b
    new-instance p0, Lorg/mozilla/javascript/JavaScriptException;

    const-string p1, "Interpreter not present"

    invoke-direct {p0, p1, p4, p5}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw p0
.end method

.method public static exitActivationFunction(Lorg/mozilla/javascript/Context;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    iget-object v1, v0, Lorg/mozilla/javascript/NativeCall;->parentActivationCall:Lorg/mozilla/javascript/NativeCall;

    iput-object v1, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    const/4 p0, 0x0

    iput-object p0, v0, Lorg/mozilla/javascript/NativeCall;->parentActivationCall:Lorg/mozilla/javascript/NativeCall;

    return-void
.end method

.method static findFunctionActivation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/NativeCall;
    .registers 3

    iget-object p0, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    :goto_2
    if-eqz p0, :cond_c

    iget-object v0, p0, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    if-ne v0, p1, :cond_9

    return-object p0

    :cond_9
    iget-object p0, p0, Lorg/mozilla/javascript/NativeCall;->parentActivationCall:Lorg/mozilla/javascript/NativeCall;

    goto :goto_2

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method static getApplyArguments(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_27

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v0, :cond_7

    goto :goto_27

    :cond_7
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isArrayLike(Lorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->getElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_19
    instance-of p0, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz p0, :cond_20

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    return-object p0

    :cond_20
    const-string p0, "msg.arg.isnt.array"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_27
    :goto_27
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    return-object p0
.end method

.method public static getArrayElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2a

    long-to-int v0, v2

    if-nez v0, :cond_16

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    return-object p0

    :cond_16
    new-array v2, v0, [Ljava/lang/Object;

    :goto_18
    if-ge v1, v0, :cond_29

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v3, v4, :cond_24

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_24
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_29
    return-object v2

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_31

    :goto_30
    throw p0

    :goto_31
    goto :goto_30
.end method

.method static getCallable(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;
    .registers 3

    instance-of v0, p0, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/mozilla/javascript/Callable;

    goto :goto_14

    :cond_7
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_15

    move-object p0, v0

    check-cast p0, Lorg/mozilla/javascript/Callable;

    :goto_14
    return-object p0

    :cond_15
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static getElemFunctionAndThis(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;
    .registers 4

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getElemFunctionAndThis(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    return-object p0
.end method

.method public static getElemFunctionAndThis(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;
    .registers 6

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p2, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    if-eqz p3, :cond_14

    move-object p0, p1

    check-cast p0, Lorg/mozilla/javascript/Symbol;

    invoke-static {p3, p0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_36

    :cond_14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefCallError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1d
    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object v0

    iget-object v1, v0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-eqz v1, :cond_2a

    invoke-static {p0, v1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    return-object p0

    :cond_2a
    invoke-static {p2, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    if-eqz p3, :cond_45

    iget p0, v0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-static {p3, p0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    :goto_36
    instance-of v0, p0, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_40

    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->storeScriptable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    check-cast p0, Lorg/mozilla/javascript/Callable;

    return-object p0

    :cond_40
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_45
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefCallError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;
    .registers 3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/mozilla/javascript/Function;

    if-eqz p1, :cond_b

    check-cast p0, Lorg/mozilla/javascript/Function;

    return-object p0

    :cond_b
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, p1, :cond_16

    const-string p0, "msg.ctor.not.found"

    invoke-static {p0, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_16
    const-string p0, "msg.not.ctor"

    invoke-static {p0, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method public static getGlobal(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 6

    const-string v0, "org.mozilla.javascript.tools.shell.Global"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    :try_start_9
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ContextClass:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_21

    return-object v0

    :catch_1f
    move-exception p0

    throw p0

    :catch_21
    :cond_21
    new-instance v0, Lorg/mozilla/javascript/ImporterTopLevel;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>(Lorg/mozilla/javascript/Context;)V

    return-object v0
.end method

.method static getIndexObject(D)Ljava/lang/Object;
    .registers 6

    double-to-int v0, p0

    int-to-double v1, v0

    cmpl-double v3, v1, p0

    if-nez v3, :cond_b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getIndexObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->indexFromString(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_f

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_f
    return-object p0
.end method

.method public static getLibraryScopeOrNull(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->LIBRARY_SCOPE_KEY:Ljava/lang/Object;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    return-object p0
.end method

.method public static getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->messageProvider:Lorg/mozilla/javascript/ScriptRuntime$MessageProvider;

    invoke-interface {v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime$MessageProvider;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMessage0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMessage2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMessage3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMessage4(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNameFunctionAndThis(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;
    .registers 5

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_22

    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->topScopeName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Callable;

    if-nez v1, :cond_1c

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, p1, :cond_17

    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFoundError(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_17
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1c
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->storeScriptable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    check-cast v0, Lorg/mozilla/javascript/Callable;

    return-object v0

    :cond_22
    const/4 v1, 0x1

    invoke-static {p1, p2, v0, p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->nameOrFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/Callable;

    return-object p0
.end method

.method public static getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 4

    invoke-static {p2, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-static {p3, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static getObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/xml/XMLObject;->get(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2b

    :cond_b
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2b

    :cond_18
    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object p1

    iget-object p2, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez p2, :cond_27

    iget p1, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2b

    :cond_27
    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_2b
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, p1, :cond_31

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_31
    return-object p0
.end method

.method public static getObjectIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 5

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getObjectIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 8

    invoke-static {p3, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    if-eqz p4, :cond_1a

    double-to-int p0, p1

    int-to-double v0, p0

    cmpl-double v2, v0, p1

    if-nez v2, :cond_11

    invoke-static {p4, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectIndex(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static getObjectIndex(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, p1, :cond_a

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_a
    return-object p0
.end method

.method public static getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 4

    invoke-static {p2, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-static {p3, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, v0, :cond_1b

    const/16 p0, 0xb

    invoke-virtual {p2, p0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "msg.ref.undefined.prop"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    :cond_19
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_1b
    return-object p0
.end method

.method public static getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 4

    invoke-static {p2, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, p1, :cond_10

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_10
    return-object p0

    :cond_11
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;
    .registers 4

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    return-object p0
.end method

.method public static getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;
    .registers 4

    invoke-static {p2, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThisHelper(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    return-object p0
.end method

.method private static getPropFunctionAndThisHelper(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;
    .registers 6

    if-eqz p3, :cond_2a

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/mozilla/javascript/Callable;

    if-nez v0, :cond_1b

    const-string v0, "__noSuchMethod__"

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_1b

    new-instance p0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    check-cast v0, Lorg/mozilla/javascript/Callable;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;-><init>(Lorg/mozilla/javascript/Callable;Ljava/lang/String;)V

    :cond_1b
    instance-of v0, p0, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_25

    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->storeScriptable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    check-cast p0, Lorg/mozilla/javascript/Callable;

    return-object p0

    :cond_25
    invoke-static {p3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2a
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefCallError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;
    .registers 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getRegExpProxy()Lorg/mozilla/javascript/RegExpProxy;

    move-result-object p0

    return-object p0
.end method

.method public static getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static getTopLevelProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getTopPackageNames()[Ljava/lang/String;
    .registers 8

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "java"

    const-string v2, "javax"

    const-string v3, "org"

    const-string v4, "com"

    const-string v5, "edu"

    const-string v6, "net"

    if-eqz v0, :cond_21

    const-string v7, "android"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_21
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    :goto_25
    return-object v0
.end method

.method public static getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;
    .registers 4

    instance-of v0, p0, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_36

    check-cast p0, Lorg/mozilla/javascript/Callable;

    const/4 v0, 0x0

    instance-of v1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_12

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :cond_12
    if-nez v0, :cond_1f

    iget-object v0, p1, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_19

    goto :goto_1f

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    if-eqz v1, :cond_32

    instance-of v1, v0, Lorg/mozilla/javascript/NativeWith;

    if-eqz v1, :cond_2a

    goto :goto_32

    :cond_2a
    instance-of v1, v0, Lorg/mozilla/javascript/NativeCall;

    if-eqz v1, :cond_32

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :cond_32
    :goto_32
    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->storeScriptable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-object p0

    :cond_36
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static hasObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z
    .registers 4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Z

    move-result p0

    goto :goto_20

    :cond_d
    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object p1

    iget-object p2, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez p2, :cond_1c

    iget p1, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;I)Z

    move-result p0

    goto :goto_20

    :cond_1c
    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result p0

    :goto_20
    return p0
.end method

.method public static hasTopCall(Lorg/mozilla/javascript/Context;)Z
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static in(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->hasObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p0

    return p0

    :cond_b
    const-string p0, "msg.in.not.object"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static indexFromString(Ljava/lang/String;)J
    .registers 13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, -0x1

    if-lez v0, :cond_68

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    const/16 v6, 0x30

    const/4 v7, 0x1

    if-ne v4, v5, :cond_20

    if-le v0, v7, :cond_20

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1d

    return-wide v1

    :cond_1d
    const/4 v5, 0x1

    const/4 v8, 0x1

    goto :goto_22

    :cond_20
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_22
    add-int/lit8 v4, v4, -0x30

    if-ltz v4, :cond_68

    const/16 v9, 0x9

    if-gt v4, v9, :cond_68

    if-eqz v5, :cond_2f

    const/16 v10, 0xb

    goto :goto_31

    :cond_2f
    const/16 v10, 0xa

    :goto_31
    if-gt v0, v10, :cond_68

    neg-int v10, v4

    add-int/2addr v8, v7

    if-eqz v10, :cond_4b

    :goto_37
    if-eq v8, v0, :cond_4b

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v6

    if-ltz v4, :cond_4b

    if-gt v4, v9, :cond_4b

    mul-int/lit8 v3, v10, 0xa

    sub-int/2addr v3, v4

    add-int/lit8 v8, v8, 0x1

    move v11, v10

    move v10, v3

    move v3, v11

    goto :goto_37

    :cond_4b
    if-ne v8, v0, :cond_68

    const p0, -0xccccccc

    if-gt v3, p0, :cond_5c

    if-ne v3, p0, :cond_68

    if-eqz v5, :cond_59

    const/16 p0, 0x8

    goto :goto_5a

    :cond_59
    const/4 p0, 0x7

    :goto_5a
    if-gt v4, p0, :cond_68

    :cond_5c
    const-wide v0, 0xffffffffL

    if-eqz v5, :cond_64

    goto :goto_65

    :cond_64
    neg-int v10, v10

    :goto_65
    int-to-long v2, v10

    and-long/2addr v0, v2

    return-wide v0

    :cond_68
    return-wide v1
.end method

.method public static initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;IZ)V
    .registers 5

    const/4 p0, 0x1

    if-ne p3, p0, :cond_1a

    invoke-virtual {p2}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_35

    if-nez p4, :cond_16

    const/4 p3, 0x4

    invoke-static {p1, p0, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_35

    :cond_16
    invoke-interface {p1, p0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_35

    :cond_1a
    const/4 p0, 0x3

    if-ne p3, p0, :cond_36

    invoke-virtual {p2}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_35

    :goto_29
    instance-of p3, p1, Lorg/mozilla/javascript/NativeWith;

    if-eqz p3, :cond_32

    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    goto :goto_29

    :cond_32
    invoke-interface {p1, p0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    goto :goto_3c

    :goto_3b
    throw p0

    :goto_3c
    goto :goto_3b
.end method

.method public static initSafeStandardObjects(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;
    .registers 10

    if-nez p1, :cond_7

    new-instance p1, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    :cond_7
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->LIBRARY_SCOPE_KEY:Ljava/lang/Object;

    invoke-virtual {p1, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/mozilla/javascript/ClassCache;

    invoke-direct {v0}, Lorg/mozilla/javascript/ClassCache;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ClassCache;->associate(Lorg/mozilla/javascript/ScriptableObject;)Z

    invoke-static {p1, p2}, Lorg/mozilla/javascript/BaseFunction;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeObject;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "Function"

    invoke-static {p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    if-nez v1, :cond_30

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    :cond_30
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeError;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeGlobal;->init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeArray;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getOptimizationLevel()I

    move-result v0

    if-lez v0, :cond_45

    const v0, 0x30d40

    invoke-static {v0}, Lorg/mozilla/javascript/NativeArray;->setMaximumInitialCapacity(I)V

    :cond_45
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeString;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeBoolean;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeNumber;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeMath;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeJSON;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeWith;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeCall;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeScript;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeIterator;->init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeArrayIterator;->init(Lorg/mozilla/javascript/ScriptableObject;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeStringIterator;->init(Lorg/mozilla/javascript/ScriptableObject;Z)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getE4xImplementationFactory()Lorg/mozilla/javascript/xml/XMLLib$Factory;

    move-result-object v0

    if-eqz v0, :cond_79

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_7b

    :cond_79
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_7b
    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const/4 v5, 0x1

    const-string v2, "RegExp"

    const-string v3, "org.mozilla.javascript.regexp.NativeRegExp"

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "Continuation"

    const-string v3, "org.mozilla.javascript.NativeContinuation"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz v6, :cond_ba

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getE4xImplementationFactory()Lorg/mozilla/javascript/xml/XMLLib$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xml/XMLLib$Factory;->getImplementationClassName()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const/4 v5, 0x1

    const-string v2, "XML"

    move-object v1, p1

    move-object v3, v6

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "XMLList"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "Namespace"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "QName"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_ba
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xb4

    const/16 v6, 0xc8

    if-lt v0, v1, :cond_cc

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_d2

    :cond_cc
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    if-lt v0, v6, :cond_138

    :cond_d2
    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const/4 v5, 0x1

    const-string v2, "ArrayBuffer"

    const-string v3, "org.mozilla.javascript.typedarrays.NativeArrayBuffer"

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "Int8Array"

    const-string v3, "org.mozilla.javascript.typedarrays.NativeInt8Array"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "Uint8Array"

    const-string v3, "org.mozilla.javascript.typedarrays.NativeUint8Array"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "Uint8ClampedArray"

    const-string v3, "org.mozilla.javascript.typedarrays.NativeUint8ClampedArray"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "Int16Array"

    const-string v3, "org.mozilla.javascript.typedarrays.NativeInt16Array"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "Uint16Array"

    const-string v3, "org.mozilla.javascript.typedarrays.NativeUint16Array"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "Int32Array"

    const-string v3, "org.mozilla.javascript.typedarrays.NativeInt32Array"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "Uint32Array"

    const-string v3, "org.mozilla.javascript.typedarrays.NativeUint32Array"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "Float32Array"

    const-string v3, "org.mozilla.javascript.typedarrays.NativeFloat32Array"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "Float64Array"

    const-string v3, "org.mozilla.javascript.typedarrays.NativeFloat64Array"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "DataView"

    const-string v3, "org.mozilla.javascript.typedarrays.NativeDataView"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_138
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    if-lt v0, v6, :cond_157

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeSymbol;->init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    const-string v0, "Set Iterator"

    invoke-static {p1, v0, p2}, Lorg/mozilla/javascript/NativeCollectionIterator;->init(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Z)V

    const-string v0, "Map Iterator"

    invoke-static {p1, v0, p2}, Lorg/mozilla/javascript/NativeCollectionIterator;->init(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Z)V

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeMap;->init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeSet;->init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeWeakMap;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeWeakSet;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    :cond_157
    instance-of p0, p1, Lorg/mozilla/javascript/TopLevel;

    if-eqz p0, :cond_161

    move-object p0, p1

    check-cast p0, Lorg/mozilla/javascript/TopLevel;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/TopLevel;->cacheBuiltins(Lorg/mozilla/javascript/Scriptable;Z)V

    :cond_161
    return-object p1
.end method

.method public static initScript(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 8

    iget-object p1, p2, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getParamAndVarCount()I

    move-result p1

    if-eqz p1, :cond_4d

    move-object p2, p3

    :goto_b
    instance-of v0, p2, Lorg/mozilla/javascript/NativeWith;

    if-eqz v0, :cond_14

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    goto :goto_b

    :cond_14
    :goto_14
    add-int/lit8 v0, p1, -0x1

    if-eqz p1, :cond_4d

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarConst(I)Z

    move-result v1

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    if-eqz v1, :cond_2c

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->defineConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    goto :goto_4b

    :cond_2c
    if-nez p4, :cond_42

    instance-of v1, p0, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v1, :cond_3b

    move-object v1, p0

    check-cast v1, Lorg/mozilla/javascript/InterpretedFunction;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/InterpretedFunction;->hasFunctionNamed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    :cond_3b
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {p2, p1, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_4b

    :cond_42
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-interface {p2, p1, p2, v1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_4b

    :cond_48
    invoke-static {p3, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->redefineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Z)V

    :cond_4b
    :goto_4b
    move p1, v0

    goto :goto_14

    :cond_4d
    return-void

    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_55

    :goto_54
    throw p0

    :goto_55
    goto :goto_54
.end method

.method public static initStandardObjects(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;
    .registers 11

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->initSafeStandardObjects(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p0

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "Packages"

    const-string v3, "org.mozilla.javascript.NativeJavaTopPackage"

    const/4 v5, 0x1

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "getClass"

    const-string v3, "org.mozilla.javascript.NativeJavaTopPackage"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "JavaAdapter"

    const-string v3, "org.mozilla.javascript.JavaAdapter"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const-string v2, "JavaImporter"

    const-string v3, "org.mozilla.javascript.ImporterTopLevel"

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {}, Lorg/mozilla/javascript/ScriptRuntime;->getTopPackageNames()[Ljava/lang/String;

    move-result-object p1

    array-length v6, p1

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v6, :cond_43

    aget-object v2, p1, v7

    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    const/4 v5, 0x1

    const-string v3, "org.mozilla.javascript.NativeJavaTopPackage"

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_43
    return-object p0
.end method

.method public static instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z
    .registers 3

    instance-of p2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_13

    instance-of p2, p0, Lorg/mozilla/javascript/Scriptable;

    if-nez p2, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/Scriptable;->hasInstance(Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    return p0

    :cond_13
    const-string p0, "msg.instanceof.not.object"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static isArrayLike(Lorg/mozilla/javascript/Scriptable;)Z
    .registers 2

    if-eqz p0, :cond_14

    instance-of v0, p0, Lorg/mozilla/javascript/NativeArray;

    if-nez v0, :cond_12

    instance-of v0, p0, Lorg/mozilla/javascript/Arguments;

    if-nez v0, :cond_12

    const-string v0, "length"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static isArrayObject(Ljava/lang/Object;)Z
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/NativeArray;

    if-nez v0, :cond_b

    instance-of p0, p0, Lorg/mozilla/javascript/Arguments;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method static isGeneratedScript(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "(eval)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_13

    const-string v0, "(Function)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static isIteratorDone(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    const-string v0, "done"

    invoke-static {p1, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isJSLineTerminator(I)Z
    .registers 3

    const v0, 0xdfd0

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0xa

    if-eq p0, v0, :cond_18

    const/16 v0, 0xd

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2029

    if-ne p0, v0, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public static isJSWhitespaceOrLineTerminator(I)Z
    .registers 2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isNaN(Ljava/lang/Object;)Z
    .registers 2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p0

    return p0

    :cond_b
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_16

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isObject(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    instance-of v1, p0, Lorg/mozilla/javascript/ScriptableObject;

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTypeOf()Ljava/lang/String;

    move-result-object p0

    const-string v1, "object"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "function"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    :cond_28
    const/4 v0, 0x1

    :cond_29
    return v0

    :cond_2a
    instance-of v1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_32

    instance-of p0, p0, Lorg/mozilla/javascript/Callable;

    xor-int/2addr p0, v2

    return p0

    :cond_32
    return v0
.end method

.method public static isPrimitive(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p0, :cond_15

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p0, v0, :cond_15

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_15

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_15

    instance-of p0, p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public static isRhinoRuntimeType(Ljava/lang/Class;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    :cond_e
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_26

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_26

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_27

    :cond_26
    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method static isSpecialProperty(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "__proto__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "__parent__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method static isStrWhiteSpaceChar(I)Z
    .registers 3

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p0, v0, :cond_23

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_23

    const v0, 0xfeff

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_23

    packed-switch p0, :pswitch_data_24

    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :cond_23
    :goto_23
    :pswitch_23  #0x9, 0xa, 0xb, 0xc, 0xd
    return v1

    :pswitch_data_24
    .packed-switch 0x9
        :pswitch_23  #00000009
        :pswitch_23  #0000000a
        :pswitch_23  #0000000b
        :pswitch_23  #0000000c
        :pswitch_23  #0000000d
    .end packed-switch
.end method

.method static isSymbol(Ljava/lang/Object;)Z
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/NativeSymbol;

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_d
    instance-of p0, p0, Lorg/mozilla/javascript/SymbolKey;

    if-eqz p0, :cond_13

    :cond_11
    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method static isValidIdentifierName(Ljava/lang/String;Lorg/mozilla/javascript/Context;Z)Z
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    :cond_13
    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_15
    if-eq v3, v0, :cond_25

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-nez v4, :cond_22

    return v1

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_25
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;IZ)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method private static isVisible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getClassShutter()Lorg/mozilla/javascript/ClassShutter;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/ClassShutter;->visibleToScripts(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static jsDelegatesTo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 3

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_13

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    goto :goto_4

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->scratchScriptable:Lorg/mozilla/javascript/Scriptable;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/Context;->scratchScriptable:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public static lastUint32Result(Lorg/mozilla/javascript/Context;)J
    .registers 7

    iget-wide v0, p0, Lorg/mozilla/javascript/Context;->scratchUint32:J

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_d

    return-wide v0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static leaveDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 1

    check-cast p0, Lorg/mozilla/javascript/NativeWith;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeWith;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static leaveWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 1

    check-cast p0, Lorg/mozilla/javascript/NativeWith;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeWith;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method static makeUrlForGeneratedScript(ZLjava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x23

    if-eqz p0, :cond_1c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(eval)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(Function)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static memberRef(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;
    .registers 6

    instance-of v0, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {p0, p3, p1, p2, p4}, Lorg/mozilla/javascript/xml/XMLObject;->memberRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notXmlError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static memberRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;
    .registers 5

    instance-of v0, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {p0, p2, p1, p3}, Lorg/mozilla/javascript/xml/XMLObject;->memberRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notXmlError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->topScopeName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, v0, :cond_f

    return-object p0

    :cond_f
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->notFoundError(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_14
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->nameOrFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .registers 7

    :goto_0
    iget-boolean v0, p2, Lorg/mozilla/javascript/Context;->useDynamicScope:Z

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p2, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->checkDynamicScope(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    :cond_10
    move-object v0, p0

    :cond_11
    instance-of v1, v0, Lorg/mozilla/javascript/NativeWith;

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    instance-of v1, v1, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v1, :cond_1e

    goto :goto_31

    :cond_1e
    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_2b

    invoke-static {v0, p1, p0, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->doScriptableIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2b
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_11

    :goto_31
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-eqz p0, :cond_38

    goto :goto_0

    :cond_38
    const/4 p0, 0x0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFoundError(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    goto :goto_3f

    :goto_3e
    throw p0

    :goto_3f
    goto :goto_3e
.end method

.method private static nameOrFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    move-object v1, p1

    :goto_2
    instance-of v2, v1, Lorg/mozilla/javascript/NativeWith;

    if-eqz v2, :cond_28

    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    instance-of v2, v1, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v2, :cond_1f

    check-cast v1, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {v1, p3, v1}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1, p3, v1}, Lorg/mozilla/javascript/IdScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_65

    :cond_1b
    if-nez v0, :cond_48

    move-object v0, v1

    goto :goto_48

    :cond_1f
    invoke-static {v1, p3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_48

    goto :goto_46

    :cond_28
    instance-of v2, v1, Lorg/mozilla/javascript/NativeCall;

    if-eqz v2, :cond_3e

    invoke-interface {v1, p3, v1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_48

    if-eqz p4, :cond_3a

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    :cond_3a
    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    goto :goto_65

    :cond_3e
    invoke-static {v1, p3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_48

    :goto_46
    move-object p1, v2

    goto :goto_65

    :cond_48
    :goto_48
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    if-nez v1, :cond_75

    invoke-static {p0, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->topScopeName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p1, v1, :cond_64

    if-eqz v0, :cond_5f

    if-nez p4, :cond_5f

    invoke-virtual {v0, p3, v0}, Lorg/mozilla/javascript/IdScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_64

    :cond_5f
    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->notFoundError(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_64
    :goto_64
    move-object v1, p2

    :goto_65
    if-eqz p4, :cond_74

    instance-of p2, p1, Lorg/mozilla/javascript/Callable;

    if-eqz p2, :cond_6f

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->storeScriptable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_74

    :cond_6f
    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_74
    :goto_74
    return-object p1

    :cond_75
    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_2
.end method

.method public static nameRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;
    .registers 11

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->currentXMLLib(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object v0

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/xml/XMLLib;->nameRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    return-object p0
.end method

.method public static nameRef(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;
    .registers 5

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->currentXMLLib(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2, p3}, Lorg/mozilla/javascript/xml/XMLLib;->nameRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    return-object p0
.end method

.method public static newArrayLiteral([Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 11

    array-length v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    array-length v2, p1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    const/4 v3, 0x1

    if-le v0, v3, :cond_34

    mul-int/lit8 v3, v2, 0x2

    if-ge v3, v0, :cond_34

    if-nez v2, :cond_12

    goto :goto_2f

    :cond_12
    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_16
    if-eq v1, v0, :cond_2e

    if-eq v4, v2, :cond_25

    aget v6, p1, v4

    if-ne v6, v1, :cond_25

    sget-object v6, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    aput-object v6, v3, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_25
    aget-object v6, p0, v5

    aput-object v6, v3, v1

    add-int/lit8 v5, v5, 0x1

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2e
    move-object p0, v3

    :goto_2f
    invoke-virtual {p2, p3, p0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_34
    invoke-virtual {p2, p3, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v3, 0x0

    :goto_3a
    if-eq v1, v0, :cond_4f

    if-eq p3, v2, :cond_45

    aget v4, p1, p3

    if-ne v4, v1, :cond_45

    add-int/lit8 p3, p3, 0x1

    goto :goto_4c

    :cond_45
    aget-object v4, p0, v3

    invoke-interface {p2, v1, p2, v4}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_4f
    return-object p2
.end method

.method public static newBuiltinObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/TopLevel;->getBuiltinCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Function;

    move-result-object p2

    if-nez p3, :cond_c

    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    :cond_c
    invoke-interface {p2, p0, p1, p3}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static newCatchScope(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 16

    instance-of v0, p0, Lorg/mozilla/javascript/JavaScriptException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    move-object p1, p0

    check-cast p1, Lorg/mozilla/javascript/JavaScriptException;

    invoke-virtual {p1}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_e6

    :cond_f
    if-eqz p1, :cond_1f

    check-cast p1, Lorg/mozilla/javascript/NativeObject;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1c

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1c
    :goto_1c
    const/4 v1, 0x1

    goto/16 :goto_e6

    :cond_1f
    instance-of p1, p0, Lorg/mozilla/javascript/EcmaError;

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    move-object p1, p0

    check-cast p1, Lorg/mozilla/javascript/EcmaError;

    invoke-virtual {p1}, Lorg/mozilla/javascript/EcmaError;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/TopLevel$NativeErrors;->valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/TopLevel$NativeErrors;

    move-result-object v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/EcmaError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    :goto_33
    move-object v5, v4

    move-object v4, v0

    goto :goto_89

    :cond_36
    instance-of p1, p0, Lorg/mozilla/javascript/WrappedException;

    if-eqz p1, :cond_67

    move-object p1, p0

    check-cast p1, Lorg/mozilla/javascript/WrappedException;

    invoke-virtual {p1}, Lorg/mozilla/javascript/WrappedException;->getWrappedException()Ljava/lang/Throwable;

    move-result-object v3

    sget-object v4, Lorg/mozilla/javascript/TopLevel$NativeErrors;->JavaException:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_89

    :cond_67
    instance-of p1, p0, Lorg/mozilla/javascript/EvaluatorException;

    if-eqz p1, :cond_75

    move-object p1, p0

    check-cast p1, Lorg/mozilla/javascript/EvaluatorException;

    sget-object v3, Lorg/mozilla/javascript/TopLevel$NativeErrors;->InternalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_33

    :cond_75
    const/16 p1, 0xd

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_105

    new-instance p1, Lorg/mozilla/javascript/WrappedException;

    invoke-direct {p1, p0}, Lorg/mozilla/javascript/WrappedException;-><init>(Ljava/lang/Throwable;)V

    sget-object v3, Lorg/mozilla/javascript/TopLevel$NativeErrors;->JavaException:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_33

    :goto_89
    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_91

    const-string v6, ""

    :cond_91
    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v7

    const/4 v8, 0x2

    if-lez v7, :cond_a6

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v1

    aput-object v6, v9, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v8

    goto :goto_ac

    :cond_a6
    new-array v9, v8, [Ljava/lang/Object;

    aput-object v5, v9, v1

    aput-object v6, v9, v2

    :goto_ac
    invoke-static {p3, p4, v3, v9}, Lorg/mozilla/javascript/ScriptRuntime;->newNativeError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$NativeErrors;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    instance-of v3, v1, Lorg/mozilla/javascript/NativeError;

    if-eqz v3, :cond_ba

    move-object v3, v1

    check-cast v3, Lorg/mozilla/javascript/NativeError;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/NativeError;->setStackProvider(Lorg/mozilla/javascript/RhinoException;)V

    :cond_ba
    const/4 v3, 0x7

    if-eqz v4, :cond_d0

    invoke-static {p3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->isVisible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    invoke-virtual {p3}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v5

    invoke-virtual {v5, p3, p4, v4, v0}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "javaException"

    invoke-static {v1, v5, v4, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_d0
    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->isVisible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e3

    invoke-virtual {p3}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v4

    invoke-virtual {v4, p3, p4, p1, v0}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "rhinoException"

    invoke-static {v1, v0, p1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_e3
    move-object p1, v1

    goto/16 :goto_1c

    :goto_e6
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v0, p2, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {p3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->isVisible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ff

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x6

    const-string p4, "__exception__"

    invoke-virtual {v0, p4, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_ff
    if-eqz v1, :cond_104

    invoke-virtual {v0, p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_104
    return-object v0

    :cond_105
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    goto :goto_10b

    :goto_10a
    throw p0

    :goto_10b
    goto :goto_10a
.end method

.method static newNativeError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$NativeErrors;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/TopLevel;->getNativeErrorCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$NativeErrors;)Lorg/mozilla/javascript/Function;

    move-result-object p2

    if-nez p3, :cond_c

    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    :cond_c
    invoke-interface {p2, p0, p1, p3}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static newObject(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 5

    instance-of v0, p0, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/mozilla/javascript/Function;

    invoke-interface {p0, p1, p2, p3}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static newObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object p2

    if-nez p3, :cond_c

    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    :cond_c
    invoke-interface {p2, p0, p1, p3}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 14

    invoke-virtual {p3, p4}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-eq v3, v1, :cond_49

    aget-object v4, p0, v3

    if-nez p2, :cond_f

    const/4 v5, 0x0

    goto :goto_11

    :cond_f
    aget v5, p2, v3

    :goto_11
    aget-object v6, p1, v3

    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_3d

    if-nez v5, :cond_2d

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isSpecialProperty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-static {v0, v4, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;

    move-result-object v4

    invoke-virtual {v4, p3, p4, v6}, Lorg/mozilla/javascript/Ref;->set(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :cond_29
    invoke-interface {v0, v4, v0, v6}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_46

    :cond_2d
    move-object v7, v0

    check-cast v7, Lorg/mozilla/javascript/ScriptableObject;

    check-cast v6, Lorg/mozilla/javascript/Callable;

    const/4 v8, 0x1

    if-ne v5, v8, :cond_36

    goto :goto_37

    :cond_36
    const/4 v8, 0x0

    :goto_37
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4, v2, v6, v8}, Lorg/mozilla/javascript/ScriptableObject;->setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;Z)V

    goto :goto_46

    :cond_3d
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v4, v0, v6}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_49
    return-object v0
.end method

.method public static newSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x1

    if-ne p4, v0, :cond_13

    invoke-static {p1}, Lorg/mozilla/javascript/NativeGlobal;->isEvalFunction(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_a

    goto :goto_21

    :cond_a
    const-string p0, "msg.not.ctor"

    const-string p1, "eval"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_13
    const/4 v0, 0x2

    if-ne p4, v0, :cond_26

    invoke-static {p1}, Lorg/mozilla/javascript/NativeWith;->isWithFunction(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_21

    invoke-static {p0, p3, p2}, Lorg/mozilla/javascript/NativeWith;->newWithSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_21
    :goto_21
    invoke-static {p1, p0, p3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_26
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static notFoundError(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 2

    const-string p0, "msg.is.not.defined"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReferenceError"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 1

    invoke-static {p0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method public static notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 3

    if-nez p1, :cond_5

    const-string p1, "null"

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, v0, :cond_14

    const-string p0, "msg.function.not.found"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "msg.isnt.function"

    invoke-static {v0, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static notFunctionError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 6

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    instance-of p0, p0, Lorg/mozilla/javascript/NativeFunction;

    if-eqz p0, :cond_2f

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    const/4 v1, -0x1

    if-le p0, v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "...}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2f
    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p1, p0, :cond_3a

    const-string p0, "msg.function.not.found.in"

    invoke-static {p0, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0

    :cond_3a
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.isnt.function.in"

    invoke-static {p1, p2, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method private static notXmlError(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "msg.isnt.xml.object"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static numberToString(DI)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x2

    if-lt p2, v0, :cond_49

    const/16 v0, 0x24

    if-gt p2, v0, :cond_49

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "NaN"

    return-object p0

    :cond_10
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v0

    if-nez v2, :cond_19

    const-string p0, "Infinity"

    return-object p0

    :cond_19
    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    cmpl-double v2, p0, v0

    if-nez v2, :cond_22

    const-string p0, "-Infinity"

    return-object p0

    :cond_22
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_2b

    const-string p0, "0"

    return-object p0

    :cond_2b
    const/16 v0, 0xa

    if-eq p2, v0, :cond_34

    invoke-static {p2, p0, p1}, Lorg/mozilla/javascript/DToA;->JS_dtobasestr(ID)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->numberToString(D)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3b

    return-object p2

    :cond_3b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-static {p2, v0, v0, p0, p1}, Lorg/mozilla/javascript/DToA;->JS_dtostr(Ljava/lang/StringBuilder;IID)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_49
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.bad.radix"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method public static padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 5

    array-length v0, p0

    if-ge p1, v0, :cond_4

    return-object p0

    :cond_4
    new-array v0, p1, [Ljava/lang/Object;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    if-ge v1, p1, :cond_14

    array-length p0, p0

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-static {v0, p0, p1, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public static propIncrDecr(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .registers 5

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->propIncrDecr(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static propIncrDecr(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;
    .registers 6

    invoke-static {p2, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    if-eqz p2, :cond_20

    move-object p0, p2

    :cond_7
    invoke-interface {p0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p3, v0, :cond_14

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->doScriptableIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_7

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    invoke-interface {p2, p1, p2, p0}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object p0

    :cond_20
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    goto :goto_26

    :goto_25
    throw p0

    :goto_26
    goto :goto_25
.end method

.method public static rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .registers 2

    const-string v0, "RangeError"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static refDel(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Ref;->delete(Lorg/mozilla/javascript/Context;)Z

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static refGet(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Ref;->get(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static refIncrDecr(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .registers 4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->refIncrDecr(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static refIncrDecr(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;
    .registers 11

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Ref;->get(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_18

    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    goto :goto_22

    :cond_18
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    if-eqz v1, :cond_22

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_22
    :goto_22
    and-int/2addr p3, v2

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    if-nez p3, :cond_29

    add-double/2addr v3, v5

    goto :goto_2a

    :cond_29
    sub-double/2addr v3, v5

    :goto_2a
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/Ref;->set(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_34

    return-object v0

    :cond_34
    return-object p3
.end method

.method public static refSet(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->refSet(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static refSet(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p2, p3, p1}, Lorg/mozilla/javascript/Ref;->set(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static same(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_27

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_27
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static sameZero(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4d

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    return v1

    :cond_22
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_48

    move-object p0, p1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    sget-wide v6, Lorg/mozilla/javascript/ScriptRuntime;->negativeZero:D

    const-wide/16 v8, 0x0

    cmpl-double p0, v2, v6

    if-nez p0, :cond_3f

    cmpl-double p0, v4, v8

    if-eqz p0, :cond_47

    :cond_3f
    cmpl-double p0, v2, v8

    if-nez p0, :cond_48

    cmpl-double p0, v4, v6

    if-nez p0, :cond_48

    :cond_47
    return v1

    :cond_48
    invoke-static {v2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4d
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static searchDefaultNamespace(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    if-nez v0, :cond_8

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    const-string v1, "__default_namespace__"

    if-nez p0, :cond_1a

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, v0, :cond_23

    const/4 p0, 0x0

    return-object p0

    :cond_1a
    invoke-interface {v0, v1, v0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_24

    move-object p0, v0

    :cond_23
    return-object p0

    :cond_24
    move-object v0, p0

    goto :goto_8
.end method

.method public static setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V
    .registers 3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/TopLevel;->getBuiltinPrototype(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public static setConst(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    instance-of p2, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz p2, :cond_8

    invoke-interface {p0, p3, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_b

    :cond_8
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/ScriptableObject;->putConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_b
    return-object p1
.end method

.method public static setDefaultNamespace(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p1, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    if-nez v0, :cond_8

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :cond_8
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->currentXMLLib(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lorg/mozilla/javascript/xml/XMLLib;->toDefaultXmlNamespace(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "__default_namespace__"

    invoke-interface {v0, p1, v0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 v1, 0x6

    invoke-static {v0, p1, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_20

    :cond_1d
    invoke-interface {v0, p1, v0, p0}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_20
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method public static setEnumNumbers(Ljava/lang/Object;Z)V
    .registers 2

    check-cast p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;

    iput-boolean p1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->enumNumbers:Z

    return-void
.end method

.method public static setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;Z)V

    return-void
.end method

.method public static setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p2, :cond_d

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getGeneratorFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_14

    :cond_d
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    :goto_14
    return-void
.end method

.method public static setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    if-eqz p0, :cond_6

    invoke-static {p0, p4, p1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_30

    :cond_6
    const/16 p0, 0xb

    invoke-virtual {p2, p0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p0

    if-nez p0, :cond_16

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    :cond_16
    const-string p0, "msg.assn.create.strict"

    invoke-static {p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    :cond_1f
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    iget-boolean p3, p2, Lorg/mozilla/javascript/Context;->useDynamicScope:Z

    if-eqz p3, :cond_2d

    iget-object p2, p2, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->checkDynamicScope(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    :cond_2d
    invoke-interface {p0, p4, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_30
    return-object p1
.end method

.method public static setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 5

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 5

    invoke-static {p3, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    if-eqz p4, :cond_b

    invoke-static {p4, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->undefWriteError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static setObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 5

    instance-of v0, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v0, :cond_a

    check-cast p0, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {p0, p3, p1, p2}, Lorg/mozilla/javascript/xml/XMLObject;->put(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_27

    :cond_a
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;)V

    goto :goto_27

    :cond_16
    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object p1

    iget-object p3, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez p3, :cond_24

    iget p1, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V

    goto :goto_27

    :cond_24
    invoke-static {p0, p3, p2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_27
    return-object p2
.end method

.method public static setObjectIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 11

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setObjectIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 9

    invoke-static {p4, p0, p5}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p5

    if-eqz p5, :cond_1a

    double-to-int p0, p1

    int-to-double v0, p0

    cmpl-double v2, v0, p1

    if-nez v2, :cond_11

    invoke-static {p5, p0, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectIndex(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->undefWriteError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static setObjectIndex(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V

    return-object p2
.end method

.method public static setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 5

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 7

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_18

    invoke-virtual {p3}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p3}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xb4

    if-ge v0, v1, :cond_13

    goto :goto_18

    :cond_13
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->undefWriteError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_18
    :goto_18
    invoke-static {p3, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    if-eqz p4, :cond_23

    invoke-static {p4, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_23
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->undefWriteError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public static setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->regExpProxy:Lorg/mozilla/javascript/RegExpProxy;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_14

    instance-of p1, p0, Ljava/lang/Number;

    if-nez p1, :cond_8

    return v0

    :cond_8
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_14
    const/4 v1, 0x0

    if-eqz p0, :cond_83

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p0, v2, :cond_83

    sget-object v2, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    if-ne p0, v2, :cond_20

    goto :goto_83

    :cond_20
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_3b

    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_7a

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v4, v2, p0

    if-nez v4, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    return v0

    :cond_3b
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_50

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_50
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_5d

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_7a

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5d
    instance-of v2, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_7b

    instance-of v2, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v2, :cond_7a

    instance-of v2, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v2, :cond_7a

    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p0

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_78

    goto :goto_79

    :cond_78
    const/4 v0, 0x0

    :goto_79
    return v0

    :cond_7a
    return v1

    :cond_7b
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    if-ne p0, p1, :cond_81

    goto :goto_82

    :cond_81
    const/4 v0, 0x0

    :goto_82
    return v0

    :cond_83
    :goto_83
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v2, :cond_8b

    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    if-eq p1, v3, :cond_91

    :cond_8b
    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    if-ne p0, v3, :cond_92

    if-ne p1, v2, :cond_92

    :cond_91
    return v0

    :cond_92
    return v1
.end method

.method public static specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;
    .registers 4

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    return-object p0
.end method

.method public static specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;
    .registers 4

    invoke-static {p2, p3, p0, p1}, Lorg/mozilla/javascript/SpecialRef;->createSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/String;)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    return-object p0
.end method

.method private static storeScriptable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->scratchScriptable:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_7

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->scratchScriptable:Lorg/mozilla/javascript/Scriptable;

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static storeUint32Result(Lorg/mozilla/javascript/Context;J)V
    .registers 8

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    iput-wide p1, p0, Lorg/mozilla/javascript/Context;->scratchUint32:J

    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static strictSetName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    if-eqz p0, :cond_6

    invoke-static {p0, p4, p1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Assignment to undefined \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" in strict mode"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReferenceError"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method static stringPrefixToNumber(Ljava/lang/String;II)D
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, p1, v0, p2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->stringToNumber(Ljava/lang/String;IIIZ)D

    move-result-wide p0

    return-wide p0
.end method

.method static stringToNumber(Ljava/lang/String;III)D
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->stringToNumber(Ljava/lang/String;IIIZ)D

    move-result-wide p0

    return-wide p0
.end method

.method private static stringToNumber(Ljava/lang/String;IIIZ)D
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ge v2, v4, :cond_10

    add-int/lit8 v6, v2, 0x30

    sub-int/2addr v6, v5

    int-to-char v6, v6

    goto :goto_12

    :cond_10
    const/16 v6, 0x39

    :goto_12
    const/16 v7, 0x41

    const/16 v8, 0x61

    if-le v2, v4, :cond_21

    add-int/lit8 v9, v2, 0x61

    sub-int/2addr v9, v4

    int-to-char v9, v9

    add-int/lit8 v10, v2, 0x41

    sub-int/2addr v10, v4

    int-to-char v10, v10

    goto :goto_25

    :cond_21
    const/16 v9, 0x61

    const/16 v10, 0x41

    :goto_25
    move v13, v1

    const-wide/16 v14, 0x0

    :goto_28
    const-wide/high16 v16, 0x7ff8000000000000L  # Double.NaN

    const/16 v11, 0x30

    move/from16 v12, p2

    if-gt v13, v12, :cond_5f

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v11, v3, :cond_3b

    if-gt v3, v6, :cond_3b

    add-int/lit8 v3, v3, -0x30

    goto :goto_4a

    :cond_3b
    if-gt v8, v3, :cond_43

    if-ge v3, v9, :cond_43

    add-int/lit8 v3, v3, -0x61

    :goto_41
    add-int/2addr v3, v4

    goto :goto_4a

    :cond_43
    if-gt v7, v3, :cond_5c

    if-ge v3, v10, :cond_5c

    add-int/lit8 v3, v3, -0x41

    goto :goto_41

    :goto_4a
    int-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v7

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v14, v7

    add-int/lit8 v13, v13, 0x1

    const/16 v7, 0x41

    const/16 v8, 0x61

    goto :goto_28

    :cond_5c
    if-nez p4, :cond_5f

    return-wide v16

    :cond_5f
    if-ne v1, v13, :cond_62

    return-wide v16

    :cond_62
    const-wide v6, 0x433fffffffffffffL  # 9.007199254740991E15

    cmpl-double v3, v14, v6

    if-lez v3, :cond_10a

    if-ne v2, v4, :cond_77

    :try_start_6d
    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_75} :catch_76

    return-wide v0

    :catch_76
    return-wide v16

    :cond_77
    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq v2, v3, :cond_89

    if-eq v2, v4, :cond_89

    const/16 v6, 0x8

    if-eq v2, v6, :cond_89

    const/16 v6, 0x10

    if-eq v2, v6, :cond_89

    const/16 v6, 0x20

    if-ne v2, v6, :cond_10a

    :cond_89
    const/16 v6, 0x35

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    :goto_93
    const/4 v7, 0x3

    const-wide/high16 v19, 0x3ff0000000000000L  # 1.0

    if-ne v8, v5, :cond_d3

    if-ne v1, v13, :cond_b3

    if-eqz v9, :cond_af

    if-eq v9, v7, :cond_a5

    if-eq v9, v4, :cond_a2

    goto/16 :goto_10a

    :cond_a2
    if-eqz v10, :cond_ab

    goto :goto_a9

    :cond_a5
    and-int v0, v10, v12

    if-eqz v0, :cond_ab

    :goto_a9
    add-double v14, v14, v19

    :cond_ab
    mul-double v11, v14, v16

    goto/16 :goto_10b

    :cond_af
    const-wide/16 v11, 0x0

    goto/16 :goto_10b

    :cond_b3
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v11, v1, :cond_c2

    const/16 v11, 0x39

    if-gt v1, v11, :cond_c2

    add-int/lit8 v1, v1, -0x30

    goto :goto_cf

    :cond_c2
    const/16 v11, 0x61

    if-gt v11, v1, :cond_cd

    const/16 v11, 0x7a

    if-gt v1, v11, :cond_cd

    add-int/lit8 v1, v1, -0x57

    goto :goto_cf

    :cond_cd
    add-int/lit8 v1, v1, -0x37

    :goto_cf
    move/from16 v18, v1

    move v1, v8

    move v8, v2

    :cond_d3
    shr-int/2addr v8, v5

    and-int v11, v18, v8

    if-eqz v11, :cond_da

    const/4 v11, 0x1

    goto :goto_db

    :cond_da
    const/4 v11, 0x0

    :goto_db
    const-wide/high16 v21, 0x4000000000000000L  # 2.0

    if-eqz v9, :cond_100

    if-eq v9, v5, :cond_f3

    if-eq v9, v3, :cond_ee

    if-eq v9, v7, :cond_e8

    if-eq v9, v4, :cond_eb

    goto :goto_107

    :cond_e8
    if-eqz v11, :cond_eb

    const/4 v9, 0x4

    :cond_eb
    mul-double v16, v16, v21

    goto :goto_107

    :cond_ee
    move v10, v11

    move-wide/from16 v16, v21

    const/4 v9, 0x3

    goto :goto_107

    :cond_f3
    mul-double v14, v14, v21

    if-eqz v11, :cond_f9

    add-double v14, v14, v19

    :cond_f9
    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_107

    move v12, v11

    const/4 v9, 0x2

    goto :goto_107

    :cond_100
    if-eqz v11, :cond_107

    add-int/lit8 v6, v6, -0x1

    move-wide/from16 v14, v19

    const/4 v9, 0x1

    :cond_107
    :goto_107
    const/16 v11, 0x30

    goto :goto_93

    :cond_10a
    :goto_10a
    move-wide v11, v14

    :goto_10b
    return-wide v11
.end method

.method public static testUint32String(Ljava/lang/String;)J
    .registers 13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    if-gt v3, v0, :cond_43

    const/16 v4, 0xa

    if-gt v0, v4, :cond_43

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    const-wide/16 v5, 0x0

    if-nez v4, :cond_1c

    if-ne v0, v3, :cond_1b

    move-wide v1, v5

    :cond_1b
    return-wide v1

    :cond_1c
    if-gt v3, v4, :cond_43

    const/16 v7, 0x9

    if-gt v4, v7, :cond_43

    int-to-long v8, v4

    :goto_23
    if-eq v3, v0, :cond_3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    if-ltz v4, :cond_39

    if-le v4, v7, :cond_30

    goto :goto_39

    :cond_30
    const-wide/16 v10, 0xa

    mul-long v8, v8, v10

    int-to-long v10, v4

    add-long/2addr v8, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_39
    :goto_39
    return-wide v1

    :cond_3a
    const/16 p0, 0x20

    ushr-long v3, v8, p0

    cmp-long p0, v3, v5

    if-nez p0, :cond_43

    return-wide v8

    :cond_43
    return-wide v1
.end method

.method public static throwCustomError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v2

    aput-object v3, v4, v0

    aget p3, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, v4, v0

    invoke-virtual {p0, p1, p2, v4}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    new-instance p1, Lorg/mozilla/javascript/JavaScriptException;

    aget p2, v1, v2

    invoke-direct {p1, p0, v3, p2}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object p1
.end method

.method public static throwError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/javascript/TopLevel$Builtins;->Error:Lorg/mozilla/javascript/TopLevel$Builtins;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v2

    aput-object v3, v5, v0

    aget p2, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v5, v0

    invoke-static {p0, p1, v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->newBuiltinObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    new-instance p1, Lorg/mozilla/javascript/JavaScriptException;

    aget p2, v1, v2

    invoke-direct {p1, p0, v3, p2}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object p1
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .registers 8

    :cond_0
    :goto_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x0

    if-eqz p0, :cond_75

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v1, :cond_13

    goto :goto_75

    :cond_13
    instance-of v1, p0, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0

    :cond_22
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3a

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_39

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    if-eqz p0, :cond_39

    const/4 v0, 0x1

    :cond_39
    return v0

    :cond_3a
    instance-of v1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_71

    instance-of v1, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v1, :cond_4c

    move-object v1, p0

    check-cast v1, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ScriptableObject;->avoidObjectDetection()Z

    move-result v1

    if-eqz v1, :cond_4c

    return v0

    :cond_4c
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->isVersionECMA1()Z

    move-result v0

    if-eqz v0, :cond_57

    return v2

    :cond_57
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_0

    :cond_6a
    const-string v0, "msg.primitive.expected"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->errorWithClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_71
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    return v2

    :cond_75
    :goto_75
    return v0
.end method

.method public static toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/NativeString;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/mozilla/javascript/NativeString;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeString;->toCharSequence()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    check-cast p0, Ljava/lang/CharSequence;

    goto :goto_16

    :cond_12
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_16
    return-object p0
.end method

.method public static toInt32(D)I
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleConversion;->doubleToInt32(D)I

    move-result p0

    return p0
.end method

.method public static toInt32(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_b
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    return p0
.end method

.method public static toInt32([Ljava/lang/Object;I)I
    .registers 3

    array-length v0, p0

    if-ge p1, v0, :cond_a

    aget-object p0, p0, p1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p0

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static toInteger(D)D
    .registers 5

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    return-wide v1

    :cond_9
    cmpl-double v0, p0, v1

    if-eqz v0, :cond_21

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_21

    :cond_14
    cmpl-double v0, p0, v1

    if-lez v0, :cond_1d

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0

    :cond_1d
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    :cond_21
    :goto_21
    return-wide p0
.end method

.method public static toInteger(Ljava/lang/Object;)D
    .registers 3

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toInteger([Ljava/lang/Object;I)D
    .registers 3

    array-length v0, p0

    if-ge p1, v0, :cond_a

    aget-object p0, p0, p1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p0

    goto :goto_c

    :cond_a
    const-wide/16 p0, 0x0

    :goto_c
    return-wide p0
.end method

.method public static toIterator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/Scriptable;
    .registers 7

    const-string v0, "__iterator__"

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_31

    check-cast v0, Lorg/mozilla/javascript/Callable;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p3, :cond_1b

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1d

    :cond_1b
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1d
    aput-object p3, v1, v2

    invoke-interface {v0, p0, p1, p2, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz p1, :cond_2a

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    return-object p0

    :cond_2a
    const-string p0, "msg.iterator.primitive"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_31
    const-string p0, "msg.invalid.iterator"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toLength([Ljava/lang/Object;I)J
    .registers 5

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_d

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_d
    const-wide v0, 0x433fffffffffffffL  # 9.007199254740991E15

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static toNumber(Ljava/lang/Object;)D
    .registers 6

    :cond_0
    :goto_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    if-nez p0, :cond_10

    return-wide v0

    :cond_10
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const-wide/high16 v3, 0x7ff8000000000000L  # Double.NaN

    if-ne p0, v2, :cond_17

    return-wide v3

    :cond_17
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_22

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_22
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_2f
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_3e

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3d

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    :cond_3d
    return-wide v0

    :cond_3e
    instance-of v0, p0, Lorg/mozilla/javascript/Symbol;

    if-nez v0, :cond_64

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_60

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_0

    :cond_59
    const-string v0, "msg.primitive.expected"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->errorWithClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_60
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    return-wide v3

    :cond_64
    const-string p0, "msg.not.a.number"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    goto :goto_6c

    :goto_6b
    throw p0

    :goto_6c
    goto :goto_6b
.end method

.method public static toNumber(Ljava/lang/String;)D
    .registers 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_7
    if-ne v3, v1, :cond_c

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    move-result v5

    if-nez v5, :cond_f7

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    move-result v7

    if-eqz v7, :cond_25

    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    :cond_25
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v7

    if-eqz v7, :cond_36

    invoke-virtual {v7}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v7

    const/16 v8, 0xc8

    if-ge v7, v8, :cond_34

    goto :goto_36

    :cond_34
    const/4 v7, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v7, 0x1

    :goto_37
    const/16 v8, 0x8

    const/16 v9, 0x58

    const/16 v10, 0x10

    const/16 v11, 0x78

    const/16 v12, 0x2b

    const/16 v13, 0x30

    const/16 v14, 0x2d

    if-ne v4, v13, :cond_7f

    add-int/lit8 v15, v3, 0x2

    if-gt v15, v1, :cond_a3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v2, -0x1

    if-eq v5, v11, :cond_71

    if-ne v5, v9, :cond_57

    goto :goto_71

    :cond_57
    if-nez v7, :cond_64

    const/16 v9, 0x6f

    if-eq v5, v9, :cond_61

    const/16 v9, 0x4f

    if-ne v5, v9, :cond_64

    :cond_61
    const/16 v10, 0x8

    goto :goto_71

    :cond_64
    if-nez v7, :cond_70

    const/16 v9, 0x62

    if-eq v5, v9, :cond_6e

    const/16 v9, 0x42

    if-ne v5, v9, :cond_70

    :cond_6e
    const/4 v10, 0x2

    goto :goto_71

    :cond_70
    const/4 v10, -0x1

    :cond_71
    :goto_71
    if-eq v10, v2, :cond_a3

    if-eqz v7, :cond_7a

    invoke-static {v0, v15, v10}, Lorg/mozilla/javascript/ScriptRuntime;->stringPrefixToNumber(Ljava/lang/String;II)D

    move-result-wide v0

    return-wide v0

    :cond_7a
    invoke-static {v0, v15, v1, v10}, Lorg/mozilla/javascript/ScriptRuntime;->stringToNumber(Ljava/lang/String;III)D

    move-result-wide v0

    return-wide v0

    :cond_7f
    if-eqz v7, :cond_a3

    if-eq v4, v12, :cond_85

    if-ne v4, v14, :cond_a3

    :cond_85
    add-int/lit8 v2, v3, 0x3

    if-gt v2, v1, :cond_a3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v13, :cond_a3

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_9b

    if-ne v5, v9, :cond_a3

    :cond_9b
    invoke-static {v0, v2, v10}, Lorg/mozilla/javascript/ScriptRuntime;->stringPrefixToNumber(Ljava/lang/String;II)D

    move-result-wide v0

    if-ne v4, v14, :cond_a2

    neg-double v0, v0

    :cond_a2
    return-wide v0

    :cond_a3
    const/16 v2, 0x79

    const-wide/high16 v9, 0x7ff8000000000000L  # Double.NaN

    if-ne v6, v2, :cond_c5

    if-eq v4, v12, :cond_ad

    if-ne v4, v14, :cond_af

    :cond_ad
    add-int/lit8 v3, v3, 0x1

    :cond_af
    add-int/lit8 v2, v3, 0x7

    if-ne v2, v1, :cond_c4

    const-string v1, "Infinity"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c4

    if-ne v4, v14, :cond_c1

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    goto :goto_c3

    :cond_c1
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    :goto_c3
    return-wide v0

    :cond_c4
    return-wide v9

    :cond_c5
    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_d0
    if-ltz v1, :cond_f1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v13, v2, :cond_dc

    const/16 v3, 0x39

    if-le v2, v3, :cond_ee

    :cond_dc
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_ee

    const/16 v3, 0x65

    if-eq v2, v3, :cond_ee

    const/16 v3, 0x45

    if-eq v2, v3, :cond_ee

    if-eq v2, v12, :cond_ee

    if-ne v2, v14, :cond_ed

    goto :goto_ee

    :cond_ed
    return-wide v9

    :cond_ee
    :goto_ee
    add-int/lit8 v1, v1, -0x1

    goto :goto_d0

    :cond_f1
    :try_start_f1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_f5
    .catch Ljava/lang/NumberFormatException; {:try_start_f1 .. :try_end_f5} :catch_f6

    return-wide v0

    :catch_f6
    return-wide v9

    :cond_f7
    const/4 v2, 0x0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7
.end method

.method public static toNumber([Ljava/lang/Object;I)D
    .registers 3

    array-length v0, p0

    if-ge p1, v0, :cond_a

    aget-object p0, p0, p1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    goto :goto_c

    :cond_a
    const-wide/high16 p0, 0x7ff8000000000000L  # Double.NaN

    :goto_c
    return-wide p0
.end method

.method public static toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 5

    if-eqz p2, :cond_7b

    invoke-static {p2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance p0, Lorg/mozilla/javascript/NativeSymbol;

    check-cast p2, Lorg/mozilla/javascript/NativeSymbol;

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeSymbol;-><init>(Lorg/mozilla/javascript/NativeSymbol;)V

    sget-object p2, Lorg/mozilla/javascript/TopLevel$Builtins;->Symbol:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-object p0

    :cond_1b
    instance-of v0, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_22

    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    return-object p2

    :cond_22
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_33

    new-instance p0, Lorg/mozilla/javascript/NativeString;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeString;-><init>(Ljava/lang/CharSequence;)V

    sget-object p2, Lorg/mozilla/javascript/TopLevel$Builtins;->String:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-object p0

    :cond_33
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_48

    new-instance p0, Lorg/mozilla/javascript/NativeNumber;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/NativeNumber;-><init>(D)V

    sget-object p2, Lorg/mozilla/javascript/TopLevel$Builtins;->Number:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-object p0

    :cond_48
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5d

    new-instance p0, Lorg/mozilla/javascript/NativeBoolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeBoolean;-><init>(Z)V

    sget-object p2, Lorg/mozilla/javascript/TopLevel$Builtins;->Boolean:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-object p0

    :cond_5d
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz p1, :cond_6d

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    return-object p0

    :cond_6d
    const-string p0, "msg.invalid.type"

    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->errorWithClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_74
    const-string p0, "msg.undef.to.object"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_7b
    const-string p0, "msg.null.to.object"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    return-object p1

    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    instance-of p2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_7

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    return-object p1

    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    return-object p1

    :cond_7
    if-eqz p1, :cond_16

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p1, v0, :cond_16

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    return-object p1

    :cond_7
    if-eqz p1, :cond_12

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p1, v0, :cond_12

    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz p1, :cond_1d

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_1d

    :cond_16
    const-string p0, "msg.bad.default.value"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_1d
    :goto_1d
    return-object p0
.end method

.method public static toString(D)Ljava/lang/String;
    .registers 3

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    :cond_0
    :goto_0
    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    :cond_5
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p0, v0, :cond_5d

    sget-object v0, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    if-ne p0, v0, :cond_e

    goto :goto_5d

    :cond_e
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_15

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_15
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2f

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const/16 p0, 0xa

    invoke-static {v0, v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    instance-of v0, p0, Lorg/mozilla/javascript/Symbol;

    if-nez v0, :cond_56

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_51

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_0

    :cond_4a
    const-string v0, "msg.primitive.expected"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->errorWithClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_51
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_56
    const-string p0, "msg.not.a.string"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_5d
    :goto_5d
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public static toString([Ljava/lang/Object;I)Ljava/lang/String;
    .registers 3

    array-length v0, p0

    if-ge p1, v0, :cond_a

    aget-object p0, p0, p1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_a
    const-string/jumbo p0, "undefined"

    :goto_d
    return-object p0
.end method

.method static toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;
    .registers 7

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_21

    move-object p0, p1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-int p0, v0

    int-to-double v2, p0

    cmpl-double v4, v2, v0

    if-nez v4, :cond_17

    new-instance p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    invoke-direct {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;-><init>(I)V

    return-object p1

    :cond_17
    new-instance p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_21
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_28

    check-cast p1, Ljava/lang/String;

    goto :goto_2c

    :cond_28
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2c
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->indexFromString(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_3d

    new-instance p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    long-to-int p1, v0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;-><init>(I)V

    return-object p0

    :cond_3d
    new-instance p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static toUint16(Ljava/lang/Object;)C
    .registers 3

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/v8dtoa/DoubleConversion;->doubleToInt32(D)I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public static toUint32(D)J
    .registers 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleConversion;->doubleToInt32(D)I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static toUint32(Ljava/lang/Object;)J
    .registers 3

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v0

    return-wide v0
.end method

.method private static topScopeName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->useDynamicScope:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->checkDynamicScope(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    :cond_a
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .registers 2

    const-string v0, "TypeError"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .registers 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static typeError3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static typeErrorThrower()Lorg/mozilla/javascript/BaseFunction;
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorThrower(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/BaseFunction;

    move-result-object v0

    return-object v0
.end method

.method public static typeErrorThrower(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/BaseFunction;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->typeErrorThrower:Lorg/mozilla/javascript/BaseFunction;

    if-nez v0, :cond_13

    new-instance v0, Lorg/mozilla/javascript/ScriptRuntime$1;

    invoke-direct {v0}, Lorg/mozilla/javascript/ScriptRuntime$1;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->preventExtensions()V

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->typeErrorThrower:Lorg/mozilla/javascript/BaseFunction;

    :cond_13
    iget-object p0, p0, Lorg/mozilla/javascript/Context;->typeErrorThrower:Lorg/mozilla/javascript/BaseFunction;

    return-object p0
.end method

.method public static typeof(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    const-string v0, "object"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v1, :cond_d

    const-string/jumbo p0, "undefined"

    return-object p0

    :cond_d
    instance-of v1, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v1, :cond_18

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTypeOf()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    instance-of v1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_23

    instance-of p0, p0, Lorg/mozilla/javascript/Callable;

    if-eqz p0, :cond_22

    const-string v0, "function"

    :cond_22
    return-object v0

    :cond_23
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2b

    const-string/jumbo p0, "string"

    return-object p0

    :cond_2b
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_32

    const-string p0, "number"

    return-object p0

    :cond_32
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_39

    const-string p0, "boolean"

    return-object p0

    :cond_39
    const-string v0, "msg.invalid.type"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->errorWithClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static typeofName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_e

    const-string/jumbo p0, "undefined"

    return-object p0

    :cond_e
    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static undefCallError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 3

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg.undef.method.call"

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method private static undefDeleteError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 3

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg.undef.prop.delete"

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 3

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg.undef.prop.read"

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static undefWriteError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 4

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "msg.undef.prop.write"

    invoke-static {v0, p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method static uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    if-nez p2, :cond_5

    const-string p0, "null"

    return-object p0

    :cond_5
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p2, v0, :cond_d

    const-string/jumbo p0, "undefined"

    return-object p0

    :cond_d
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_34

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_53

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p2, p0, v0

    if-nez p2, :cond_4e

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    div-double/2addr v2, p0

    cmpg-double p2, v2, v0

    if-gez p2, :cond_4e

    const-string p0, "-0"

    return-object p0

    :cond_4e
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_53
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5c

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5c
    instance-of v0, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_86

    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    const-string/jumbo v1, "toSource"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/mozilla/javascript/Function;

    if-eqz v2, :cond_81

    check-cast v1, Lorg/mozilla/javascript/Function;

    sget-object p2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v1, p0, p1, v0, p2}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_81
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_86
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updateDotQuery(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lorg/mozilla/javascript/NativeWith;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/NativeWith;->updateDotQuery(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static warnAboutNonJSObject(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "params.omit.non.js.object.warning"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.non.js.object.warning"

    invoke-static {v1, p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public static wrapBoolean(Z)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static wrapException(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;
    .registers 14

    instance-of v0, p0, Lorg/mozilla/javascript/EcmaError;

    const-string v1, "JavaException"

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    check-cast p0, Lorg/mozilla/javascript/EcmaError;

    invoke-virtual {p0}, Lorg/mozilla/javascript/EcmaError;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/EcmaError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_11
    move-object v3, v1

    move-object v1, v2

    goto :goto_66

    :cond_14
    instance-of v0, p0, Lorg/mozilla/javascript/WrappedException;

    if-eqz v0, :cond_43

    check-cast p0, Lorg/mozilla/javascript/WrappedException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/WrappedException;->getWrappedException()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v10

    goto :goto_66

    :cond_43
    instance-of v0, p0, Lorg/mozilla/javascript/EvaluatorException;

    if-eqz v0, :cond_50

    check-cast p0, Lorg/mozilla/javascript/EvaluatorException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternalError"

    goto :goto_11

    :cond_50
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_c8

    new-instance v0, Lorg/mozilla/javascript/WrappedException;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/WrappedException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v3, v1

    move-object v1, v2

    move-object v10, v0

    move-object v0, p0

    move-object p0, v10

    :goto_66
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6e

    const-string v4, ""

    :cond_6e
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-lez v5, :cond_85

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v7

    aput-object v4, v9, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v8

    goto :goto_8b

    :cond_85
    new-array v9, v8, [Ljava/lang/Object;

    aput-object v0, v9, v7

    aput-object v4, v9, v6

    :goto_8b
    invoke-virtual {p2, p1, v3, v9}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v4, "name"

    invoke-static {v0, v4, v3}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v3, v0, Lorg/mozilla/javascript/NativeError;

    if-eqz v3, :cond_9e

    move-object v3, v0

    check-cast v3, Lorg/mozilla/javascript/NativeError;

    invoke-virtual {v3, p0}, Lorg/mozilla/javascript/NativeError;->setStackProvider(Lorg/mozilla/javascript/RhinoException;)V

    :cond_9e
    const/4 v3, 0x7

    if-eqz v1, :cond_b4

    invoke-static {p2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->isVisible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v4

    invoke-virtual {v4, p2, p1, v1, v2}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "javaException"

    invoke-static {v0, v4, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_b4
    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->isVisible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v1

    invoke-virtual {v1, p2, p1, p0, v2}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "rhinoException"

    invoke-static {v0, p1, p0, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_c7
    return-object v0

    :cond_c8
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    goto :goto_ce

    :goto_cd
    throw p0

    :goto_ce
    goto :goto_cd
.end method

.method public static wrapInt(I)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static wrapNumber(D)Ljava/lang/Number;
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getRegExpProxy()Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/mozilla/javascript/RegExpProxy;->wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method
