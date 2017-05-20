.class Lcom/a/a/a/z;
.super Ljava/lang/Object;
.source "SessionMetadataCollector.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/fabric/sdk/android/services/b/o;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/b/o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/a/a/a/z;->a:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/a/a/a/z;->b:Lio/fabric/sdk/android/services/b/o;

    .line 25
    iput-object p3, p0, Lcom/a/a/a/z;->c:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/a/a/a/z;->d:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/a/x;
    .locals 13

    .prologue
    .line 34
    iget-object v0, p0, Lcom/a/a/a/z;->b:Lio/fabric/sdk/android/services/b/o;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/o;->i()Ljava/util/Map;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/a/a/a/z;->b:Lio/fabric/sdk/android/services/b/o;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/b/o;->c()Ljava/lang/String;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/a/a/a/z;->b:Lio/fabric/sdk/android/services/b/o;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/b/o;->b()Ljava/lang/String;

    move-result-object v3

    .line 38
    sget-object v2, Lio/fabric/sdk/android/services/b/o$a;->d:Lio/fabric/sdk/android/services/b/o$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 40
    sget-object v2, Lio/fabric/sdk/android/services/b/o$a;->g:Lio/fabric/sdk/android/services/b/o$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 42
    iget-object v2, p0, Lcom/a/a/a/z;->b:Lio/fabric/sdk/android/services/b/o;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/b/o;->l()Ljava/lang/Boolean;

    move-result-object v6

    .line 43
    sget-object v2, Lio/fabric/sdk/android/services/b/o$a;->c:Lio/fabric/sdk/android/services/b/o$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/a/a/a/z;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 46
    iget-object v0, p0, Lcom/a/a/a/z;->b:Lio/fabric/sdk/android/services/b/o;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/o;->d()Ljava/lang/String;

    move-result-object v9

    .line 47
    iget-object v0, p0, Lcom/a/a/a/z;->b:Lio/fabric/sdk/android/services/b/o;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/o;->g()Ljava/lang/String;

    move-result-object v10

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    new-instance v0, Lcom/a/a/a/x;

    iget-object v11, p0, Lcom/a/a/a/z;->c:Ljava/lang/String;

    iget-object v12, p0, Lcom/a/a/a/z;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, Lcom/a/a/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
