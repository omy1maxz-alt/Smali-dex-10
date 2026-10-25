.class Landroidx/core/content/IntentCompat$Api33Impl;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getParcelableArrayExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getParcelableArrayListExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getSerializableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method
