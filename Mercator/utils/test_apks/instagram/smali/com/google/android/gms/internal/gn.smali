.class public Lcom/google/android/gms/internal/gn;
.super Lcom/google/android/gms/internal/gi$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/mediation/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gi$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/mediation/j;->c(Landroid/view/View;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/b/a$a;

    new-instance v3, Lcom/google/android/gms/ads/internal/formats/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/a$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/a$a;->b()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/a$a;->c()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/ads/internal/formats/c;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/mediation/j;->a(Landroid/view/View;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/mediation/j;->b(Landroid/view/View;)V

    return-void
.end method

.method public d()Lcom/google/android/gms/internal/dm;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->h()Lcom/google/android/gms/ads/b/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/c;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/b/a$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/b/a$a;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/ads/b/a$a;->c()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/ads/internal/formats/c;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()D
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->j()D

    move-result-wide v0

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->d()V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->a()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->b()Z

    move-result v0

    return v0
.end method

.method public l()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->c()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/google/android/gms/ads/internal/client/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->m()Lcom/google/android/gms/ads/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/ads/mediation/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/j;->m()Lcom/google/android/gms/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->a()Lcom/google/android/gms/ads/internal/client/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
