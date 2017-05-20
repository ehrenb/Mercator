.class Lb/a/a/g$g;
.super Lb/a/a/g;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1, p2, p3, p4}, Lb/a/a/g;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    .line 164
    return-void
.end method


# virtual methods
.method public a(Lb/a/a/l;Ljava/util/Set;)V
    .locals 2
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
    .line 168
    invoke-virtual {p1}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/g$g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/q;

    invoke-virtual {p0, p1, p2, v0}, Lb/a/a/g$g;->a(Lb/a/a/l;Ljava/util/Set;Lb/a/a/q;)V

    .line 169
    return-void
.end method

.method public a(Lb/a/a/l;)Z
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lb/a/a/g$g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 174
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
