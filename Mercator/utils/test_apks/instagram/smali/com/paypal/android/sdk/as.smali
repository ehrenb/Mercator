.class public Lcom/paypal/android/sdk/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/bz;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/paypal/android/sdk/a;

.field private final c:Lcom/paypal/android/sdk/ar;

.field private final d:Lcom/paypal/android/sdk/aw;

.field private final e:Lcom/paypal/android/sdk/at;

.field private f:Lcom/paypal/android/sdk/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/as;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/as;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/a;Lcom/paypal/android/sdk/ar;Lcom/paypal/android/sdk/ab;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/as;->b:Lcom/paypal/android/sdk/a;

    iput-object p2, p0, Lcom/paypal/android/sdk/as;->c:Lcom/paypal/android/sdk/ar;

    new-instance v0, Lcom/paypal/android/sdk/aw;

    invoke-direct {v0}, Lcom/paypal/android/sdk/aw;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/as;->d:Lcom/paypal/android/sdk/aw;

    new-instance v0, Lcom/paypal/android/sdk/at;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/at;-><init>(Lcom/paypal/android/sdk/as;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/as;->e:Lcom/paypal/android/sdk/at;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/by;)V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->d:Lcom/paypal/android/sdk/aw;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/paypal/android/sdk/aw;->a(Lcom/paypal/android/sdk/by;J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/bw;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mEnvironment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->c:Lcom/paypal/android/sdk/ar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEnvironment.getEndpoints():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->c:Lcom/paypal/android/sdk/ar;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ar;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->c:Lcom/paypal/android/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->c:Lcom/paypal/android/sdk/ar;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ar;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->c:Lcom/paypal/android/sdk/ar;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ar;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/paypal/android/sdk/bw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returning:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->f:Lcom/paypal/android/sdk/bu;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bu;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/ay;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->d:Lcom/paypal/android/sdk/aw;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/aw;->a(Lcom/paypal/android/sdk/ay;)V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/bu;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->f:Lcom/paypal/android/sdk/bu;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/paypal/android/sdk/as;->f:Lcom/paypal/android/sdk/bu;

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/by;)V
    .locals 2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/by;->l()V

    invoke-static {}, Lcom/paypal/android/sdk/u;->a()Lcom/paypal/android/sdk/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/u;->f()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/by;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->e:Lcom/paypal/android/sdk/at;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/at;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->d:Lcom/paypal/android/sdk/aw;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aw;->a()V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/by;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->f:Lcom/paypal/android/sdk/bu;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/bu;->a(Lcom/paypal/android/sdk/by;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->c:Lcom/paypal/android/sdk/ar;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ar;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/paypal/android/sdk/a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->b:Lcom/paypal/android/sdk/a;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->c:Lcom/paypal/android/sdk/ar;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ar;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
