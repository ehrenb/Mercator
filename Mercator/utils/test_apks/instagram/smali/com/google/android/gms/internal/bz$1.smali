.class Lcom/google/android/gms/internal/bz$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bz;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/google/android/gms/internal/bz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bz;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bz$1;->c:Lcom/google/android/gms/internal/bz;

    iput-object p2, p0, Lcom/google/android/gms/internal/bz$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/bz$1;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bz$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bz$1;->b:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
