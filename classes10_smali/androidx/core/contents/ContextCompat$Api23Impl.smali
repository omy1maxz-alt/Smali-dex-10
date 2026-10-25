.class Landroidx/core/contents/ContextCompat$Api23Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# direct methods
.method static getColor(Landroid/content/Context;I)I
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method static getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getSystemServiceName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
