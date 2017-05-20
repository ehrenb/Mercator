.class public Lcom/google/android/gms/internal/bw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/bt;

.field private b:Lcom/google/android/gms/internal/fm$c;

.field private c:Z

.field private final d:Lcom/google/android/gms/internal/ei;

.field private final e:Lcom/google/android/gms/internal/ei;

.field private final f:Lcom/google/android/gms/internal/ei;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/internal/fm;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/bw$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bw$5;-><init>(Lcom/google/android/gms/internal/bw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->d:Lcom/google/android/gms/internal/ei;

    new-instance v0, Lcom/google/android/gms/internal/bw$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bw$6;-><init>(Lcom/google/android/gms/internal/bw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->e:Lcom/google/android/gms/internal/ei;

    new-instance v0, Lcom/google/android/gms/internal/bw$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bw$7;-><init>(Lcom/google/android/gms/internal/bw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->f:Lcom/google/android/gms/internal/ei;

    iput-object p1, p0, Lcom/google/android/gms/internal/bw;->a:Lcom/google/android/gms/internal/bt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/fm;->a()Lcom/google/android/gms/internal/fm$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->b:Lcom/google/android/gms/internal/fm$c;

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->b:Lcom/google/android/gms/internal/fm$c;

    new-instance v1, Lcom/google/android/gms/internal/bw$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bw$1;-><init>(Lcom/google/android/gms/internal/bw;)V

    new-instance v2, Lcom/google/android/gms/internal/bw$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/bw$2;-><init>(Lcom/google/android/gms/internal/bw;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fm$c;->a(Lcom/google/android/gms/internal/ld$c;Lcom/google/android/gms/internal/ld$a;)V

    const-string v1, "Core JS tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->a:Lcom/google/android/gms/internal/bt;

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

.method static synthetic a(Lcom/google/android/gms/internal/bw;)Lcom/google/android/gms/internal/bt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->a:Lcom/google/android/gms/internal/bt;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/bw;->c:Z

    return p1
.end method


# virtual methods
.method a(Lcom/google/android/gms/internal/fn;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->d:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->e:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->f:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->b:Lcom/google/android/gms/internal/fm$c;

    new-instance v1, Lcom/google/android/gms/internal/bw$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/bw$3;-><init>(Lcom/google/android/gms/internal/bw;Lorg/json/JSONObject;)V

    new-instance v2, Lcom/google/android/gms/internal/ld$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ld$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fm$c;->a(Lcom/google/android/gms/internal/ld$c;Lcom/google/android/gms/internal/ld$a;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bw;->c:Z

    return v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->b:Lcom/google/android/gms/internal/fm$c;

    new-instance v1, Lcom/google/android/gms/internal/bw$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bw$4;-><init>(Lcom/google/android/gms/internal/bw;)V

    new-instance v2, Lcom/google/android/gms/internal/ld$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ld$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fm$c;->a(Lcom/google/android/gms/internal/ld$c;Lcom/google/android/gms/internal/ld$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->b:Lcom/google/android/gms/internal/fm$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fm$c;->l_()V

    return-void
.end method

.method b(Lcom/google/android/gms/internal/fn;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->f:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->e:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->d:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    return-void
.end method
