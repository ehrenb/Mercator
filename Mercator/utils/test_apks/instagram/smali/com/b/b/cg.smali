.class public abstract Lcom/b/b/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/b/cg$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/b/b/ci;

.field public d:Ljava/lang/String;

.field private e:Lcom/b/b/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bp",
            "<",
            "Lcom/b/b/ay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/b/b/cg;->b:Ljava/util/Set;

    .line 33
    const-string v0, "defaultDataKey_"

    iput-object v0, p0, Lcom/b/b/cg;->d:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/b/b/cg$1;

    invoke-direct {v0, p0}, Lcom/b/b/cg$1;-><init>(Lcom/b/b/cg;)V

    iput-object v0, p0, Lcom/b/b/cg;->e:Lcom/b/b/bp;

    .line 51
    iput-object p2, p0, Lcom/b/b/cg;->a:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/b/b/cg;->e:Lcom/b/b/bp;

    invoke-virtual {v0, v1, v2}, Lcom/b/b/bq;->a(Ljava/lang/String;Lcom/b/b/bp;)V

    .line 1062
    new-instance v0, Lcom/b/b/cg$2;

    invoke-direct {v0, p0, p1}, Lcom/b/b/cg$2;-><init>(Lcom/b/b/cg;Ljava/lang/String;)V

    .line 2058
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lcom/b/b/cg$8;

    invoke-direct {v0, p0, p1}, Lcom/b/b/cg$8;-><init>(Lcom/b/b/cg;Ljava/lang/String;)V

    .line 6058
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Lcom/b/b/cg$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/b/cg$7;-><init>(Lcom/b/b/cg;Ljava/lang/String;Ljava/lang/String;)V

    .line 5058
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/b/b/cg$4;

    invoke-direct {v0, p0}, Lcom/b/b/cg$4;-><init>(Lcom/b/b/cg;)V

    .line 4058
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public final b([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    .line 2092
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 2094
    :cond_0
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/b/b/cg;->a:Ljava/lang/String;

    const-string v2, "Report that has to be sent is EMPTY or NULL"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2095
    :goto_0
    return-void

    .line 2111
    :cond_1
    new-instance v0, Lcom/b/b/cg$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/b/b/cg$3;-><init>(Lcom/b/b/cg;[BLjava/lang/String;Ljava/lang/String;)V

    .line 3058
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 2099
    invoke-virtual {p0}, Lcom/b/b/cg;->b()V

    goto :goto_0
.end method

.method final c()Z
    .locals 2

    .prologue
    .line 139
    .line 4106
    iget-object v0, p0, Lcom/b/b/cg;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 139
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 140
    goto :goto_0
.end method
