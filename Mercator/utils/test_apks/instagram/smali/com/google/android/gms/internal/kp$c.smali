.class Lcom/google/android/gms/internal/kp$c;
.super Lcom/google/android/gms/internal/kx;

# interfaces
.implements Lcom/google/android/gms/internal/lh$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/kx",
        "<TT;>;",
        "Lcom/google/android/gms/internal/lh$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/kp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/kp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kp$c;->a:Lcom/google/android/gms/internal/kp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/kx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/kp;Lcom/google/android/gms/internal/kp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/kp$c;-><init>(Lcom/google/android/gms/internal/kp;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/kx;->b(Ljava/lang/Object;)V

    return-void
.end method
