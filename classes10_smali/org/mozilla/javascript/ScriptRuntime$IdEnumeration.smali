.class Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;
.super Ljava/lang/Object;
.source "ScriptRuntime.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field currentId:Ljava/lang/Object;

.field enumNumbers:Z

.field enumType:I

.field ids:[Ljava/lang/Object;

.field index:I

.field iterator:Lorg/mozilla/javascript/Scriptable;

.field obj:Lorg/mozilla/javascript/Scriptable;

.field used:Lorg/mozilla/javascript/ObjToIntMap;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mozilla/javascript/ScriptRuntime$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;-><init>()V

    return-void
.end method
