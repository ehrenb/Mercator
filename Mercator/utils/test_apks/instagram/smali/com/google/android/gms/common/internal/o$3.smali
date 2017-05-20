.class final Lcom/google/android/gms/common/internal/o$3;
.super Lcom/google/android/gms/common/internal/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/o;->a(Lcom/google/android/gms/internal/nu;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/android/gms/internal/nu;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/internal/nu;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/o$3;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/o$3;->b:Lcom/google/android/gms/internal/nu;

    iput p3, p0, Lcom/google/android/gms/common/internal/o$3;->c:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/o$3;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/o$3;->b:Lcom/google/android/gms/internal/nu;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/o$3;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/o$3;->c:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/nu;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
