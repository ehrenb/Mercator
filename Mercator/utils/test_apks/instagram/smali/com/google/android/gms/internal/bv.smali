.class public Lcom/google/android/gms/internal/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/bt;

.field private final b:Lcom/google/android/gms/internal/fn;

.field private final c:Lcom/google/android/gms/internal/ei;

.field private final d:Lcom/google/android/gms/internal/ei;

.field private final e:Lcom/google/android/gms/internal/ei;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/internal/fn;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/bv$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bv$1;-><init>(Lcom/google/android/gms/internal/bv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->c:Lcom/google/android/gms/internal/ei;

    new-instance v0, Lcom/google/android/gms/internal/bv$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bv$2;-><init>(Lcom/google/android/gms/internal/bv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->d:Lcom/google/android/gms/internal/ei;

    new-instance v0, Lcom/google/android/gms/internal/bv$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bv$3;-><init>(Lcom/google/android/gms/internal/bv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->e:Lcom/google/android/gms/internal/ei;

    iput-object p1, p0, Lcom/google/android/gms/internal/bv;->a:Lcom/google/android/gms/internal/bt;

    iput-object p2, p0, Lcom/google/android/gms/internal/bv;->b:Lcom/google/android/gms/internal/fn;

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->b:Lcom/google/android/gms/internal/fn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bv;->a(Lcom/google/android/gms/internal/fn;)V

    const-string v1, "Custom JS tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->a:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bt;->r()Lcom/google/android/gms/internal/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/br;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/internal/bt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->a:Lcom/google/android/gms/internal/bt;

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/android/gms/internal/fn;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->c:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->d:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->e:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->b:Lcom/google/android/gms/internal/fn;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->a:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/bt;->b(Lcom/google/android/gms/internal/bx;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->b:Lcom/google/android/gms/internal/fn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bv;->b(Lcom/google/android/gms/internal/fn;)V

    return-void
.end method

.method b(Lcom/google/android/gms/internal/fn;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->e:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->d:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->c:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    return-void
.end method
