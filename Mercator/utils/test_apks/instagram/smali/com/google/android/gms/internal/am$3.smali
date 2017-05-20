.class Lcom/google/android/gms/internal/am$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/am;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/am;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/am;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/am$3;->a:Lcom/google/android/gms/internal/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/am$3;->a:Lcom/google/android/gms/internal/am;

    iget-object v0, v0, Lcom/google/android/gms/internal/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/cw;->a(Landroid/content/Context;)V

    return-void
.end method
