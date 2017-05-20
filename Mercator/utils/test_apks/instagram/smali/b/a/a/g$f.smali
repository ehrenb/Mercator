.class Lb/a/a/g$f;
.super Lb/a/a/g;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lb/a/a/g;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    .line 130
    return-void
.end method


# virtual methods
.method public a(Lb/a/a/l;Ljava/util/Set;)V
    .locals 5
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
    .line 134
    invoke-virtual {p0}, Lb/a/a/g$f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/g$f;->f()Lb/a/a/a/d;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/g$f;->g()Z

    move-result v2

    const/16 v3, 0xe10

    invoke-virtual {v0, v1, v2, v3}, Lb/a/a/k;->a(Lb/a/a/a/d;ZI)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p1}, Lb/a/a/l;->I()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    new-instance v0, Lb/a/a/g$e;

    invoke-virtual {p0}, Lb/a/a/g$f;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/e;->m:Lb/a/a/a/e;

    invoke-virtual {p0}, Lb/a/a/g$f;->f()Lb/a/a/a/d;

    move-result-object v3

    invoke-virtual {p0}, Lb/a/a/g$f;->g()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/a/g$e;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    .line 143
    invoke-virtual {v0, p1, p2}, Lb/a/a/g;->a(Lb/a/a/l;Ljava/util/Set;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p1}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/q;

    invoke-virtual {p0, p1, p2, v0}, Lb/a/a/g$f;->a(Lb/a/a/l;Ljava/util/Set;Lb/a/a/q;)V

    goto :goto_0
.end method

.method public a(Lb/a/a/l;)Z
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lb/a/a/g$f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 153
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
