.class public final Lio/realm/e;
.super Lio/realm/a;
.source "DynamicRealm.java"


# direct methods
.method private constructor <init>(Lio/realm/x;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lio/realm/a;-><init>(Lio/realm/x;)V

    .line 51
    return-void
.end method

.method public static b(Lio/realm/x;)Lio/realm/e;
    .locals 2

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    const-class v0, Lio/realm/e;

    invoke-static {p0, v0}, Lio/realm/v;->a(Lio/realm/x;Ljava/lang/Class;)Lio/realm/a;

    move-result-object v0

    check-cast v0, Lio/realm/e;

    return-object v0
.end method

.method static c(Lio/realm/x;)Lio/realm/e;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lio/realm/e;

    invoke-direct {v0, p0}, Lio/realm/e;-><init>(Lio/realm/x;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/realm/af;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/af",
            "<",
            "Lio/realm/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lio/realm/e;->f()V

    .line 112
    iget-object v0, p0, Lio/realm/e;->e:Lio/realm/internal/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/internal/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class does not exist in the Realm and cannot be queried: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    invoke-static {p0, p1}, Lio/realm/af;->a(Lio/realm/e;Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lio/realm/a;->a(Z)V

    return-void
.end method

.method public bridge synthetic a()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lio/realm/a;->a()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lio/realm/e;->f()V

    .line 147
    iget-object v0, p0, Lio/realm/e;->f:Lio/realm/ah;

    invoke-virtual {v0, p1}, Lio/realm/ah;->e(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->c()V

    .line 148
    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lio/realm/a;->c()V

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lio/realm/a;->close()V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lio/realm/a;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lio/realm/a;->e()V

    return-void
.end method

.method public bridge synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lio/realm/x;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lio/realm/a;->i()Lio/realm/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()J
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lio/realm/a;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic l()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lio/realm/a;->l()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic m()Lio/realm/ah;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lio/realm/a;->m()Lio/realm/ah;

    move-result-object v0

    return-object v0
.end method
