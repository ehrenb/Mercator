.class public Leu/chainfire/libsuperuser/b;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/libsuperuser/b$c;,
        Leu/chainfire/libsuperuser/b$a;,
        Leu/chainfire/libsuperuser/b$b;,
        Leu/chainfire/libsuperuser/b$d;,
        Leu/chainfire/libsuperuser/b$e;,
        Leu/chainfire/libsuperuser/b$f;
    }
.end annotation


# static fields
.field protected static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "echo -BOC-"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    sput-object v0, Leu/chainfire/libsuperuser/b;->a:[Ljava/lang/String;

    return-void
.end method

.method protected static a(Ljava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    if-nez p0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v2

    .line 223
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    const-string v5, "uid="

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    if-eqz p1, :cond_2

    const-string v1, "uid=0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 227
    :cond_3
    const-string v5, "-BOC-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    :goto_2
    move v1, v0

    .line 233
    goto :goto_1

    :cond_4
    move v2, v1

    .line 235
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method
