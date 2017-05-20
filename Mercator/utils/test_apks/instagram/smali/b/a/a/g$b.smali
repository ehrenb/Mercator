.class Lb/a/a/g$b;
.super Lb/a/a/g;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lb/a/a/g;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lb/a/a/l;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/l;",
            "Ljava/util/Set",
            "<",
            "Lb/a/a/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/g$b;->e()Lb/a/a/a/e;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xe10

    invoke-virtual {v0, v1, v2, v3}, Lb/a/a/k;->a(Lb/a/a/a/e;ZI)Lb/a/a/h$a;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public a(Lb/a/a/l;)Z
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lb/a/a/g$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
