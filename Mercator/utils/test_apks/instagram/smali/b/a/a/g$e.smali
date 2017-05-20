.class Lb/a/a/g$e;
.super Lb/a/a/g;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lb/a/a/g;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    .line 90
    return-void
.end method


# virtual methods
.method public a(Lb/a/a/l;Ljava/util/Set;)V
    .locals 7
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
    const/16 v4, 0xe10

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p1}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/d;

    .line 96
    check-cast v0, Lb/a/a/q;

    invoke-virtual {p0, p1, p2, v0}, Lb/a/a/g$e;->a(Lb/a/a/l;Ljava/util/Set;Lb/a/a/q;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lb/a/a/g$e;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p1}, Lb/a/a/l;->I()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lb/a/a/l;->I()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lb/a/a/l$c;

    .line 101
    new-instance v0, Lb/a/a/h$e;

    const-string v1, "_services._dns-sd._udp.local."

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {v5}, Lb/a/a/l$c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$e;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {p0}, Lb/a/a/g$e;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    invoke-virtual {p0}, Lb/a/a/g$e;->h()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lb/a/d$a;->d:Lb/a/d$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 106
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {p0}, Lb/a/a/g$e;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    sget-object v1, Lb/a/a/a/e;->b:Lb/a/a/a/e;

    invoke-virtual {v0, v1, v3, v4}, Lb/a/a/k;->b(Lb/a/a/a/e;ZI)Lb/a/a/h$e;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_2
    invoke-virtual {p0}, Lb/a/a/g$e;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    sget-object v1, Lb/a/a/a/e;->C:Lb/a/a/a/e;

    invoke-virtual {v0, v1, v3, v4}, Lb/a/a/k;->b(Lb/a/a/a/e;ZI)Lb/a/a/h$e;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_3
    :goto_3
    return-void

    .line 107
    :cond_4
    const-string v1, ""

    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {p0}, Lb/a/a/g$e;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3
.end method
