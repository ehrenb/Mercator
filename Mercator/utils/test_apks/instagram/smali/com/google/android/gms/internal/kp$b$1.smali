.class Lcom/google/android/gms/internal/kp$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/lh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/kp$b;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/kp$a;Lcom/google/android/gms/internal/lh$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/lh$b;

.field final synthetic b:Lcom/google/android/gms/internal/kp$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lh$b;Lcom/google/android/gms/internal/kp$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kp$b$1;->a:Lcom/google/android/gms/internal/lh$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/kp$b$1;->b:Lcom/google/android/gms/internal/kp$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/zzr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kp$b$1;->a:Lcom/google/android/gms/internal/lh$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/kp$b$1;->b:Lcom/google/android/gms/internal/kp$a;

    invoke-interface {v1}, Lcom/google/android/gms/internal/kp$a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/lh$b;->a(Ljava/lang/Object;)V

    return-void
.end method
