.class public final Lcom/google/android/gms/internal/is;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/fm$c;

.field public final b:Lcom/google/android/gms/internal/ei;

.field public final c:Lcom/google/android/gms/internal/ei;

.field public final d:Lcom/google/android/gms/internal/ei;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/internal/kx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kx",
            "<",
            "Lcom/google/android/gms/internal/iv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/is;->e:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/kx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/is;->h:Lcom/google/android/gms/internal/kx;

    new-instance v0, Lcom/google/android/gms/internal/is$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/is$1;-><init>(Lcom/google/android/gms/internal/is;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/is;->b:Lcom/google/android/gms/internal/ei;

    new-instance v0, Lcom/google/android/gms/internal/is$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/is$2;-><init>(Lcom/google/android/gms/internal/is;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/is;->c:Lcom/google/android/gms/internal/ei;

    new-instance v0, Lcom/google/android/gms/internal/is$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/is$3;-><init>(Lcom/google/android/gms/internal/is;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/is;->d:Lcom/google/android/gms/internal/ei;

    iput-object p2, p0, Lcom/google/android/gms/internal/is;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/is;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/is;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/is;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/is;)Lcom/google/android/gms/internal/kx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/is;->h:Lcom/google/android/gms/internal/kx;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/is;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/is;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/is;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/is;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/fm$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/is;->a:Lcom/google/android/gms/internal/fm$c;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/fm$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/is;->a:Lcom/google/android/gms/internal/fm$c;

    return-void
.end method

.method public b()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/iv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/is;->h:Lcom/google/android/gms/internal/kx;

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
